# 1 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
# 3 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
# 1 "print.h" 1 3
# 34 "print.h" 3
int printchar(char value);
# 40 "print.h" 3
int printcharln(char value);
# 46 "print.h" 3
int printint(int value);
# 52 "print.h" 3
int printintln(int value);
# 58 "print.h" 3
int printuint(unsigned value);
# 64 "print.h" 3
int printuintln(unsigned value);
# 70 "print.h" 3
int printllong(long long value);
# 76 "print.h" 3
int printllongln(long long value);
# 82 "print.h" 3
int printullong(unsigned long long value);
# 88 "print.h" 3
int printullongln(unsigned long long value);
# 95 "print.h" 3
int printhex(unsigned value);
# 102 "print.h" 3
int printhexln(unsigned value);
# 109 "print.h" 3
int printllonghex(unsigned long long value);
# 116 "print.h" 3
int printllonghexln(unsigned long long value);
# 123 "print.h" 3
int printstr(const char (& alias s)[]);
# 133 "print.h" 3
int printstrln(const char (& alias s)[]);
# 4 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc" 2
# 5 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
# 1 "bayer_testbench_conf.h" 1
# 6 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc" 2
# 1 "pipeline_interface.h" 1
# 15 "pipeline_interface.h"
typedef enum {

    NOT_USED_COMMAND,

    SET_SCREEN_RESOLUTION,
    SET_COLOR_MODE,
    SET_REGION_OF_INTEREST,

    BAYER_MODE,

    START_OPERATION,
    STOP_OPERATION
}mgmt_intrf_commands_t;


typedef enum {
    APM_MGMT_FAILURE,
    APM_MGMT_SUCCESS
}mgmt_intrf_status_t;


typedef struct {
  unsigned short column_start;
  unsigned short row_start;
  unsigned short horiz_blank;
  unsigned short verti_blank;
  unsigned short tiled_dig_gain;
}mgmt_resolution_param_t;


typedef enum {
  NOT_USED_COLOR,
  GREYSCALE,
  RGB
}mgmt_color_param_t;


typedef struct {
  unsigned short height;
  unsigned short width;
}mgmt_ROI_param_t;


typedef enum {
  NOT_USED_MODE,
  PIXEL_DOUBLE,
  BILINEAR,
  GRADIENT
}mgmt_bayer_param_t;
# 71 "pipeline_interface.h"
interface mgmt_interface {
  [[guarded]] void apm_mgmt(mgmt_intrf_commands_t command, void * unsafe param);
  [[guarded]] [[notification]] slave void request_response(void);
  [[guarded]] [[clears_notification]] mgmt_intrf_status_t get_response(void);
};


interface pipeline_interface {
  [[guarded]] unsigned get_new_line(unsigned * movable &line_buf_ptr, mgmt_ROI_param_t * metadata);
  [[guarded]] void release_line_buf(unsigned * movable &line_buf_ptr);
};
# 7 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc" 2
# 1 "mt9v034.h" 1
# 8 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc" 2

void bayer_testbench_downstream(interface pipeline_interface server apm){
    unsigned bayer_buf0[ 752 /4+1],bayer_buf1[ 752 /4+1];
    unsigned * movable bayer_buf_ptr[2] = {&bayer_buf0[0], &bayer_buf1[0]};
    char index1=0, index2=0, row=0;


    unsigned pattern0 =  0x0  | ( 0xff <<8) | ( 0x0 <<16) | ( 0xff <<24);
    unsigned pattern1 =  0xff  | ( 0x0 <<8) | ( 0xff <<16) | ( 0x0 <<24);

    for (unsigned c=0; c< 480 /4; c++){
        bayer_buf_ptr[0][c] = pattern0;
        bayer_buf_ptr[1][c] = pattern1;
    }


    while (1){

        select {
            case apm.get_new_line(unsigned * movable &buf_ptr, mgmt_ROI_param_t * mtdata) -> unsigned flag:

            buf_ptr = move(bayer_buf_ptr[index1]);

                index1 = 1-index1;
                if (row==0){
                    row++;
                    row%= 272 ;
                    (*mtdata).height =  272 ;
                    (*mtdata).width =  480 ;
                    flag = 1;
                }
                else flag = 0;

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


    unsigned short rgb565 = (( 0xff  >> 3) & 0x1F) | ((unsigned short)(( 0x0  >> 2) & 0x3F) << 5) | ((unsigned short)(( 0xff  >> 3) & 0x1F) << 11);
    unsigned rgb565_double = rgb565 | (rgb565<<16);


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
