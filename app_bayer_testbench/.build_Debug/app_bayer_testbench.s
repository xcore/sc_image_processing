	.file	"../src/app_bayer_testbench.xc"

	.inline_definition delay_seconds
	.inline_definition delay_milliseconds
	.inline_definition delay_microseconds
	.set __main__main_tile_1.savedstate,21
	.globl __main__main_tile_1.savedstate
	.weak _i.mgmt_interface.apm_mgmt.maxchanends.group
	.add_to_set _i.mgmt_interface.apm_mgmt.maxchanends.group, _i.mgmt_interface._chan.apm_mgmt.maxchanends, _i.mgmt_interface._chan.apm_mgmt
	.max_reduce _i.mgmt_interface.apm_mgmt.max.maxchanends, _i.mgmt_interface.apm_mgmt.maxchanends.group, 0
	.weak _i.mgmt_interface.apm_mgmt.maxcores.group
	.add_to_set _i.mgmt_interface.apm_mgmt.maxcores.group, _i.mgmt_interface._chan.apm_mgmt.maxcores, _i.mgmt_interface._chan.apm_mgmt
	.max_reduce _i.mgmt_interface.apm_mgmt.max.maxcores, _i.mgmt_interface.apm_mgmt.maxcores.group, 0
	.weak _i.mgmt_interface.apm_mgmt.maxtimers.group
	.add_to_set _i.mgmt_interface.apm_mgmt.maxtimers.group, _i.mgmt_interface._chan.apm_mgmt.maxtimers, _i.mgmt_interface._chan.apm_mgmt
	.max_reduce _i.mgmt_interface.apm_mgmt.max.maxtimers, _i.mgmt_interface.apm_mgmt.maxtimers.group, 0
	.weak _i.mgmt_interface.apm_mgmt.nstackwords.group
	.globl _i.mgmt_interface.apm_mgmt.nstackwords.group
	.weak _i.mgmt_interface.apm_mgmt.fns.group
	.globl _i.mgmt_interface.apm_mgmt.fns.group
	.add_to_set _i.mgmt_interface.apm_mgmt.nstackwords.group, _i.mgmt_interface._chan.apm_mgmt.nstackwords, _i.mgmt_interface._chan.apm_mgmt
	.add_to_set _i.mgmt_interface.apm_mgmt.fns.group, _i.mgmt_interface._chan.apm_mgmt
	.max_reduce _i.mgmt_interface.apm_mgmt.max.nstackwords, _i.mgmt_interface.apm_mgmt.nstackwords.group, 0
	.max_reduce _i.mgmt_interface.apm_mgmt.fns, _i.mgmt_interface.apm_mgmt.fns.group, 0
	.weak _i.mgmt_interface.get_response.maxchanends.group
	.add_to_set _i.mgmt_interface.get_response.maxchanends.group, _i.mgmt_interface._chan.get_response.maxchanends, _i.mgmt_interface._chan.get_response
	.max_reduce _i.mgmt_interface.get_response.max.maxchanends, _i.mgmt_interface.get_response.maxchanends.group, 0
	.weak _i.mgmt_interface.get_response.maxcores.group
	.add_to_set _i.mgmt_interface.get_response.maxcores.group, _i.mgmt_interface._chan.get_response.maxcores, _i.mgmt_interface._chan.get_response
	.max_reduce _i.mgmt_interface.get_response.max.maxcores, _i.mgmt_interface.get_response.maxcores.group, 0
	.weak _i.mgmt_interface.get_response.maxtimers.group
	.add_to_set _i.mgmt_interface.get_response.maxtimers.group, _i.mgmt_interface._chan.get_response.maxtimers, _i.mgmt_interface._chan.get_response
	.max_reduce _i.mgmt_interface.get_response.max.maxtimers, _i.mgmt_interface.get_response.maxtimers.group, 0
	.weak _i.mgmt_interface.get_response.nstackwords.group
	.globl _i.mgmt_interface.get_response.nstackwords.group
	.weak _i.mgmt_interface.get_response.fns.group
	.globl _i.mgmt_interface.get_response.fns.group
	.add_to_set _i.mgmt_interface.get_response.nstackwords.group, _i.mgmt_interface._chan.get_response.nstackwords, _i.mgmt_interface._chan.get_response
	.add_to_set _i.mgmt_interface.get_response.fns.group, _i.mgmt_interface._chan.get_response
	.max_reduce _i.mgmt_interface.get_response.max.nstackwords, _i.mgmt_interface.get_response.nstackwords.group, 0
	.max_reduce _i.mgmt_interface.get_response.fns, _i.mgmt_interface.get_response.fns.group, 0
	.weak _i.mgmt_interface.__interface_init.maxchanends.group
	.max_reduce _i.mgmt_interface.__interface_init.max.maxchanends, _i.mgmt_interface.__interface_init.maxchanends.group, 0
	.weak _i.mgmt_interface.__interface_init.maxcores.group
	.max_reduce _i.mgmt_interface.__interface_init.max.maxcores, _i.mgmt_interface.__interface_init.maxcores.group, 0
	.weak _i.mgmt_interface.__interface_init.maxtimers.group
	.max_reduce _i.mgmt_interface.__interface_init.max.maxtimers, _i.mgmt_interface.__interface_init.maxtimers.group, 0
	.weak _i.mgmt_interface.__interface_init.nstackwords.group
	.globl _i.mgmt_interface.__interface_init.nstackwords.group
	.weak _i.mgmt_interface.__interface_init.fns.group
	.globl _i.mgmt_interface.__interface_init.fns.group
	.max_reduce _i.mgmt_interface.__interface_init.max.nstackwords, _i.mgmt_interface.__interface_init.nstackwords.group, 0
	.max_reduce _i.mgmt_interface.__interface_init.fns, _i.mgmt_interface.__interface_init.fns.group, 0
	.weak _i.mgmt_interface._client_call.maxchanends.group
	.add_to_set _i.mgmt_interface._client_call.maxchanends.group, (__interface_client_call_other.maxchanends + __interface_client_call_extra.maxchanends), __interface_client_call_other
	.max_reduce _i.mgmt_interface._client_call.max.maxchanends, _i.mgmt_interface._client_call.maxchanends.group, 0
	.weak _i.mgmt_interface._client_call.maxcores.group
	.add_to_set _i.mgmt_interface._client_call.maxcores.group, (__interface_client_call_other.maxcores + __interface_client_call_extra.maxcores), __interface_client_call_other
	.max_reduce _i.mgmt_interface._client_call.max.maxcores, _i.mgmt_interface._client_call.maxcores.group, 0
	.weak _i.mgmt_interface._client_call.maxtimers.group
	.add_to_set _i.mgmt_interface._client_call.maxtimers.group, (__interface_client_call_other.maxtimers + __interface_client_call_extra.maxtimers), __interface_client_call_other
	.max_reduce _i.mgmt_interface._client_call.max.maxtimers, _i.mgmt_interface._client_call.maxtimers.group, 0
	.weak _i.mgmt_interface._client_call.nstackwords.group
	.globl _i.mgmt_interface._client_call.nstackwords.group
	.weak _i.mgmt_interface._client_call.fns.group
	.globl _i.mgmt_interface._client_call.fns.group
	.add_to_set _i.mgmt_interface._client_call.nstackwords.group, (__interface_client_call_other.nstackwords + __interface_client_call_extra.nstackwords), __interface_client_call_other
	.add_to_set _i.mgmt_interface._client_call.fns.group, __interface_client_call_other
	.max_reduce _i.mgmt_interface._client_call.max.nstackwords, _i.mgmt_interface._client_call.nstackwords.group, 0
	.max_reduce _i.mgmt_interface._client_call.fns, _i.mgmt_interface._client_call.fns.group, 0
	.weak _i.pipeline_interface.get_new_line.maxchanends.group
	.add_to_set _i.pipeline_interface.get_new_line.maxchanends.group, _i.pipeline_interface._chan.get_new_line.maxchanends, _i.pipeline_interface._chan.get_new_line
	.max_reduce _i.pipeline_interface.get_new_line.max.maxchanends, _i.pipeline_interface.get_new_line.maxchanends.group, 0
	.weak _i.pipeline_interface.get_new_line.maxcores.group
	.add_to_set _i.pipeline_interface.get_new_line.maxcores.group, _i.pipeline_interface._chan.get_new_line.maxcores, _i.pipeline_interface._chan.get_new_line
	.max_reduce _i.pipeline_interface.get_new_line.max.maxcores, _i.pipeline_interface.get_new_line.maxcores.group, 0
	.weak _i.pipeline_interface.get_new_line.maxtimers.group
	.add_to_set _i.pipeline_interface.get_new_line.maxtimers.group, _i.pipeline_interface._chan.get_new_line.maxtimers, _i.pipeline_interface._chan.get_new_line
	.max_reduce _i.pipeline_interface.get_new_line.max.maxtimers, _i.pipeline_interface.get_new_line.maxtimers.group, 0
	.weak _i.pipeline_interface.get_new_line.nstackwords.group
	.globl _i.pipeline_interface.get_new_line.nstackwords.group
	.weak _i.pipeline_interface.get_new_line.fns.group
	.globl _i.pipeline_interface.get_new_line.fns.group
	.add_to_set _i.pipeline_interface.get_new_line.nstackwords.group, _i.pipeline_interface._chan.get_new_line.nstackwords, _i.pipeline_interface._chan.get_new_line
	.add_to_set _i.pipeline_interface.get_new_line.fns.group, _i.pipeline_interface._chan.get_new_line
	.max_reduce _i.pipeline_interface.get_new_line.max.nstackwords, _i.pipeline_interface.get_new_line.nstackwords.group, 0
	.max_reduce _i.pipeline_interface.get_new_line.fns, _i.pipeline_interface.get_new_line.fns.group, 0
	.weak _i.pipeline_interface.release_line_buf.maxchanends.group
	.add_to_set _i.pipeline_interface.release_line_buf.maxchanends.group, _i.pipeline_interface._chan.release_line_buf.maxchanends, _i.pipeline_interface._chan.release_line_buf
	.max_reduce _i.pipeline_interface.release_line_buf.max.maxchanends, _i.pipeline_interface.release_line_buf.maxchanends.group, 0
	.weak _i.pipeline_interface.release_line_buf.maxcores.group
	.add_to_set _i.pipeline_interface.release_line_buf.maxcores.group, _i.pipeline_interface._chan.release_line_buf.maxcores, _i.pipeline_interface._chan.release_line_buf
	.max_reduce _i.pipeline_interface.release_line_buf.max.maxcores, _i.pipeline_interface.release_line_buf.maxcores.group, 0
	.weak _i.pipeline_interface.release_line_buf.maxtimers.group
	.add_to_set _i.pipeline_interface.release_line_buf.maxtimers.group, _i.pipeline_interface._chan.release_line_buf.maxtimers, _i.pipeline_interface._chan.release_line_buf
	.max_reduce _i.pipeline_interface.release_line_buf.max.maxtimers, _i.pipeline_interface.release_line_buf.maxtimers.group, 0
	.weak _i.pipeline_interface.release_line_buf.nstackwords.group
	.globl _i.pipeline_interface.release_line_buf.nstackwords.group
	.weak _i.pipeline_interface.release_line_buf.fns.group
	.globl _i.pipeline_interface.release_line_buf.fns.group
	.add_to_set _i.pipeline_interface.release_line_buf.nstackwords.group, _i.pipeline_interface._chan.release_line_buf.nstackwords, _i.pipeline_interface._chan.release_line_buf
	.add_to_set _i.pipeline_interface.release_line_buf.fns.group, _i.pipeline_interface._chan.release_line_buf
	.max_reduce _i.pipeline_interface.release_line_buf.max.nstackwords, _i.pipeline_interface.release_line_buf.nstackwords.group, 0
	.max_reduce _i.pipeline_interface.release_line_buf.fns, _i.pipeline_interface.release_line_buf.fns.group, 0
	.weak _i.pipeline_interface.__interface_init.maxchanends.group
	.max_reduce _i.pipeline_interface.__interface_init.max.maxchanends, _i.pipeline_interface.__interface_init.maxchanends.group, 0
	.weak _i.pipeline_interface.__interface_init.maxcores.group
	.max_reduce _i.pipeline_interface.__interface_init.max.maxcores, _i.pipeline_interface.__interface_init.maxcores.group, 0
	.weak _i.pipeline_interface.__interface_init.maxtimers.group
	.max_reduce _i.pipeline_interface.__interface_init.max.maxtimers, _i.pipeline_interface.__interface_init.maxtimers.group, 0
	.weak _i.pipeline_interface.__interface_init.nstackwords.group
	.globl _i.pipeline_interface.__interface_init.nstackwords.group
	.weak _i.pipeline_interface.__interface_init.fns.group
	.globl _i.pipeline_interface.__interface_init.fns.group
	.max_reduce _i.pipeline_interface.__interface_init.max.nstackwords, _i.pipeline_interface.__interface_init.nstackwords.group, 0
	.max_reduce _i.pipeline_interface.__interface_init.fns, _i.pipeline_interface.__interface_init.fns.group, 0
	.weak _i.pipeline_interface._client_call.maxchanends.group
	.add_to_set _i.pipeline_interface._client_call.maxchanends.group, (__interface_client_call_other.maxchanends + __interface_client_call_extra.maxchanends), __interface_client_call_other
	.max_reduce _i.pipeline_interface._client_call.max.maxchanends, _i.pipeline_interface._client_call.maxchanends.group, 0
	.weak _i.pipeline_interface._client_call.maxcores.group
	.add_to_set _i.pipeline_interface._client_call.maxcores.group, (__interface_client_call_other.maxcores + __interface_client_call_extra.maxcores), __interface_client_call_other
	.max_reduce _i.pipeline_interface._client_call.max.maxcores, _i.pipeline_interface._client_call.maxcores.group, 0
	.weak _i.pipeline_interface._client_call.maxtimers.group
	.add_to_set _i.pipeline_interface._client_call.maxtimers.group, (__interface_client_call_other.maxtimers + __interface_client_call_extra.maxtimers), __interface_client_call_other
	.max_reduce _i.pipeline_interface._client_call.max.maxtimers, _i.pipeline_interface._client_call.maxtimers.group, 0
	.weak _i.pipeline_interface._client_call.nstackwords.group
	.globl _i.pipeline_interface._client_call.nstackwords.group
	.weak _i.pipeline_interface._client_call.fns.group
	.globl _i.pipeline_interface._client_call.fns.group
	.add_to_set _i.pipeline_interface._client_call.nstackwords.group, (__interface_client_call_other.nstackwords + __interface_client_call_extra.nstackwords), __interface_client_call_other
	.add_to_set _i.pipeline_interface._client_call.fns.group, __interface_client_call_other
	.max_reduce _i.pipeline_interface._client_call.max.nstackwords, _i.pipeline_interface._client_call.nstackwords.group, 0
	.max_reduce _i.pipeline_interface._client_call.fns, _i.pipeline_interface._client_call.fns.group, 0
	.weak _i.pipeline_interface.get_new_line.maxchanends.group
	.add_to_set _i.pipeline_interface.get_new_line.maxchanends.group, _i.pipeline_interface._chan.get_new_line.maxchanends, _i.pipeline_interface._chan.get_new_line
	.weak _i.pipeline_interface.get_new_line.maxcores.group
	.add_to_set _i.pipeline_interface.get_new_line.maxcores.group, _i.pipeline_interface._chan.get_new_line.maxcores, _i.pipeline_interface._chan.get_new_line
	.weak _i.pipeline_interface.get_new_line.maxtimers.group
	.add_to_set _i.pipeline_interface.get_new_line.maxtimers.group, _i.pipeline_interface._chan.get_new_line.maxtimers, _i.pipeline_interface._chan.get_new_line
	.weak _i.pipeline_interface.get_new_line.nstackwords.group
	.globl _i.pipeline_interface.get_new_line.nstackwords.group
	.weak _i.pipeline_interface.get_new_line.fns.group
	.globl _i.pipeline_interface.get_new_line.fns.group
	.add_to_set _i.pipeline_interface.get_new_line.nstackwords.group, _i.pipeline_interface._chan.get_new_line.nstackwords, _i.pipeline_interface._chan.get_new_line
	.add_to_set _i.pipeline_interface.get_new_line.fns.group, _i.pipeline_interface._chan.get_new_line
	.weak _i.pipeline_interface.release_line_buf.maxchanends.group
	.add_to_set _i.pipeline_interface.release_line_buf.maxchanends.group, _i.pipeline_interface._chan.release_line_buf.maxchanends, _i.pipeline_interface._chan.release_line_buf
	.weak _i.pipeline_interface.release_line_buf.maxcores.group
	.add_to_set _i.pipeline_interface.release_line_buf.maxcores.group, _i.pipeline_interface._chan.release_line_buf.maxcores, _i.pipeline_interface._chan.release_line_buf
	.weak _i.pipeline_interface.release_line_buf.maxtimers.group
	.add_to_set _i.pipeline_interface.release_line_buf.maxtimers.group, _i.pipeline_interface._chan.release_line_buf.maxtimers, _i.pipeline_interface._chan.release_line_buf
	.weak _i.pipeline_interface.release_line_buf.nstackwords.group
	.globl _i.pipeline_interface.release_line_buf.nstackwords.group
	.weak _i.pipeline_interface.release_line_buf.fns.group
	.globl _i.pipeline_interface.release_line_buf.fns.group
	.add_to_set _i.pipeline_interface.release_line_buf.nstackwords.group, _i.pipeline_interface._chan.release_line_buf.nstackwords, _i.pipeline_interface._chan.release_line_buf
	.add_to_set _i.pipeline_interface.release_line_buf.fns.group, _i.pipeline_interface._chan.release_line_buf
	.weak _i.pipeline_interface.__interface_init.maxchanends.group
	.weak _i.pipeline_interface.__interface_init.maxcores.group
	.weak _i.pipeline_interface.__interface_init.maxtimers.group
	.weak _i.pipeline_interface.__interface_init.nstackwords.group
	.globl _i.pipeline_interface.__interface_init.nstackwords.group
	.weak _i.pipeline_interface.__interface_init.fns.group
	.globl _i.pipeline_interface.__interface_init.fns.group
	.section .netinfo, "", @netinfo
	.int      0x1eaba15c
	main.parinfo.debugstring0:
	.asciiz "# 90 \"../src/app_bayer_testbench.xc\""
	main.parinfo.debugstring1:
	.asciiz "# 97 \"../src/app_bayer_testbench.xc\""
	.cc_top main.parinfo.cc, main.parinfo
	.globl main.parinfo
	.type main.parinfo, @object
	main.parinfo:
	.int 0x00000004
	.long 0
	.long main.parinfo.debugstring0
	.long main.parinfo.debugstring1
	.int 0x00000001
	.int 0x00000000
	.int $N __main__main_tile_1
	.long tile + 4
	.call __main__main_tile_1,usage.anon.3
	.int 0x00000000
	.cc_bottom main.parinfo.cc
	.weak _i.pipeline_interface.get_new_line.maxchanends.group
	.weak _i.pipeline_interface.get_new_line.maxcores.group
	.weak _i.pipeline_interface.get_new_line.maxtimers.group
	.weak _i.pipeline_interface.get_new_line.nstackwords.group
	.globl _i.pipeline_interface.get_new_line.nstackwords.group
	.weak _i.pipeline_interface.get_new_line.fns.group
	.globl _i.pipeline_interface.get_new_line.fns.group
	.weak _i.pipeline_interface.release_line_buf.maxchanends.group
	.weak _i.pipeline_interface.release_line_buf.maxcores.group
	.weak _i.pipeline_interface.release_line_buf.maxtimers.group
	.weak _i.pipeline_interface.release_line_buf.nstackwords.group
	.globl _i.pipeline_interface.release_line_buf.nstackwords.group
	.weak _i.pipeline_interface.release_line_buf.fns.group
	.globl _i.pipeline_interface.release_line_buf.fns.group
	.weak _i.pipeline_interface.__interface_init.maxchanends.group
	.weak _i.pipeline_interface.__interface_init.maxcores.group
	.weak _i.pipeline_interface.__interface_init.maxtimers.group
	.weak _i.pipeline_interface.__interface_init.nstackwords.group
	.globl _i.pipeline_interface.__interface_init.nstackwords.group
	.weak _i.pipeline_interface.__interface_init.fns.group
	.globl _i.pipeline_interface.__interface_init.fns.group
	.weak _i.mgmt_interface.apm_mgmt.maxchanends.group
	.weak _i.mgmt_interface.apm_mgmt.maxcores.group
	.weak _i.mgmt_interface.apm_mgmt.maxtimers.group
	.weak _i.mgmt_interface.apm_mgmt.nstackwords.group
	.globl _i.mgmt_interface.apm_mgmt.nstackwords.group
	.weak _i.mgmt_interface.apm_mgmt.fns.group
	.globl _i.mgmt_interface.apm_mgmt.fns.group
	.weak _i.mgmt_interface.get_response.maxchanends.group
	.weak _i.mgmt_interface.get_response.maxcores.group
	.weak _i.mgmt_interface.get_response.maxtimers.group
	.weak _i.mgmt_interface.get_response.nstackwords.group
	.globl _i.mgmt_interface.get_response.nstackwords.group
	.weak _i.mgmt_interface.get_response.fns.group
	.globl _i.mgmt_interface.get_response.fns.group
	.weak _i.mgmt_interface.__interface_init.maxchanends.group
	.weak _i.mgmt_interface.__interface_init.maxcores.group
	.weak _i.mgmt_interface.__interface_init.maxtimers.group
	.weak _i.mgmt_interface.__interface_init.nstackwords.group
	.globl _i.mgmt_interface.__interface_init.nstackwords.group
	.weak _i.mgmt_interface.__interface_init.fns.group
	.globl _i.mgmt_interface.__interface_init.fns.group
	.set usage.anon.0,0
	.set usage.anon.1,0
	.set usage.anon.2,0
	.set usage.anon.3,0
	.call usage.anon.3,bayer_testbench_upstream
	.call usage.anon.3,bayer_interpolation
	.call usage.anon.3,bayer_testbench_downstream
	.call usage.anon.3,mgmt_intrf
	.call main,mgmt_intrf
	.call main,bayer_testbench_upstream
	.call main,bayer_testbench_downstream
	.call main,bayer_interpolation
	.call mgmt_intrf,usage.anon.0
	.call mgmt_intrf,printstrln
	.call usage.anon.2,delay_ticks_longlong
	.call usage.anon.1,delay_ticks_longlong
	.call usage.anon.0,delay_ticks_longlong
	.par mgmt_intrf,bayer_testbench_downstream,"../src/app_bayer_testbench.xc:90: error: use of `%s' violates parallel usage rules"
	.par mgmt_intrf,bayer_interpolation,"../src/app_bayer_testbench.xc:90: error: use of `%s' violates parallel usage rules"
	.par mgmt_intrf,bayer_testbench_upstream,"../src/app_bayer_testbench.xc:90: error: use of `%s' violates parallel usage rules"
	.par bayer_testbench_downstream,bayer_interpolation,"../src/app_bayer_testbench.xc:90: error: use of `%s' violates parallel usage rules"
	.par bayer_testbench_downstream,bayer_testbench_upstream,"../src/app_bayer_testbench.xc:90: error: use of `%s' violates parallel usage rules"
	.par bayer_interpolation,bayer_testbench_upstream,"../src/app_bayer_testbench.xc:90: error: use of `%s' violates parallel usage rules"
	.set usage.anon.0.locnoside, 1
	.set usage.anon.1.locnoside, 1
	.set usage.anon.2.locnoside, 1
	.set main.locnoside, 1
	.set usage.anon.0.locnochandec, 1
	.set usage.anon.1.locnochandec, 1
	.set usage.anon.2.locnochandec, 1
	.set mgmt_intrf.locnochandec, 1
	.set main.locnochandec, 1
	.set usage.anon.0.locnoglobalaccess, 1
	.set usage.anon.1.locnoglobalaccess, 1
	.set usage.anon.2.locnoglobalaccess, 1
	.set mgmt_intrf.locnoglobalaccess, 1
	.set main.locnoglobalaccess, 1
	.set usage.anon.0.locnointerfaceaccess, 1
	.set usage.anon.1.locnointerfaceaccess, 1
	.set usage.anon.2.locnointerfaceaccess, 1
	.set main.locnointerfaceaccess, 1
	.set usage.anon.0.locnonotificationselect, 1
	.set usage.anon.1.locnonotificationselect, 1
	.set usage.anon.2.locnonotificationselect, 1
	.set main.locnonotificationselect, 1
	.overlay_subgraph_conflict __main__main_tile_1_task_mgmt_intrf_0, __main__main_tile_1_task_bayer_testbench_downstream_1, __main__main_tile_1_task_bayer_interpolation_2, __main__main_tile_1_task_bayer_testbench_upstream_3


	.file	1 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug\\../src/app_bayer_testbench.xc"
	.file	2 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug\\<synthesized>"
	.file	3 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug\\timer.h"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubnames,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"",@progbits
