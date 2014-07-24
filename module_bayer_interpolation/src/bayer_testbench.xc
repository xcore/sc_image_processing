// Testbench for Bayer interpolation pipeline component

#include <print.h>

#include "bayer_testbench_conf.h"
#include "pipeline_interface.h"
#include "mt9v034.h"

void bayer_testbench_downstream(interface pipeline_interface server apm){
    unsigned bayer_buf0[MT9V034_MAX_WIDTH/4+1],bayer_buf1[MT9V034_MAX_WIDTH/4+1];
    unsigned * movable bayer_buf_ptr[2] = {&bayer_buf0[0], &bayer_buf1[0]};
    char index1=0, index2=0, row=0;

    // Fill Bayer pattern
    unsigned pattern0 = GREEN | (BLUE<<8) | (GREEN<<16) | (BLUE<<24);
    unsigned pattern1 = RED | (GREEN<<8) | (RED<<16) | (GREEN<<24);

    for (unsigned c=0; c<IMG_WIDTH/4; c++){
        bayer_buf_ptr[0][c] = pattern0;
        bayer_buf_ptr[1][c] = pattern1;
    }

    // Send Bayer pattern
    while (1){

        select {
            case apm.get_new_line(unsigned * movable &buf_ptr, mgmt_ROI_param_t * mtdata) -> unsigned flag:

            buf_ptr = move(bayer_buf_ptr[index1]);

                index1 = 1-index1;
                if (row==0){
                    (*mtdata).height = IMG_HEIGHT;
                    (*mtdata).width = IMG_WIDTH;
                    flag = 1;
                }
                else flag = 0;

                row++;
                row%=IMG_HEIGHT;


            break;

            case apm.release_line_buf(unsigned * movable &buf_ptr):
                bayer_buf_ptr[index2] = move(buf_ptr);
                index2 = 1-index2;

            break;
        }

    }

}



void bayer_testbench_upstream(interface pipeline_interface client apm){
    unsigned * movable rgb_buf_ptr;
    mgmt_ROI_param_t metadata;
    unsigned ht, wd;

    // RGB565 value computation
    unsigned short rgb565 = ((BLUE >> 3) & 0x1F) | ((unsigned short)((GREEN >> 2) & 0x3F) << 5) | ((unsigned short)((RED >> 3) & 0x1F) << 11);
    unsigned rgb565_double = rgb565 | (rgb565<<16);

    // Receive RGB565 values and check for correctness
    while (1){

        unsigned data_incorrect = 0;

        apm.get_new_line(rgb_buf_ptr, &metadata);
        ht = metadata.height; wd = metadata.width;

        for (unsigned r=1; r<ht; r++){

            apm.release_line_buf(rgb_buf_ptr);
            apm.get_new_line(rgb_buf_ptr, &metadata);

            for (unsigned c=0; c<wd/2; c++)
                if (rgb_buf_ptr[c] != rgb565_double) data_incorrect = 1;
        }

        apm.release_line_buf(rgb_buf_ptr);

        if (data_incorrect)
            printstrln ("Incorrect frame received");
        else
            printstrln ("Correct frame received");

    }

}

