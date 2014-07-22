// Copyright (c) 2014, XMOS Ltd., All rights reserved
// This software is freely distributable under a derivative of the
// University of Illinois/NCSA Open Source License posted in
// LICENSE.txt and at <http://github.xcore.com/>

#include <xs1.h>
#include <platform.h>
#include <print.h>
#include <timer.h>
#include <stdio.h>

#include "bayer_interpolation.h"
#include "bayer_testbench.h"
#include "pipeline_interface.h"


/****************************************************************************************
 *  Management interface
 ***************************************************************************************/
void mgmt_intrf(interface mgmt_interface client mgr_bayer) {

    timer mgmt_timer;
    unsigned mgmt_timer_tick;
    char issue_cmd_flag = 0;
    char cmd_to_issue = '1';
    char next_cmd_to_issue = '1';
    mgmt_bayer_param_t  mgmt_bayer_mode_l;

    mgmt_timer :> mgmt_timer_tick;

    while(1) {
      select {
          case (!issue_cmd_flag) => mgmt_timer when timerafter(mgmt_timer_tick+25000) :> mgmt_timer_tick:
              issue_cmd_flag = 1;
              break;

          case mgr_bayer.request_response(void):
              mgmt_intrf_status_t response = mgr_bayer.get_response();
              if(response == APM_MGMT_SUCCESS) {
                  printstrln("mgmt_if: received APM_MGMT_SUCCESS from bayer_if");
                  //issue next command, if success received from the server interface
                  cmd_to_issue = next_cmd_to_issue;
              }
              break;

          (issue_cmd_flag) => default: {
              issue_cmd_flag = 0;

              switch(cmd_to_issue) {

                  case '1':
                      // send bayer mode to bayer_if
                      printstrln("mgmt_if:Sending bayer mode to bayer_if");
                      mgmt_bayer_mode_l = PIXEL_DOUBLE;
                      unsafe {mgr_bayer.apm_mgmt(BAYER_MODE,&mgmt_bayer_mode_l);}
                      next_cmd_to_issue = '2';
                      break;

                  case '2':
                      // send start operation to bayer_if
                      printstrln("mgmt_if:Sending start operation to bayer_if");
                      unsafe {mgr_bayer.apm_mgmt(START_OPERATION, NULL);}
                      next_cmd_to_issue = '3';
                      break;

                  case '3':
                      // Send stop operation after 10 sec
                      delay_seconds(10);
                      printstrln("mgmt_if:Sending stop operation to bayer_if");
                      unsafe {mgr_bayer.apm_mgmt(STOP_OPERATION, NULL);}
                      next_cmd_to_issue = '0';
                      break;

                  default:
                      issue_cmd_flag = 1; //be in this default once start operation is given
                      break;
              }
          }
          break;
      }
    }
}



int main(void) {
    interface mgmt_interface bayer_mgmt_intrf;
    interface pipeline_interface testbench_bayer_intrf, bayer_testbench_intrf;

    par {
        on tile[1]: mgmt_intrf(bayer_mgmt_intrf);
        on tile[1]: bayer_testbench_downstream(testbench_bayer_intrf);
        on tile[1]: bayer_interpolation(bayer_mgmt_intrf, testbench_bayer_intrf, bayer_testbench_intrf);
        on tile[1]: bayer_testbench_upstream(bayer_testbench_intrf);
    }
    return 0;
}