.Lsection_str:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.section	.dp.data,"awd",@progbits
	.section	.text._i.mgmt_interface._chan.get_response,"ax",@progbits
	.cc_top _i.mgmt_interface._chan.get_response.function
	.weak	_i.mgmt_interface._chan.get_response
	.align	4
	.type	_i.mgmt_interface._chan.get_response,@function
_i.mgmt_interface._chan.get_response:
.Ltmp4:
	.cfi_startproc
.Lfunc_begin0:
	.loc	2 0 0
	entsp 4
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset 15, 0
	.loc	2 0 0 prologue_end
.Ltmp7:
	stw r4, sp[3]
.Ltmp8:
	.cfi_offset 4, -4
	stw r5, sp[2]
.Ltmp9:
	.cfi_offset 5, -8
	stw r6, sp[1]
.Ltmp10:
	.cfi_offset 6, -12
	mov r5, r1
.Ltmp11:
	ldw r1, r0[0]
	getr r4, 2
	setd res[r4], r1
	add r1, r4, 1
	out res[r4], r1
	outct res[r4], 2
	ldw r6, r0[1]
	mov r0, r4
.Ltmp12:
	mov r1, r6
	bl __interface_wait_and_yield
	chkct res[r4], 1
	out res[r4], r5
	outct res[r4], 2
	ldc r1, 0
	mov r0, r4
	mov r2, r6
	bl __interface_client_call
	in r0, res[r4]
	chkct res[r4], 1
	freer res[r4]
	ldw r6, sp[1]
	ldw r5, sp[2]
