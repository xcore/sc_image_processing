// Pixel Doubling Interpolation of The Bayer Pattern
// Requirements: height and width of the image should be even

#include <print.h>  //TODO: remove
#include <stdio.h>

#include "pipeline_interface.h"
#include "mt9v034.h"

inline unsigned short rgb888_to_rgb565(char r, char g, char b) {
  return (unsigned short)((b >> 3) & 0x1F) | ((unsigned short)((g >> 2) & 0x3F) << 5) | ((unsigned short)((r >> 3) & 0x1F) << 11);
}

void bayer_interpolation(interface mgmt_interface server bayer_if, interface pipeline_interface client apm_ds, interface pipeline_interface server apm_us){
    unsigned rgb565buf_0[2][MT9V034_MAX_WIDTH/2],rgb565buf_1[2][MT9V034_MAX_WIDTH/2];
    unsigned * movable rgb565buf_ptr[2][2] = {
            {&rgb565buf_0[0][0], &rgb565buf_0[1][0]},
            {&rgb565buf_1[0][0], &rgb565buf_1[1][0]}
    };
    unsigned * movable bayer_buf_ptr[2];
    char operation_started = 0;
    char operation_start_responded = 0;
    char rgb_data_available = 0;
    char rgb_buf_ptr_index = 0, rgb_buf_ptr_index1 = 0;
    char ROI_rcvd = 0;
    unsigned short ht, wd, row = 0;
    mgmt_bayer_param_t bayer_mode_l = NOT_USED_MODE;
    mgmt_ROI_param_t metadata;


    while(1){

        select {
            case bayer_if.apm_mgmt(mgmt_intrf_commands_t command, void * unsafe param):
                if( (command == BAYER_MODE) && (param != NULL) ) {
                    printstrln("bayer_if: Bayer mode received from mgmt_if");
                    bayer_mode_l = *(mgmt_bayer_param_t *)param;
                 }
                 else if( (command == START_OPERATION) && (param == NULL) ){
                    printstrln("bayer_if: Start operation received from mgmt_if");
                    if(bayer_mode_l == PIXEL_DOUBLE){
                              printstrln("bayer_if: PIXEL_DOUBLE mode received....!!!");
                              operation_started = 1;
                              operation_start_responded = 0;
                    }
                 }
                 else if(command == STOP_OPERATION) {
                    operation_started = 0;
                    operation_start_responded = 0;
                }

                bayer_if.request_response();
                break;


            case bayer_if.get_response(void) -> mgmt_intrf_status_t bayer_if_status:
                bayer_if_status = APM_MGMT_SUCCESS;
                operation_started ? (operation_start_responded = 1) : (operation_start_responded = 0);
                break;


            (operation_start_responded) => default : {

                select {

                    case rgb_data_available => apm_us.get_new_line(unsigned * movable &buf_ptr, mgmt_ROI_param_t * mtdata) -> unsigned flag:

                        buf_ptr = move(rgb565buf_ptr[1-rgb_buf_ptr_index1][rgb_buf_ptr_index]);
                        if (ROI_rcvd && (rgb_data_available-1)) {
                            *mtdata = metadata;
                            flag = 1;

                        }
                        else {
                            flag = 0;
                        }
                       break;

                    case apm_us.release_line_buf(unsigned * movable &buf_ptr):

                        rgb565buf_ptr[1-rgb_buf_ptr_index1][rgb_buf_ptr_index] = move(buf_ptr);
                        rgb_buf_ptr_index = 1-rgb_buf_ptr_index;
                        rgb_data_available--;
                        break;


                    (!rgb_data_available) => default: {

                        ROI_rcvd = apm_ds.get_new_line(bayer_buf_ptr[0], &metadata);
                        if (ROI_rcvd) {
                            ht = metadata.height;
                            wd = metadata.width;
                       }
                        apm_ds.get_new_line(bayer_buf_ptr[1], NULL);

                        for (unsigned c=0; c<wd; c+=2){
                            char r = ((char *)bayer_buf_ptr[1])[c];
                            char b = ((char *)bayer_buf_ptr[0])[c+1];
                            char g0 = ((char *)bayer_buf_ptr[0])[c];
                            char g1 = ((char *)bayer_buf_ptr[1])[c+1];

                            unsigned short rgb565_0 = rgb888_to_rgb565(r,g0,b);
                            unsigned short rgb565_1 = rgb888_to_rgb565(r,g1,b);
                            unsigned rgb565_0_double = rgb565_0 | (rgb565_0<<16);
                            unsigned rgb565_1_double = rgb565_1 | (rgb565_1<<16);

                            rgb565buf_ptr[rgb_buf_ptr_index1][0][c/2] = rgb565_0_double;
                            rgb565buf_ptr[rgb_buf_ptr_index1][1][c/2] = rgb565_1_double;

                        }

                        apm_ds.release_line_buf(bayer_buf_ptr[0]);
                        apm_ds.release_line_buf(bayer_buf_ptr[1]);

                        rgb_data_available = 2;
                        row+=2; row%=ht;
                        rgb_buf_ptr_index1 = 1-rgb_buf_ptr_index1;

                    }
                    break;

                }

            }
            break;

        }
    }

}