.Ltmp13:
	ldw r4, sp[3]
	retsp 4
.Ltmp14:
.Ltmp15:
	.size	_i.mgmt_interface._chan.get_response, .Ltmp15-_i.mgmt_interface._chan.get_response
.Lfunc_end0:
.Ltmp16:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom _i.mgmt_interface._chan.get_response.function
	.set	_i.mgmt_interface._chan.get_response.nstackwords,((($D __interface_wait_and_yield.nstackwords ? __interface_wait_and_yield.nstackwords $: _i.mgmt_interface._client_call.max.nstackwords) $M _i.mgmt_interface._client_call.max.nstackwords $M ($D __interface_client_call.nstackwords ? __interface_client_call.nstackwords $: _i.mgmt_interface._client_call.max.nstackwords)) + 4)
	.globl	_i.mgmt_interface._chan.get_response.nstackwords
	.weak	_i.mgmt_interface._chan.get_response.nstackwords
	.set	_i.mgmt_interface._chan.get_response.maxcores,($D __interface_client_call.maxcores ? __interface_client_call.maxcores $: _i.mgmt_interface._client_call.max.maxcores) $M ($D __interface_wait_and_yield.maxcores ? __interface_wait_and_yield.maxcores $: _i.mgmt_interface._client_call.max.maxcores) $M 1
	.globl	_i.mgmt_interface._chan.get_response.maxcores
	.weak	_i.mgmt_interface._chan.get_response.maxcores
	.set	_i.mgmt_interface._chan.get_response.maxtimers,($D __interface_client_call.maxtimers ? __interface_client_call.maxtimers $: _i.mgmt_interface._client_call.max.maxtimers) $M ($D __interface_wait_and_yield.maxtimers ? __interface_wait_and_yield.maxtimers $: _i.mgmt_interface._client_call.max.maxtimers) $M 0
	.globl	_i.mgmt_interface._chan.get_response.maxtimers
	.weak	_i.mgmt_interface._chan.get_response.maxtimers
	.set	_i.mgmt_interface._chan.get_response.maxchanends,(1 + ($D __interface_client_call.maxchanends ? __interface_client_call.maxchanends $: _i.mgmt_interface._client_call.max.maxchanends)) $M (1 + ($D __interface_wait_and_yield.maxchanends ? __interface_wait_and_yield.maxchanends $: _i.mgmt_interface._client_call.max.maxchanends)) $M 1
	.globl	_i.mgmt_interface._chan.get_response.maxchanends
	.weak	_i.mgmt_interface._chan.get_response.maxchanends
	.section	.text._i.mgmt_interface._chan.apm_mgmt,"ax",@progbits
	.cc_top _i.mgmt_interface._chan.apm_mgmt.function
	.weak	_i.mgmt_interface._chan.apm_mgmt
	.align	4
	.type	_i.mgmt_interface._chan.apm_mgmt,@function
_i.mgmt_interface._chan.apm_mgmt:
.Ltmp22:
	.cfi_startproc
.Lfunc_begin1:
	.loc	2 0 0
	entsp 5
.Ltmp23:
	.cfi_def_cfa_offset 20
.Ltmp24:
	.cfi_offset 15, 0
	.loc	2 0 0 prologue_end
.Ltmp25:
	stw r4, sp[4]
.Ltmp26:
	.cfi_offset 4, -4
	stw r5, sp[3]
.Ltmp27:
	.cfi_offset 5, -8
	stw r6, sp[2]
.Ltmp28:
	.cfi_offset 6, -12
	stw r7, sp[1]
.Ltmp29:
	.cfi_offset 7, -16
	mov r5, r2
.Ltmp30:
	mov r7, r1
.Ltmp31:
	ldw r1, r0[0]
	getr r4, 2
	setd res[r4], r1
	out res[r4], r4
	outct res[r4], 2
	ldw r6, r0[1]
	mov r0, r4
.Ltmp32:
	mov r1, r6
	bl __interface_wait_and_yield
	chkct res[r4], 1
	out res[r4], r7
	#APP
	#NO_APP
	out res[r4], r5
	outct res[r4], 2
	ldc r1, 0
	mov r0, r4
	mov r2, r6
	bl __interface_client_call
	chkct res[r4], 1
	freer res[r4]
	ldw r7, sp[1]
.Ltmp33:
	ldw r6, sp[2]
	ldw r5, sp[3]
.Ltmp34:
	ldw r4, sp[4]
	retsp 5
.Ltmp35:
.Ltmp36:
	.size	_i.mgmt_interface._chan.apm_mgmt, .Ltmp36-_i.mgmt_interface._chan.apm_mgmt
.Lfunc_end1:
.Ltmp37:
	.cfi_endproc
.Leh_func_end1:

	.align	4
	.cc_bottom _i.mgmt_interface._chan.apm_mgmt.function
	.set	_i.mgmt_interface._chan.apm_mgmt.nstackwords,((($D __interface_wait_and_yield.nstackwords ? __interface_wait_and_yield.nstackwords $: _i.mgmt_interface._client_call.max.nstackwords) $M _i.mgmt_interface._client_call.max.nstackwords $M ($D __interface_client_call.nstackwords ? __interface_client_call.nstackwords $: _i.mgmt_interface._client_call.max.nstackwords)) + 5)
	.globl	_i.mgmt_interface._chan.apm_mgmt.nstackwords
	.weak	_i.mgmt_interface._chan.apm_mgmt.nstackwords
	.set	_i.mgmt_interface._chan.apm_mgmt.maxcores,($D __interface_client_call.maxcores ? __interface_client_call.maxcores $: _i.mgmt_interface._client_call.max.maxcores) $M ($D __interface_wait_and_yield.maxcores ? __interface_wait_and_yield.maxcores $: _i.mgmt_interface._client_call.max.maxcores) $M 1
	.globl	_i.mgmt_interface._chan.apm_mgmt.maxcores
	.weak	_i.mgmt_interface._chan.apm_mgmt.maxcores
	.set	_i.mgmt_interface._chan.apm_mgmt.maxtimers,($D __interface_client_call.maxtimers ? __interface_client_call.maxtimers $: _i.mgmt_interface._client_call.max.maxtimers) $M ($D __interface_wait_and_yield.maxtimers ? __interface_wait_and_yield.maxtimers $: _i.mgmt_interface._client_call.max.maxtimers) $M 0
	.globl	_i.mgmt_interface._chan.apm_mgmt.maxtimers
	.weak	_i.mgmt_interface._chan.apm_mgmt.maxtimers
	.set	_i.mgmt_interface._chan.apm_mgmt.maxchanends,(1 + ($D __interface_client_call.maxchanends ? __interface_client_call.maxchanends $: _i.mgmt_interface._client_call.max.maxchanends)) $M (1 + ($D __interface_wait_and_yield.maxchanends ? __interface_wait_and_yield.maxchanends $: _i.mgmt_interface._client_call.max.maxchanends)) $M 1
	.globl	_i.mgmt_interface._chan.apm_mgmt.maxchanends
	.weak	_i.mgmt_interface._chan.apm_mgmt.maxchanends
	.section	.text._i.pipeline_interface._chan.release_line_buf,"ax",@progbits
	.cc_top _i.pipeline_interface._chan.release_line_buf.function
	.weak	_i.pipeline_interface._chan.release_line_buf
	.align	4
	.type	_i.pipeline_interface._chan.release_line_buf,@function
_i.pipeline_interface._chan.release_line_buf:
.Ltmp42:
	.cfi_startproc
.Lfunc_begin2:
	.loc	2 0 0
	entsp 4
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset 15, 0
	.loc	2 0 0 prologue_end
.Ltmp45:
	stw r4, sp[3]
.Ltmp46:
	.cfi_offset 4, -4
	stw r5, sp[2]
.Ltmp47:
	.cfi_offset 5, -8
	stw r6, sp[1]
.Ltmp48:
	.cfi_offset 6, -12
	mov r5, r1
.Ltmp49:
	ldw r1, r0[0]
	getr r4, 2
	setd res[r4], r1
	add r1, r4, 1
	out res[r4], r1
	outct res[r4], 2
	ldw r6, r0[1]
	mov r0, r4
.Ltmp50:
	mov r1, r6
	bl __interface_wait_and_yield
	chkct res[r4], 1
	#APP
	#NO_APP
	out res[r4], r5
	outct res[r4], 2
	ldc r1, 0
	mov r0, r4
	mov r2, r6
	bl __interface_client_call
	chkct res[r4], 1
	freer res[r4]
	ldw r6, sp[1]
	ldw r5, sp[2]
.Ltmp51:
	ldw r4, sp[3]
	retsp 4
.Ltmp52:
.Ltmp53:
	.size	_i.pipeline_interface._chan.release_line_buf, .Ltmp53-_i.pipeline_interface._chan.release_line_buf
.Lfunc_end2:
.Ltmp54:
	.cfi_endproc
.Leh_func_end2:

	.align	4
	.cc_bottom _i.pipeline_interface._chan.release_line_buf.function
	.set	_i.pipeline_interface._chan.release_line_buf.nstackwords,((($D __interface_wait_and_yield.nstackwords ? __interface_wait_and_yield.nstackwords $: _i.pipeline_interface._client_call.max.nstackwords) $M _i.pipeline_interface._client_call.max.nstackwords $M ($D __interface_client_call.nstackwords ? __interface_client_call.nstackwords $: _i.pipeline_interface._client_call.max.nstackwords)) + 4)
	.globl	_i.pipeline_interface._chan.release_line_buf.nstackwords
	.weak	_i.pipeline_interface._chan.release_line_buf.nstackwords
	.set	_i.pipeline_interface._chan.release_line_buf.maxcores,($D __interface_client_call.maxcores ? __interface_client_call.maxcores $: _i.pipeline_interface._client_call.max.maxcores) $M ($D __interface_wait_and_yield.maxcores ? __interface_wait_and_yield.maxcores $: _i.pipeline_interface._client_call.max.maxcores) $M 1
	.globl	_i.pipeline_interface._chan.release_line_buf.maxcores
	.weak	_i.pipeline_interface._chan.release_line_buf.maxcores
	.set	_i.pipeline_interface._chan.release_line_buf.maxtimers,($D __interface_client_call.maxtimers ? __interface_client_call.maxtimers $: _i.pipeline_interface._client_call.max.maxtimers) $M ($D __interface_wait_and_yield.maxtimers ? __interface_wait_and_yield.maxtimers $: _i.pipeline_interface._client_call.max.maxtimers) $M 0
	.globl	_i.pipeline_interface._chan.release_line_buf.maxtimers
	.weak	_i.pipeline_interface._chan.release_line_buf.maxtimers
	.set	_i.pipeline_interface._chan.release_line_buf.maxchanends,(1 + ($D __interface_client_call.maxchanends ? __interface_client_call.maxchanends $: _i.pipeline_interface._client_call.max.maxchanends)) $M (1 + ($D __interface_wait_and_yield.maxchanends ? __interface_wait_and_yield.maxchanends $: _i.pipeline_interface._client_call.max.maxchanends)) $M 1
	.globl	_i.pipeline_interface._chan.release_line_buf.maxchanends
	.weak	_i.pipeline_interface._chan.release_line_buf.maxchanends
	.section	.text._i.pipeline_interface._chan.get_new_line,"ax",@progbits
	.cc_top _i.pipeline_interface._chan.get_new_line.function
	.weak	_i.pipeline_interface._chan.get_new_line
	.align	4
	.type	_i.pipeline_interface._chan.get_new_line,@function
_i.pipeline_interface._chan.get_new_line:
.Ltmp61:
	.cfi_startproc
.Lfunc_begin3:
	.loc	2 0 0
	entsp 6
.Ltmp62:
	.cfi_def_cfa_offset 24
.Ltmp63:
	.cfi_offset 15, 0
	.loc	2 0 0 prologue_end
.Ltmp64:
	stw r4, sp[5]
.Ltmp65:
	.cfi_offset 4, -4
	stw r5, sp[4]
.Ltmp66:
	.cfi_offset 5, -8
	stw r6, sp[3]
.Ltmp67:
	.cfi_offset 6, -12
	stw r7, sp[2]
.Ltmp68:
	.cfi_offset 7, -16
	stw r8, sp[1]
.Ltmp69:
	.cfi_offset 8, -20
	mov r5, r3
	mov r7, r2
	mov r8, r1
.Ltmp70:
	ldw r1, r0[0]
	getr r4, 2
	setd res[r4], r1
	out res[r4], r4
	outct res[r4], 2
	ldw r6, r0[1]
	mov r0, r4
.Ltmp71:
	mov r1, r6
	bl __interface_wait_and_yield
	chkct res[r4], 1
	#APP
	#NO_APP
	out res[r4], r8
	#APP
	#NO_APP
	out res[r4], r7
	out res[r4], r5
	ldw r0, sp[7]
	out res[r4], r0
	outct res[r4], 2
	ldc r1, 0
	mov r0, r4
	mov r2, r6
	bl __interface_client_call
	in r0, res[r4]
	chkct res[r4], 1
	freer res[r4]
	ldw r8, sp[1]
.Ltmp72:
	ldw r7, sp[2]
	ldw r6, sp[3]
	ldw r5, sp[4]
	ldw r4, sp[5]
	retsp 6
.Ltmp73:
.Ltmp74:
	.size	_i.pipeline_interface._chan.get_new_line, .Ltmp74-_i.pipeline_interface._chan.get_new_line
.Lfunc_end3:
.Ltmp75:
	.cfi_endproc
.Leh_func_end3:

	.align	4
	.cc_bottom _i.pipeline_interface._chan.get_new_line.function
	.set	_i.pipeline_interface._chan.get_new_line.nstackwords,((($D __interface_wait_and_yield.nstackwords ? __interface_wait_and_yield.nstackwords $: _i.pipeline_interface._client_call.max.nstackwords) $M _i.pipeline_interface._client_call.max.nstackwords $M ($D __interface_client_call.nstackwords ? __interface_client_call.nstackwords $: _i.pipeline_interface._client_call.max.nstackwords)) + 6)
	.globl	_i.pipeline_interface._chan.get_new_line.nstackwords
	.weak	_i.pipeline_interface._chan.get_new_line.nstackwords
	.set	_i.pipeline_interface._chan.get_new_line.maxcores,($D __interface_client_call.maxcores ? __interface_client_call.maxcores $: _i.pipeline_interface._client_call.max.maxcores) $M ($D __interface_wait_and_yield.maxcores ? __interface_wait_and_yield.maxcores $: _i.pipeline_interface._client_call.max.maxcores) $M 1
	.globl	_i.pipeline_interface._chan.get_new_line.maxcores
	.weak	_i.pipeline_interface._chan.get_new_line.maxcores
	.set	_i.pipeline_interface._chan.get_new_line.maxtimers,($D __interface_client_call.maxtimers ? __interface_client_call.maxtimers $: _i.pipeline_interface._client_call.max.maxtimers) $M ($D __interface_wait_and_yield.maxtimers ? __interface_wait_and_yield.maxtimers $: _i.pipeline_interface._client_call.max.maxtimers) $M 0
	.globl	_i.pipeline_interface._chan.get_new_line.maxtimers
	.weak	_i.pipeline_interface._chan.get_new_line.maxtimers
	.set	_i.pipeline_interface._chan.get_new_line.maxchanends,(1 + ($D __interface_client_call.maxchanends ? __interface_client_call.maxchanends $: _i.pipeline_interface._client_call.max.maxchanends)) $M (1 + ($D __interface_wait_and_yield.maxchanends ? __interface_wait_and_yield.maxchanends $: _i.pipeline_interface._client_call.max.maxchanends)) $M 1
	.globl	_i.pipeline_interface._chan.get_new_line.maxchanends
	.weak	_i.pipeline_interface._chan.get_new_line.maxchanends
	.text
	.cc_top mgmt_intrf.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI4_0.data
	.align	4
.LCPI4_0:
	.long	1000000000
	.cc_bottom .LCPI4_0.data
	.text
	.globl	mgmt_intrf
	.align	4
	.type	mgmt_intrf,@function
mgmt_intrf:
.Ltmp84:
	.cfi_startproc
.Lfunc_begin4:
	.loc	1 20 0
.Lxtalabel0:
	entsp 10
.Ltmp85:
	.cfi_def_cfa_offset 40
.Ltmp86:
	.cfi_offset 15, 0
	.loc	1 20 0 prologue_end
.Ltmp87:
	stw r4, sp[9]
.Ltmp88:
	.cfi_offset 4, -4
	stw r5, sp[8]
.Ltmp89:
	.cfi_offset 5, -8
	stw r6, sp[7]
.Ltmp90:
	.cfi_offset 6, -12
	stw r7, sp[6]
.Ltmp91:
	.cfi_offset 7, -16
	stw r8, sp[5]
.Ltmp92:
	.cfi_offset 8, -20
	stw r9, sp[4]
.Ltmp93:
	.cfi_offset 9, -24
	stw r10, sp[3]
.Ltmp94:
	.cfi_offset 10, -28
	mov r4, r0
.Ltmp95:
	.loc	1 29 0
	ldaw r0, dp[__timers]
	get r11, id
	ldw r7, r0[r11]
	setc res[r7], 1
	.loc	1 29 0
.Lxta.endpoint_labels0:
	in r0, res[r7]
.Ltmp96:
	ldc r1, 49
	ldc r9, 0
	mkmsk r8, 1
	mov r6, r9
	stw r1, sp[1]
	mov r10, r1
.Ltmp97:
.LBB4_1:
	ldc r1, 25000
	.loc	1 32 0
	add r5, r0, r1
	bu .LBB4_2
.LBB4_11:
.Lxtalabel1:
	.loc	1 53 0
	ldaw r0, dp[.str1]
	ldc r1, 39
.Lxta.call_labels0:
	bl printstrln
	.loc	1 54 0
	stw r8, sp[2]
.Ltmp98:
	.loc	1 55 0
	ldw r0, r4[0]
	ldw r1, r4[3]
	ldw r3, r1[0]
	ldc r1, 4
	ldaw r2, sp[2]
	.loc	1 55 0
.Lxta.call_labels1:
	bla r3
	ldc r6, 0
.Ltmp99:
	ldc r10, 50
.LBB4_2:
.Lxtalabel2:
	.loc	1 32 0
	clre
	mov r0, r6
	zext r0, 8
	bt r0, .LBB4_4
	setd res[r7], r5
	setc res[r7], 9
	ldap r11, .Ltmp100
	setv res[r7], r11
	eeu res[r7]
.LBB4_4:
	ldw r1, r4[1]
	ldap r11, .Ltmp101
	setv res[r1], r11
	eeu res[r1]
	.loc	1 79 0
	setsr 1
	clrsr 1
	bu .Ltmp102
.LBB4_5:
.Lxtalabel3:
	.loc	1 49 0
	ldw r0, sp[1]
	zext r0, 8
	ldc r1, 49
	eq r1, r0, r1
	bt r1, .LBB4_11
.Lxtalabel4:
	ldc r1, 50
	eq r1, r0, r1
	bt r1, .LBB4_12
.Lxtalabel5:
	mkmsk r6, 1
	ldc r1, 51
	eq r0, r0, r1
	bf r0, .LBB4_2
.Lxtalabel6:
.Ltmp103:
	ldc r6, 0
	ldw r0, cp[.LCPI4_0]
	.loc	3 47 0
.Ltmp104:
	mov r1, r6
.Lxta.call_labels2:
	bl delay_ticks_longlong
.Ltmp105:
	.loc	1 69 0
	ldaw r0, dp[.str3]
	ldc r1, 43
.Lxta.call_labels3:
	bl printstrln
	.loc	1 70 0
	ldw r0, r4[0]
	ldw r1, r4[3]
	ldw r3, r1[0]
	ldc r1, 6
	.loc	1 70 0
	mov r2, r6
.Lxta.call_labels4:
	bla r3
	ldc r10, 48
.Ltmp106:
	bu .LBB4_2
.Ltmp101:
.LBB4_9:
.Lxtalabel7:
	.loc	1 37 0
	chkct res[r1], 1
	stw r8, r4[2]
	.loc	1 38 0
.Ltmp107:
	ldw r0, r4[0]
	ldw r1, r4[3]
	ldw r2, r1[1]
	.loc	1 38 0
	mov r1, r8
.Lxta.call_labels5:
	bla r2
.Ltmp108:
	.loc	1 39 0
	eq r0, r0, 1
.Ltmp109:
	.loc	1 38 0
	ldw r1, r4[1]
	chkct res[r1], 1
	stw r9, r4[2]
	.loc	1 39 0
	bf r0, .LBB4_2
.Lxtalabel8:
	.loc	1 40 0
	ldaw r0, dp[.str]
	ldc r1, 49
.Lxta.call_labels6:
	bl printstrln
	stw r10, sp[1]
	bu .LBB4_2
.Ltmp110:
.LBB4_12:
.Lxtalabel9:
	.loc	1 61 0
	ldaw r0, dp[.str2]
	ldc r1, 44
.Lxta.call_labels7:
	bl printstrln
	.loc	1 62 0
	ldw r0, r4[0]
	ldw r1, r4[3]
	ldw r3, r1[0]
	ldc r6, 0
	ldc r1, 5
	.loc	1 62 0
	mov r2, r6
.Lxta.call_labels8:
	bla r3
.Ltmp111:
	ldc r10, 51
	bu .LBB4_2
.Ltmp102:
.LBB4_13:
	.loc	1 79 0
	bt r0, .LBB4_5
	
	.xtabranch .LBB4_15, .LBB4_9
waiteu
.Ltmp100:
.LBB4_15:
.Lxtalabel10:
.Ltmp112:
	.loc	1 33 0
.Lxta.endpoint_labels1:
	in r0, res[r7]
.Ltmp113:
	mov r6, r8
	bu .LBB4_1
.Ltmp114:
.Ltmp115:
	.size	mgmt_intrf, .Ltmp115-mgmt_intrf
.Lfunc_end4:
.Ltmp116:
	.cfi_endproc
.Leh_func_end4:

	.align	4
	.cc_bottom mgmt_intrf.function
	.set	mgmt_intrf.nstackwords,((_i.mgmt_interface.get_response.max.nstackwords $M delay_ticks_longlong.nstackwords $M printstrln.nstackwords $M _i.mgmt_interface.apm_mgmt.max.nstackwords) + 10)
	.globl	mgmt_intrf.nstackwords
	.set	mgmt_intrf.maxcores,_i.mgmt_interface.apm_mgmt.max.maxcores $M _i.mgmt_interface.get_response.max.maxcores $M delay_ticks_longlong.maxcores $M printstrln.maxcores $M 1
	.globl	mgmt_intrf.maxcores
	.set	mgmt_intrf.maxtimers,_i.mgmt_interface.apm_mgmt.max.maxtimers $M _i.mgmt_interface.get_response.max.maxtimers $M delay_ticks_longlong.maxtimers $M printstrln.maxtimers $M 0
	.globl	mgmt_intrf.maxtimers
	.set	mgmt_intrf.maxchanends,_i.mgmt_interface.apm_mgmt.max.maxchanends $M _i.mgmt_interface.get_response.max.maxchanends $M delay_ticks_longlong.maxchanends $M printstrln.maxchanends $M 0
	.globl	mgmt_intrf.maxchanends
	.cc_top __main__main_tile_1.function
	.globl	__main__main_tile_1
	.align	4
	.type	__main__main_tile_1,@function
__main__main_tile_1:
.Ltmp118:
	.cfi_startproc
	entsp 43
.Ltmp119:
	.cfi_def_cfa_offset 172
.Ltmp120:
	.cfi_offset 15, 0
	getr r1, 2
	getr r2, 2
	setd res[r2], r1
	setd res[r1], r2
	stw r1, sp[16]
	ldc r0, 0
	stw r0, sp[17]
	ldaw r3, sp[16]
	stw r3, sp[18]
	stw r2, sp[19]
	stw r0, sp[20]
	ldaw r3, dp[.vtable]
	stw r3, sp[21]
	stw r1, sp[11]
	stw r2, sp[14]
	stw r1, sp[13]
	mkmsk r1, 1
	stw r1, sp[15]
	getr r1, 2
	stw r1, sp[7]
	stw r0, sp[8]
	ldaw r2, sp[7]
	stw r2, sp[9]
	ldaw r2, dp[.vtable4]
	stw r2, sp[10]
	stw r1, sp[6]
	getr r1, 2
	stw r1, sp[2]
	stw r0, sp[3]
	ldaw r0, sp[2]
	stw r0, sp[4]
	ldaw r0, dp[.vtable5]
	stw r0, sp[5]
	stw r1, sp[1]
	ldaw r0, sp[11]
	stw r0, sp[32]
	ldaw r0, sp[18]
	stw r0, sp[33]
	ldaw r0, sp[6]
	stw r0, sp[27]
	ldaw r0, sp[9]
	stw r0, sp[28]
	ldaw r0, sp[1]
	stw r0, sp[22]
	ldaw r0, sp[4]
	stw r0, sp[23]
	ldaw r0, sp[22]
	ldaw r1, dp[par.desc.1]
	bl __start_other_cores
.Ltmp121:
	.size	__main__main_tile_1, .Ltmp121-__main__main_tile_1
.Ltmp122:
	.cfi_endproc
.Leh_func_end5:

	.align	4
	.cc_bottom __main__main_tile_1.function
	.set	__main__main_tile_1.nstackwords,((par.extra_stackwords + 1 + __main__main_tile_1_task_mgmt_intrf_0.nstackwords + 1 + __main__main_tile_1_task_bayer_testbench_downstream_1.nstackwords + 1 + __main__main_tile_1_task_bayer_interpolation_2.nstackwords + 1 + __main__main_tile_1_task_bayer_testbench_upstream_3.nstackwords) + 43)
	.globl	__main__main_tile_1.nstackwords
	.set	__main__main_tile_1.maxcores,(0 + __main__main_tile_1_task_mgmt_intrf_0.maxcores + __main__main_tile_1_task_bayer_testbench_downstream_1.maxcores + __main__main_tile_1_task_bayer_interpolation_2.maxcores + __main__main_tile_1_task_bayer_testbench_upstream_3.maxcores) $M 1
	.globl	__main__main_tile_1.maxcores
	.set	__main__main_tile_1.maxtimers,(3 + __main__main_tile_1_task_mgmt_intrf_0.maxtimers + __main__main_tile_1_task_bayer_testbench_downstream_1.maxtimers + __main__main_tile_1_task_bayer_interpolation_2.maxtimers + __main__main_tile_1_task_bayer_testbench_upstream_3.maxtimers) $M 0
	.globl	__main__main_tile_1.maxtimers
	.set	__main__main_tile_1.maxchanends,(4 + (0 + __main__main_tile_1_task_mgmt_intrf_0.maxchanends + __main__main_tile_1_task_bayer_testbench_downstream_1.maxchanends + __main__main_tile_1_task_bayer_interpolation_2.maxchanends + __main__main_tile_1_task_bayer_testbench_upstream_3.maxchanends)) $M 4
	.globl	__main__main_tile_1.maxchanends
	.cc_top __main__main_tile_1_task_mgmt_intrf_0.function
	.align	4
	.type	__main__main_tile_1_task_mgmt_intrf_0,@function
__main__main_tile_1_task_mgmt_intrf_0:
.Ltmp124:
	.cfi_startproc
.Lfunc_begin6:
	.loc	1 91 0
	entsp 1
.Ltmp125:
	.cfi_def_cfa_offset 4
.Ltmp126:
	.cfi_offset 15, 0
	.loc	1 91 0 prologue_end
.Ltmp127:
	ldw r0, r0[11]
.Ltmp128:
	.loc	1 91 0
.Lxta.call_labels9:
	bl mgmt_intrf
.Ltmp129:
.Ltmp130:
	.size	__main__main_tile_1_task_mgmt_intrf_0, .Ltmp130-__main__main_tile_1_task_mgmt_intrf_0
.Lfunc_end6:
.Ltmp131:
	.cfi_endproc
.Leh_func_end6:

	.align	4
	.cc_bottom __main__main_tile_1_task_mgmt_intrf_0.function
	.set	__main__main_tile_1_task_mgmt_intrf_0.nstackwords,(mgmt_intrf.nstackwords + 1)
	.set	__main__main_tile_1_task_mgmt_intrf_0.maxcores,mgmt_intrf.maxcores $M 1
	.set	__main__main_tile_1_task_mgmt_intrf_0.maxtimers,mgmt_intrf.maxtimers $M 0
	.set	__main__main_tile_1_task_mgmt_intrf_0.maxchanends,mgmt_intrf.maxchanends $M 0
	.cc_top __main__main_tile_1_task_bayer_testbench_downstream_1.function
	.align	4
	.type	__main__main_tile_1_task_bayer_testbench_downstream_1,@function
__main__main_tile_1_task_bayer_testbench_downstream_1:
.Ltmp133:
	.cfi_startproc
.Lfunc_begin7:
	.loc	1 92 0
	entsp 1
.Ltmp134:
	.cfi_def_cfa_offset 4
.Ltmp135:
	.cfi_offset 15, 0
	.loc	1 92 0 prologue_end
.Ltmp136:
	ldw r0, r0[5]
.Ltmp137:
	.loc	1 92 0
.Lxta.call_labels10:
	bl bayer_testbench_downstream
	retsp 1
.Ltmp138:
.Ltmp139:
	.size	__main__main_tile_1_task_bayer_testbench_downstream_1, .Ltmp139-__main__main_tile_1_task_bayer_testbench_downstream_1
.Lfunc_end7:
.Ltmp140:
	.cfi_endproc
.Leh_func_end7:

	.align	4
	.cc_bottom __main__main_tile_1_task_bayer_testbench_downstream_1.function
	.set	__main__main_tile_1_task_bayer_testbench_downstream_1.nstackwords,(bayer_testbench_downstream.nstackwords + 1)
	.set	__main__main_tile_1_task_bayer_testbench_downstream_1.maxcores,bayer_testbench_downstream.maxcores $M 1
	.set	__main__main_tile_1_task_bayer_testbench_downstream_1.maxtimers,bayer_testbench_downstream.maxtimers $M 0
	.set	__main__main_tile_1_task_bayer_testbench_downstream_1.maxchanends,bayer_testbench_downstream.maxchanends $M 0
	.cc_top __main__main_tile_1_task_bayer_interpolation_2.function
	.align	4
	.type	__main__main_tile_1_task_bayer_interpolation_2,@function
__main__main_tile_1_task_bayer_interpolation_2:
.Ltmp142:
	.cfi_startproc
.Lfunc_begin8:
	.loc	1 93 0
	entsp 1
.Ltmp143:
	.cfi_def_cfa_offset 4
.Ltmp144:
	.cfi_offset 15, 0
	.loc	1 93 0 prologue_end
.Ltmp145:
	ldw r2, r0[0]
	ldw r1, r0[6]
	ldw r0, r0[10]
.Ltmp146:
	.loc	1 93 0
.Lxta.call_labels11:
	bl bayer_interpolation
	retsp 1
.Ltmp147:
.Ltmp148:
	.size	__main__main_tile_1_task_bayer_interpolation_2, .Ltmp148-__main__main_tile_1_task_bayer_interpolation_2
.Lfunc_end8:
.Ltmp149:
	.cfi_endproc
.Leh_func_end8:

	.align	4
	.cc_bottom __main__main_tile_1_task_bayer_interpolation_2.function
	.set	__main__main_tile_1_task_bayer_interpolation_2.nstackwords,(bayer_interpolation.nstackwords + 1)
	.set	__main__main_tile_1_task_bayer_interpolation_2.maxcores,bayer_interpolation.maxcores $M 1
	.set	__main__main_tile_1_task_bayer_interpolation_2.maxtimers,bayer_interpolation.maxtimers $M 0
	.set	__main__main_tile_1_task_bayer_interpolation_2.maxchanends,bayer_interpolation.maxchanends $M 0
	.cc_top __main__main_tile_1_task_bayer_testbench_upstream_3.function
	.align	4
	.type	__main__main_tile_1_task_bayer_testbench_upstream_3,@function
__main__main_tile_1_task_bayer_testbench_upstream_3:
.Ltmp151:
	.cfi_startproc
.Lfunc_begin9:
	.loc	1 94 0
	entsp 1
.Ltmp152:
	.cfi_def_cfa_offset 4
.Ltmp153:
	.cfi_offset 15, 0
	.loc	1 94 0 prologue_end
.Ltmp154:
	ldw r0, r0[1]
.Ltmp155:
	.loc	1 94 0
.Lxta.call_labels12:
	bl bayer_testbench_upstream
	retsp 1
.Ltmp156:
.Ltmp157:
	.size	__main__main_tile_1_task_bayer_testbench_upstream_3, .Ltmp157-__main__main_tile_1_task_bayer_testbench_upstream_3
.Lfunc_end9:
.Ltmp158:
	.cfi_endproc
.Leh_func_end9:

	.align	4
	.cc_bottom __main__main_tile_1_task_bayer_testbench_upstream_3.function
	.set	__main__main_tile_1_task_bayer_testbench_upstream_3.nstackwords,(bayer_testbench_upstream.nstackwords + 1)
	.set	__main__main_tile_1_task_bayer_testbench_upstream_3.maxcores,bayer_testbench_upstream.maxcores $M 1
	.set	__main__main_tile_1_task_bayer_testbench_upstream_3.maxtimers,bayer_testbench_upstream.maxtimers $M 0
	.set	__main__main_tile_1_task_bayer_testbench_upstream_3.maxchanends,bayer_testbench_upstream.maxchanends $M 0
	.section	.dp.rodata,"awd",@progbits
	.cc_top .str.data
	.align	4
	.type	.str,@object
	.size .str,49
.str:
.asciiz "mgmt_if: received APM_MGMT_SUCCESS from bayer_if"
	.cc_bottom .str.data
	.cc_top .str1.data
	.align	4
	.type	.str1,@object
	.size .str1,39
.str1:
.asciiz "mgmt_if:Sending bayer mode to bayer_if"
	.cc_bottom .str1.data
	.cc_top .str2.data
	.align	4
	.type	.str2,@object
	.size .str2,44
.str2:
.asciiz "mgmt_if:Sending start operation to bayer_if"
	.cc_bottom .str2.data
	.cc_top .str3.data
	.align	4
	.type	.str3,@object
	.size .str3,43
.str3:
.asciiz "mgmt_if:Sending stop operation to bayer_if"
	.cc_bottom .str3.data
	.cc_top .vtable.data
	.align	4
	.type	.vtable,@object
	.size .vtable,20
.vtable:
	.long	_i.mgmt_interface._chan.apm_mgmt
	.long	_i.mgmt_interface._chan.get_response
	.long	__interface_client_push_yield
	.long	__interface_client_pop_yield
	.long	__noop
	.cc_bottom .vtable.data
	.cc_top .vtable4.data
	.align	4
	.type	.vtable4,@object
	.size .vtable4,20
.vtable4:
	.long	_i.pipeline_interface._chan.get_new_line
	.long	_i.pipeline_interface._chan.release_line_buf
	.long	__interface_client_push_yield
	.long	__interface_client_pop_yield
	.long	__noop
	.cc_bottom .vtable4.data
	.cc_top .vtable5.data
	.align	4
	.type	.vtable5,@object
	.size .vtable5,20
.vtable5:
	.long	_i.pipeline_interface._chan.get_new_line
	.long	_i.pipeline_interface._chan.release_line_buf
	.long	__interface_client_push_yield
	.long	__interface_client_pop_yield
	.long	__noop
	.cc_bottom .vtable5.data
	.section	.dp.data,"awd",@progbits
	.cc_top par.desc.1.data
	.align	4
	.type	par.desc.1,@object
	.size par.desc.1,32
par.desc.1:
	.long	__main__main_tile_1_task_bayer_testbench_downstream_1
	.long	__main__main_tile_1_task_bayer_testbench_upstream_3.nstackwords
	.long	__main__main_tile_1_task_bayer_interpolation_2
	.long	__main__main_tile_1_task_bayer_testbench_downstream_1.nstackwords
	.long	__main__main_tile_1_task_mgmt_intrf_0
	.long	__main__main_tile_1_task_bayer_interpolation_2.nstackwords
	.long	0
	.long	__main__main_tile_1_task_bayer_testbench_upstream_3
	.cc_bottom par.desc.1.data
	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	2833
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Enterprise_13.1.0 (build 11949, Apr-08-2014)"
	.byte	0
	.short	49152
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	0
	.long	.Lsection_line
	.ascii	 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug"
	.byte	0
	.byte	1
	.byte	2
	.ascii	 "_i.mgmt_interface._chan.get_response"
	.byte	0
	.ascii	 "_i.mgmt_interface._chan.get_response"
	.byte	0
	.byte	2
	.long	4294967295
	.long	324
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "last_notification_input"
	.byte	0
	.byte	2
	.long	16777215
	.long	903
	.long	.Ldebug_loc2+0
	.byte	0
	.byte	4
	.ascii	 "__TYPE_5"
	.byte	0
	.byte	4
	.byte	5
	.ascii	 "APM_MGMT_FAILURE"
	.byte	0
	.byte	0
	.byte	5
	.ascii	 "APM_MGMT_SUCCESS"
	.byte	0
	.byte	1
	.byte	0
	.byte	6
	.ascii	 "_i.mgmt_interface._chan.apm_mgmt"
	.byte	0
	.ascii	 "_i.mgmt_interface._chan.apm_mgmt"
	.byte	0
	.byte	2
	.long	4294967295
	.byte	1
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	7
	.ascii	 "__TYPE_4"
	.byte	0
	.byte	4
	.byte	2
	.long	4294967295
	.byte	5
	.ascii	 "NOT_USED_COMMAND"
	.byte	0
	.byte	0
	.byte	5
	.ascii	 "SET_SCREEN_RESOLUTION"
	.byte	0
	.byte	1
	.byte	5
	.ascii	 "SET_COLOR_MODE"
	.byte	0
	.byte	2
	.byte	5
	.ascii	 "SET_REGION_OF_INTEREST"
	.byte	0
	.byte	3
	.byte	5
	.ascii	 "BAYER_MODE"
	.byte	0
	.byte	4
	.byte	5
	.ascii	 "START_OPERATION"
	.byte	0
	.byte	5
	.byte	5
	.ascii	 "STOP_OPERATION"
	.byte	0
	.byte	6
	.byte	0
	.byte	3
	.ascii	 "param2"
	.byte	0
	.byte	2
	.long	16777215
	.long	2215
	.long	.Ldebug_loc10+0
	.byte	0
	.byte	6
	.ascii	 "_i.pipeline_interface._chan.release_line_buf"
	.byte	0
	.ascii	 "_i.pipeline_interface._chan.release_line_buf"
	.byte	0
	.byte	2
	.long	4294967295
	.byte	1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "param1"
	.byte	0
	.byte	2
	.long	16777215
	.long	2223
	.long	.Ldebug_loc15+0
	.byte	0
	.byte	2
	.ascii	 "_i.pipeline_interface._chan.get_new_line"
	.byte	0
	.ascii	 "_i.pipeline_interface._chan.get_new_line"
	.byte	0
	.byte	2
	.long	4294967295
	.long	903
	.byte	1
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "param1"
	.byte	0
	.byte	2
	.long	16777215
	.long	2223
	.long	.Ldebug_loc20+0
	.byte	8
	.ascii	 "param2"
	.byte	0
	.byte	2
	.long	16777215
	.long	2299
	.byte	0
	.byte	9
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	10
	.ascii	 "delay_seconds"
	.byte	0
	.ascii	 "delay_seconds"
	.byte	0
	.byte	3
	.byte	46
	.byte	1
	.byte	11
	.ascii	 "delay"
	.byte	0
	.byte	3
	.byte	46
	.long	903
	.byte	0
	.byte	10
	.ascii	 "delay_milliseconds"
	.byte	0
	.ascii	 "delay_milliseconds"
	.byte	0
	.byte	3
	.byte	54
	.byte	1
	.byte	11
	.ascii	 "delay"
	.byte	0
	.byte	3
	.byte	54
	.long	903
	.byte	0
	.byte	10
	.ascii	 "delay_microseconds"
	.byte	0
	.ascii	 "delay_microseconds"
	.byte	0
	.byte	3
	.byte	62
	.byte	1
	.byte	11
	.ascii	 "delay"
	.byte	0
	.byte	3
	.byte	62
	.long	903
	.byte	0
	.byte	12
	.ascii	 "mgmt_intrf"
	.byte	0
	.ascii	 "mgmt_intrf"
	.byte	0
	.byte	1
	.byte	20
	.byte	1
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.byte	1
	.byte	94
	.byte	1
	.byte	13
	.ascii	 "mgr_bayer"
	.byte	0
	.byte	1
	.byte	20
	.long	2305
	.long	.Ldebug_loc23+0
	.byte	14
	.long	.Ltmp95
	.long	.Ltmp114
	.byte	14
	.long	.Ltmp95
	.long	.Ltmp114
	.byte	15
	.ascii	 "mgmt_timer"
	.byte	0
	.byte	1
	.byte	22
	.long	2318
	.byte	14
	.long	.Ltmp95
	.long	.Ltmp114
	.byte	16
	.ascii	 "mgmt_timer_tick"
	.byte	0
	.byte	1
	.byte	23
	.long	903
	.long	.Ldebug_loc32+0
	.byte	14
	.long	.Ltmp95
	.long	.Ltmp114
	.byte	15
	.ascii	 "issue_cmd_flag"
	.byte	0
	.byte	1
	.byte	24
	.long	2327
	.byte	14
	.long	.Ltmp95
	.long	.Ltmp114
	.byte	17
	.ascii	 "cmd_to_issue"
	.byte	0
	.byte	1
	.byte	25
	.long	2327
	.byte	1
	.byte	49
	.byte	14
	.long	.Ltmp95
	.long	.Ltmp114
	.byte	16
	.ascii	 "next_cmd_to_issue"
	.byte	0
	.byte	1
	.byte	26
	.long	2327
	.long	.Ldebug_loc27+0
	.byte	14
	.long	.Ltmp95
	.long	.Ltmp114
	.byte	18
	.ascii	 "mgmt_bayer_mode_l"
	.byte	0
	.byte	1
	.byte	27
	.long	2096
	.byte	2
	.byte	145
	.byte	8
	.byte	14
	.long	.Ltmp107
	.long	.Ltmp110
	.byte	16
	.ascii	 "response"
	.byte	0
	.byte	1
	.byte	38
	.long	2163
	.long	.Ldebug_loc35+0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	19
	.ascii	 "__main__main_tile_1_task_mgmt_intrf_0"
	.byte	0
	.ascii	 "__main__main_tile_1_task_mgmt_intrf_0"
	.byte	0
	.byte	1
	.byte	91
	.long	.Lfunc_begin6
	.long	.Lfunc_end6
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	2830
	.long	.Ldebug_loc37+0
	.byte	0
	.byte	19
	.ascii	 "__main__main_tile_1_task_bayer_testbench_downstream_1"
	.byte	0
	.ascii	 "__main__main_tile_1_task_bayer_testbench_downstream_1"
	.byte	0
	.byte	1
	.byte	92
	.long	.Lfunc_begin7
	.long	.Lfunc_end7
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	2830
	.long	.Ldebug_loc39+0
	.byte	0
	.byte	19
	.ascii	 "__main__main_tile_1_task_bayer_interpolation_2"
	.byte	0
	.ascii	 "__main__main_tile_1_task_bayer_interpolation_2"
	.byte	0
	.byte	1
	.byte	93
	.long	.Lfunc_begin8
	.long	.Lfunc_end8
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	2830
	.long	.Ldebug_loc41+0
	.byte	0
	.byte	19
	.ascii	 "__main__main_tile_1_task_bayer_testbench_upstream_3"
	.byte	0
	.ascii	 "__main__main_tile_1_task_bayer_testbench_upstream_3"
	.byte	0
	.byte	1
	.byte	94
	.long	.Lfunc_begin9
	.long	.Lfunc_end9
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	2830
	.long	.Ldebug_loc43+0
	.byte	0
	.byte	20
	.ascii	 "__main__main_tile_1"
	.byte	0
	.ascii	 "__main__main_tile_1"
	.byte	0
	.byte	2
	.long	4294967295
	.byte	1
	.byte	4
	.ascii	 "__TYPE_4"
	.byte	0
	.byte	4
	.byte	5
	.ascii	 "NOT_USED_COMMAND"
	.byte	0
	.byte	0
	.byte	5
	.ascii	 "SET_SCREEN_RESOLUTION"
	.byte	0
	.byte	1
	.byte	5
	.ascii	 "SET_COLOR_MODE"
	.byte	0
	.byte	2
	.byte	5
	.ascii	 "SET_REGION_OF_INTEREST"
	.byte	0
	.byte	3
	.byte	5
	.ascii	 "BAYER_MODE"
	.byte	0
	.byte	4
	.byte	5
	.ascii	 "START_OPERATION"
	.byte	0
	.byte	5
	.byte	5
	.ascii	 "STOP_OPERATION"
	.byte	0
	.byte	6
	.byte	0
	.byte	21
	.ascii	 "__TYPE_9"
	.byte	0
	.byte	4
	.byte	1
	.byte	27
	.byte	5
	.ascii	 "NOT_USED_MODE"
	.byte	0
	.byte	0
	.byte	5
	.ascii	 "PIXEL_DOUBLE"
	.byte	0
	.byte	1
	.byte	5
	.ascii	 "BILINEAR"
	.byte	0
	.byte	2
	.byte	5
	.ascii	 "GRADIENT"
	.byte	0
	.byte	3
	.byte	0
	.byte	21
	.ascii	 "__TYPE_5"
	.byte	0
	.byte	4
	.byte	1
	.byte	38
	.byte	5
	.ascii	 "APM_MGMT_FAILURE"
	.byte	0
	.byte	0
	.byte	5
	.ascii	 "APM_MGMT_SUCCESS"
	.byte	0
	.byte	1
	.byte	0
	.byte	22
	.byte	4
	.byte	23
	.long	903
	.byte	12
	.byte	24
	.long	2217
	.byte	9
	.ascii	 "unsigned short"
	.byte	0
	.byte	7
	.byte	2
	.byte	25
	.ascii	 "__TYPE_8"
	.byte	0
	.byte	4
	.byte	26
	.ascii	 "height"
	.byte	0
	.long	2228
	.byte	2
	.long	4294967295
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	26
	.ascii	 "width"
	.byte	0
	.long	2228
	.byte	2
	.long	4294967295
	.byte	2
	.byte	35
	.byte	2
	.byte	1
	.byte	0
	.byte	23
	.long	2246
	.byte	12
	.byte	9
	.ascii	 "interface"
	.byte	0
	.byte	7
	.byte	4
	.byte	9
	.ascii	 "timer"
	.byte	0
	.byte	7
	.byte	4
	.byte	9
	.ascii	 "unsigned char"
	.byte	0
	.byte	8
	.byte	1
	.byte	27
	.byte	4
	.byte	5
	.byte	28
	.long	2305
	.byte	29
	.long	2344
	.byte	1
	.byte	0
	.byte	28
	.long	903
	.byte	29
	.long	2344
	.byte	0
	.byte	0
	.byte	28
	.long	903
	.byte	29
	.long	2344
	.byte	1
	.byte	0
	.byte	25
	.ascii	 "__TYPE_11"
	.byte	0
	.byte	12
	.byte	30
	.ascii	 "server_state"
	.byte	0
	.long	2359
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	30
	.ascii	 "client_state"
	.byte	0
	.long	2371
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	0
	.byte	25
	.ascii	 "__TYPE_10"
	.byte	0
	.byte	20
	.byte	30
	.byte	120
	.byte	0
	.long	2347
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	30
	.ascii	 "state.0"
	.byte	0
	.long	2383
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	0
	.byte	25
	.ascii	 "__TYPE_13"
	.byte	0
	.byte	12
	.byte	30
	.ascii	 "server_state"
	.byte	0
	.long	2359
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	30
	.ascii	 "client_state"
	.byte	0
	.long	2371
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	0
	.byte	25
	.ascii	 "__TYPE_12"
	.byte	0
	.byte	20
	.byte	30
	.byte	120
	.byte	0
	.long	2347
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	30
	.ascii	 "state.0"
	.byte	0
	.long	2489
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	0
	.byte	28
	.long	903
	.byte	29
	.long	2344
	.byte	4
	.byte	0
	.byte	28
	.long	903
	.byte	29
	.long	2344
	.byte	3
	.byte	0
	.byte	25
	.ascii	 "__TYPE_15"
	.byte	0
	.byte	36
	.byte	30
	.ascii	 "server_state"
	.byte	0
	.long	2595
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	30
	.ascii	 "client_state"
	.byte	0
	.long	2607
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	20
	.byte	1
	.byte	0
	.byte	25
	.ascii	 "__TYPE_14"
	.byte	0
	.byte	44
	.byte	30
	.byte	120
	.byte	0
	.long	2347
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	30
	.ascii	 "state.0"
	.byte	0
	.long	2619
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	0
	.byte	25
	.ascii	 "frame.0"
	.byte	0
	.byte	84
	.byte	30
	.ascii	 "bayer_testbench_intrf"
	.byte	0
	.long	2444
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	30
	.ascii	 "testbench_bayer_intrf"
	.byte	0
	.long	2550
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	20
	.byte	1
	.byte	30
	.ascii	 "bayer_mgmt_intrf"
	.byte	0
	.long	2680
	.byte	1
	.byte	91
	.byte	2
	.byte	35
	.byte	40
	.byte	1
	.byte	0
	.byte	23
	.long	2725
	.byte	4
	.byte	0
.Linfo_end1:
	.section	.debug_abbrev,"",@progbits
.Labbrev_begin:
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	8
	.byte	19
	.byte	5
	.byte	3
	.byte	8
	.byte	82
	.byte	1
	.byte	16
	.byte	6
	.byte	27
	.byte	8
	.ascii	 "\341\177"
	.byte	12
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	6
	.byte	73
	.byte	19
	.byte	63
	.byte	12
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.ascii	 "\347\177"
	.byte	12
	.byte	0
	.byte	0
	.byte	3
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	6
	.byte	73
	.byte	19
	.byte	2
	.byte	6
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	1
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	5
	.byte	40
	.byte	0
	.byte	3
	.byte	8
	.byte	28
	.byte	13
	.byte	0
	.byte	0
	.byte	6
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	6
	.byte	63
	.byte	12
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.ascii	 "\347\177"
	.byte	12
	.byte	0
	.byte	0
	.byte	7
	.byte	4
	.byte	1
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	6
	.byte	0
	.byte	0
	.byte	8
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	6
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	9
	.byte	36
	.byte	0
	.byte	3
	.byte	8
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	10
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	63
	.byte	12
	.byte	0
	.byte	0
	.byte	11
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	12
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	63
	.byte	12
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.ascii	 "\347\177"
	.byte	12
	.byte	0
	.byte	0
	.byte	13
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	6
	.byte	0
	.byte	0
	.byte	14
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	15
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	16
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	6
	.byte	0
	.byte	0
	.byte	17
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	28
	.byte	10
	.byte	0
	.byte	0
	.byte	18
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	19
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.ascii	 "\347\177"
	.byte	12
	.byte	0
	.byte	0
	.byte	20
	.byte	46
	.byte	0
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	6
	.byte	63
	.byte	12
	.byte	0
	.byte	0
	.byte	21
	.byte	4
	.byte	1
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	22
	.byte	15
	.byte	0
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	23
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	24
	.byte	16
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	25
	.byte	19
	.byte	1
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	26
	.byte	13
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	6
	.byte	56
	.byte	10
	.byte	50
	.byte	12
	.byte	0
	.byte	0
	.byte	27
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	28
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	29
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	11
	.byte	0
	.byte	0
	.byte	30
	.byte	13
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	56
	.byte	10
	.byte	50
	.byte	12
	.byte	0
	.byte	0
	.byte	0
.Labbrev_end:
	.section	.debug_pubnames,"",@progbits
.Lset0 = .Lpubnames_end1-.Lpubnames_begin1
	.long	.Lset0
.Lpubnames_begin1:
	.short	2
	.long	.Linfo_begin1
.Lset1 = .Linfo_end1-.Linfo_begin1
	.long	.Lset1
	.long	760
.asciiz "_i.pipeline_interface._chan.get_new_line"
	.long	374
.asciiz "_i.mgmt_interface._chan.apm_mgmt"
	.long	1904
.asciiz "__main__main_tile_1"
	.long	1765
.asciiz "__main__main_tile_1_task_bayer_testbench_upstream_3"
	.long	965
.asciiz "delay_milliseconds"
	.long	630
.asciiz "_i.pipeline_interface._chan.release_line_buf"
	.long	1021
.asciiz "delay_microseconds"
	.long	1077
.asciiz "mgmt_intrf"
	.long	1493
.asciiz "__main__main_tile_1_task_bayer_testbench_downstream_1"
	.long	1382
.asciiz "__main__main_tile_1_task_mgmt_intrf_0"
	.long	919
.asciiz "delay_seconds"
	.long	189
.asciiz "_i.mgmt_interface._chan.get_response"
	.long	1636
.asciiz "__main__main_tile_1_task_bayer_interpolation_2"
	.long	0
.Lpubnames_end1:
	.section	.debug_pubtypes,"",@progbits
.Lset2 = .Lpubtypes_end1-.Lpubtypes_begin1
	.long	.Lset2
.Lpubtypes_begin1:
	.short	2
	.long	.Linfo_begin1
.Lset3 = .Linfo_end1-.Linfo_begin1
	.long	.Lset3
	.long	2444
.asciiz "__TYPE_10"
	.long	2383
.asciiz "__TYPE_11"
	.long	2550
.asciiz "__TYPE_12"
	.long	2489
.asciiz "__TYPE_13"
	.long	324
.asciiz "__TYPE_5"
	.long	2619
.asciiz "__TYPE_15"
	.long	2246
.asciiz "__TYPE_8"
	.long	2725
.asciiz "frame.0"
	.long	2680
.asciiz "__TYPE_14"
	.long	0
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp12
.Lset4 = .Ltmp160-.Ltmp159
	.short	.Lset4
.Ltmp159:
	.byte	80
.Ltmp160:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin0
	.long	.Ltmp11
.Lset5 = .Ltmp162-.Ltmp161
	.short	.Lset5
.Ltmp161:
	.byte	81
.Ltmp162:
	.long	.Ltmp11
	.long	.Ltmp13
.Lset6 = .Ltmp164-.Ltmp163
	.short	.Lset6
.Ltmp163:
	.byte	85
.Ltmp164:
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Lfunc_begin1
	.long	.Ltmp32
.Lset7 = .Ltmp166-.Ltmp165
	.short	.Lset7
.Ltmp165:
	.byte	80
.Ltmp166:
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Lfunc_begin1
	.long	.Ltmp31
.Lset8 = .Ltmp168-.Ltmp167
	.short	.Lset8
.Ltmp167:
	.byte	81
.Ltmp168:
	.long	.Ltmp31
	.long	.Ltmp33
.Lset9 = .Ltmp170-.Ltmp169
	.short	.Lset9
.Ltmp169:
	.byte	87
.Ltmp170:
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Lfunc_begin1
	.long	.Ltmp30
.Lset10 = .Ltmp172-.Ltmp171
	.short	.Lset10
.Ltmp171:
	.byte	82
.Ltmp172:
	.long	.Ltmp30
	.long	.Ltmp34
.Lset11 = .Ltmp174-.Ltmp173
	.short	.Lset11
.Ltmp173:
	.byte	85
.Ltmp174:
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Lfunc_begin2
	.long	.Ltmp50
.Lset12 = .Ltmp176-.Ltmp175
	.short	.Lset12
.Ltmp175:
	.byte	80
.Ltmp176:
	.long	0
	.long	0
.Ldebug_loc15:
	.long	.Lfunc_begin2
	.long	.Ltmp49
.Lset13 = .Ltmp178-.Ltmp177
	.short	.Lset13
.Ltmp177:
	.byte	81
.Ltmp178:
	.long	.Ltmp49
	.long	.Ltmp51
.Lset14 = .Ltmp180-.Ltmp179
	.short	.Lset14
.Ltmp179:
	.byte	85
.Ltmp180:
	.long	0
	.long	0
.Ldebug_loc18:
	.long	.Lfunc_begin3
	.long	.Ltmp71
.Lset15 = .Ltmp182-.Ltmp181
	.short	.Lset15
.Ltmp181:
	.byte	80
.Ltmp182:
	.long	0
	.long	0
.Ldebug_loc20:
	.long	.Lfunc_begin3
	.long	.Ltmp70
.Lset16 = .Ltmp184-.Ltmp183
	.short	.Lset16
.Ltmp183:
	.byte	81
.Ltmp184:
	.long	.Ltmp70
	.long	.Ltmp72
.Lset17 = .Ltmp186-.Ltmp185
	.short	.Lset17
.Ltmp185:
	.byte	88
.Ltmp186:
	.long	0
	.long	0
.Ldebug_loc23:
	.long	.Lfunc_begin4
	.long	.Ltmp95
.Lset18 = .Ltmp188-.Ltmp187
	.short	.Lset18
.Ltmp187:
	.byte	80
.Ltmp188:
	.long	.Ltmp95
	.long	.Ltmp114
.Lset19 = .Ltmp190-.Ltmp189
	.short	.Lset19
.Ltmp189:
	.byte	84
.Ltmp190:
	.long	0
	.long	0
.Ldebug_loc27:
	.long	.Ltmp95
	.long	.Lfunc_end4
.Lset20 = .Ltmp192-.Ltmp191
	.short	.Lset20
.Ltmp191:
	.byte	16
	.byte	51
.Ltmp192:
	.long	0
	.long	0
.Ldebug_loc32:
	.long	.Ltmp96
	.long	.Ltmp97
.Lset21 = .Ltmp194-.Ltmp193
	.short	.Lset21
.Ltmp193:
	.byte	80
.Ltmp194:
	.long	.Ltmp113
	.long	.Ltmp114
.Lset22 = .Ltmp196-.Ltmp195
	.short	.Lset22
.Ltmp195:
	.byte	80
.Ltmp196:
	.long	0
	.long	0
.Ldebug_loc35:
	.long	.Ltmp108
	.long	.Ltmp109
.Lset23 = .Ltmp198-.Ltmp197
	.short	.Lset23
.Ltmp197:
	.byte	80
.Ltmp198:
	.long	0
	.long	0
.Ldebug_loc37:
	.long	.Lfunc_begin6
	.long	.Ltmp128
.Lset24 = .Ltmp200-.Ltmp199
	.short	.Lset24
.Ltmp199:
	.byte	80
.Ltmp200:
	.long	0
	.long	0
.Ldebug_loc39:
	.long	.Lfunc_begin7
	.long	.Ltmp137
.Lset25 = .Ltmp202-.Ltmp201
	.short	.Lset25
.Ltmp201:
	.byte	80
.Ltmp202:
	.long	0
	.long	0
.Ldebug_loc41:
	.long	.Lfunc_begin8
	.long	.Ltmp146
.Lset26 = .Ltmp204-.Ltmp203
	.short	.Lset26
.Ltmp203:
	.byte	80
.Ltmp204:
	.long	0
	.long	0
.Ldebug_loc43:
	.long	.Lfunc_begin9
	.long	.Ltmp155
.Lset27 = .Ltmp206-.Ltmp205
	.short	.Lset27
.Ltmp205:
	.byte	80
.Ltmp206:
	.long	0
	.long	0
.Ldebug_loc45:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring _i.mgmt_interface._chan.get_response, "l:f{e(){m(APM_MGMT_FAILURE){0},m(APM_MGMT_SUCCESS){1}}}(&(s(yarg){m(dest){chd},m(y){ui}}),ui)"
	.overlay_reference _i.mgmt_interface._chan.get_response,_i.mgmt_interface._client_call.fns
	.typestring _i.mgmt_interface._chan.apm_mgmt, "f{0}(&(s(yarg){m(dest){chd},m(y){ui}}),e(){m(BAYER_MODE){4},m(NOT_USED_COMMAND){0},m(SET_COLOR_MODE){2},m(SET_REGION_OF_INTEREST){3},m(SET_SCREEN_RESOLUTION){1},m(START_OPERATION){5},m(STOP_OPERATION){6}},u:q(0))"
	.overlay_reference _i.mgmt_interface._chan.apm_mgmt,_i.mgmt_interface._client_call.fns
	.typestring _i.pipeline_interface._chan.release_line_buf, "f{0}(&(s(yarg){m(dest){chd},m(y){ui}}),&(x:q(ui)))"
	.overlay_reference _i.pipeline_interface._chan.release_line_buf,_i.pipeline_interface._client_call.fns
	.typestring _i.pipeline_interface._chan.get_new_line, "f{ui}(&(s(yarg){m(dest){chd},m(y){ui}}),&(x:q(ui)),q(s(){m(height){us},m(width){us}}))"
	.overlay_reference _i.pipeline_interface._chan.get_new_line,_i.pipeline_interface._client_call.fns
	.typestring delay_ticks_longlong, "f{0}(ull)"
	.typestring printstrln, "f{si}(a:&(a(:c:uc)))"
	.typestring bayer_interpolation, "f{0}(is(mgmt_interface){m(apm_mgmt){f{0}(e(){m(BAYER_MODE){4},m(NOT_USED_COMMAND){0},m(SET_COLOR_MODE){2},m(SET_REGION_OF_INTEREST){3},m(SET_SCREEN_RESOLUTION){1},m(START_OPERATION){5},m(STOP_OPERATION){6}},u:q(0))},m(request_response){st:f{0}()},m(get_response){l:f{e(){m(APM_MGMT_FAILURE){0},m(APM_MGMT_SUCCESS){1}}}()}},ic(pipeline_interface)s:{m(get_new_line){f{ui}(&(x:q(ui)),q(s(){m(height){us},m(width){us}}))},m(release_line_buf){f{0}(&(x:q(ui)))}},is(pipeline_interface)s:{m(get_new_line){f{ui}(&(x:q(ui)),q(s(){m(height){us},m(width){us}}))},m(release_line_buf){f{0}(&(x:q(ui)))}})"
	.typestring bayer_testbench_downstream, "f{0}(is(pipeline_interface)s:{m(get_new_line){f{ui}(&(x:q(ui)),q(s(){m(height){us},m(width){us}}))},m(release_line_buf){f{0}(&(x:q(ui)))}})"
	.typestring bayer_testbench_upstream, "f{0}(ic(pipeline_interface)s:{m(get_new_line){f{ui}(&(x:q(ui)),q(s(){m(height){us},m(width){us}}))},m(release_line_buf){f{0}(&(x:q(ui)))}})"
	.typestring mgmt_intrf, "f{0}(ic(mgmt_interface){m(apm_mgmt){f{0}(e(){m(BAYER_MODE){4},m(NOT_USED_COMMAND){0},m(SET_COLOR_MODE){2},m(SET_REGION_OF_INTEREST){3},m(SET_SCREEN_RESOLUTION){1},m(START_OPERATION){5},m(STOP_OPERATION){6}},u:q(0))},m(request_response){st:f{0}()},m(get_response){l:f{e(){m(APM_MGMT_FAILURE){0},m(APM_MGMT_SUCCESS){1}}}()}})"
	.overlay_reference mgmt_intrf,_i.mgmt_interface.apm_mgmt.fns
	.overlay_reference mgmt_intrf,_i.mgmt_interface.get_response.fns
	.typestring __main__main_tile_1, "f{0}()"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug"
	.byte	0
.cc_top cc_0,.Lxta.call_labels5
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	38
	.long	.Lxta.call_labels5
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels6
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	40
	.long	.Lxta.call_labels6
.cc_bottom cc_1
.cc_top cc_2,.Lxta.call_labels0
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	53
	.long	.Lxta.call_labels0
.cc_bottom cc_2
.cc_top cc_3,.Lxta.call_labels1
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	55
	.long	.Lxta.call_labels1
.cc_bottom cc_3
.cc_top cc_4,.Lxta.call_labels7
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	61
	.long	.Lxta.call_labels7
.cc_bottom cc_4
.cc_top cc_5,.Lxta.call_labels8
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	62
	.long	.Lxta.call_labels8
.cc_bottom cc_5
.cc_top cc_6,.Lxta.call_labels3
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	69
	.long	.Lxta.call_labels3
.cc_bottom cc_6
.cc_top cc_7,.Lxta.call_labels4
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	70
	.long	.Lxta.call_labels4
.cc_bottom cc_7
.cc_top cc_8,.Lxta.call_labels9
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	91
	.long	.Lxta.call_labels9
.cc_bottom cc_8
.cc_top cc_9,.Lxta.call_labels10
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	92
	.long	.Lxta.call_labels10
.cc_bottom cc_9
.cc_top cc_10,.Lxta.call_labels11
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	93
	.long	.Lxta.call_labels11
.cc_bottom cc_10
.cc_top cc_11,.Lxta.call_labels12
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	94
	.long	.Lxta.call_labels12
.cc_bottom cc_11
.cc_top cc_12,.Lxta.call_labels2
	.ascii	 "timer.h"
	.byte	0
	.long	47
	.long	.Lxta.call_labels2
.cc_bottom cc_12
.Lentries_end1:
	.section	.xtaendpointtable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug"
	.byte	0
.cc_top cc_13,.Lxta.endpoint_labels0
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	29
	.long	.Lxta.endpoint_labels0
.cc_bottom cc_13
.cc_top cc_14,.Lxta.endpoint_labels1
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	32
	.long	.Lxta.endpoint_labels1
.cc_bottom cc_14
.Lentries_end3:
	.section	.xtalabeltable,"",@progbits
.Lentries_start4:
	.long	.Lentries_end5-.Lentries_start4
	.long	0
	.ascii	 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug"
	.byte	0
.cc_top cc_15,.Lxtalabel0
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	21
	.long	31
	.long	.Lxtalabel0
.cc_bottom cc_15
.cc_top cc_16,.Lxtalabel2
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	32
	.long	33
	.long	.Lxtalabel2
.cc_bottom cc_16
.cc_top cc_17,.Lxtalabel10
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	34
	.long	37
	.long	.Lxtalabel10
.cc_bottom cc_17
.cc_top cc_18,.Lxtalabel7
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	38
	.long	39
	.long	.Lxtalabel7
.cc_bottom cc_18
.cc_top cc_19,.Lxtalabel8
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	40
	.long	43
	.long	.Lxtalabel8
.cc_bottom cc_19
.cc_top cc_20,.Lxtalabel1
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	52
	.long	59
	.long	.Lxtalabel1
.cc_bottom cc_20
.cc_top cc_21,.Lxtalabel9
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	60
	.long	66
	.long	.Lxtalabel9
.cc_bottom cc_21
.cc_top cc_22,.Lxtalabel6
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	67
	.long	74
	.long	.Lxtalabel6
.cc_bottom cc_22
.cc_top cc_23,.Lxtalabel3
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	75
	.long	77
	.long	.Lxtalabel3
.cc_bottom cc_23
.cc_top cc_24,.Lxtalabel4
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	75
	.long	77
	.long	.Lxtalabel4
.cc_bottom cc_24
.cc_top cc_25,.Lxtalabel5
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	75
	.long	77
	.long	.Lxtalabel5
.cc_bottom cc_25
.cc_top cc_26,.Lxtalabel3
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	79
	.long	80
	.long	.Lxtalabel3
.cc_bottom cc_26
.cc_top cc_27,.Lxtalabel4
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	79
	.long	80
	.long	.Lxtalabel4
.cc_bottom cc_27
.cc_top cc_28,.Lxtalabel5
	.ascii	 "../src/app_bayer_testbench.xc"
	.byte	0
	.long	79
	.long	80
	.long	.Lxtalabel5
.cc_bottom cc_28
.cc_top cc_29,.Lxtalabel6
	.ascii	 "timer.h"
	.byte	0
	.long	47
	.long	48
	.long	.Lxtalabel6
.cc_bottom cc_29
.Lentries_end5:
