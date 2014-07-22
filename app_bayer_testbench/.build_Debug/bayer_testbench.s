	.file	"F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"

	.weak _i.pipeline_interface.get_new_line.maxchanends.group
	.max_reduce _i.pipeline_interface.get_new_line.max.maxchanends, _i.pipeline_interface.get_new_line.maxchanends.group, 0
	.weak _i.pipeline_interface.get_new_line.maxcores.group
	.max_reduce _i.pipeline_interface.get_new_line.max.maxcores, _i.pipeline_interface.get_new_line.maxcores.group, 0
	.weak _i.pipeline_interface.get_new_line.maxtimers.group
	.max_reduce _i.pipeline_interface.get_new_line.max.maxtimers, _i.pipeline_interface.get_new_line.maxtimers.group, 0
	.weak _i.pipeline_interface.get_new_line.nstackwords.group
	.globl _i.pipeline_interface.get_new_line.nstackwords.group
	.weak _i.pipeline_interface.get_new_line.fns.group
	.globl _i.pipeline_interface.get_new_line.fns.group
	.max_reduce _i.pipeline_interface.get_new_line.max.nstackwords, _i.pipeline_interface.get_new_line.nstackwords.group, 0
	.max_reduce _i.pipeline_interface.get_new_line.fns, _i.pipeline_interface.get_new_line.fns.group, 0
	.weak _i.pipeline_interface.release_line_buf.maxchanends.group
	.max_reduce _i.pipeline_interface.release_line_buf.max.maxchanends, _i.pipeline_interface.release_line_buf.maxchanends.group, 0
	.weak _i.pipeline_interface.release_line_buf.maxcores.group
	.max_reduce _i.pipeline_interface.release_line_buf.max.maxcores, _i.pipeline_interface.release_line_buf.maxcores.group, 0
	.weak _i.pipeline_interface.release_line_buf.maxtimers.group
	.max_reduce _i.pipeline_interface.release_line_buf.max.maxtimers, _i.pipeline_interface.release_line_buf.maxtimers.group, 0
	.weak _i.pipeline_interface.release_line_buf.nstackwords.group
	.globl _i.pipeline_interface.release_line_buf.nstackwords.group
	.weak _i.pipeline_interface.release_line_buf.fns.group
	.globl _i.pipeline_interface.release_line_buf.fns.group
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
	.weak _i.mgmt_interface.apm_mgmt.maxchanends.group
	.max_reduce _i.mgmt_interface.apm_mgmt.max.maxchanends, _i.mgmt_interface.apm_mgmt.maxchanends.group, 0
	.weak _i.mgmt_interface.apm_mgmt.maxcores.group
	.max_reduce _i.mgmt_interface.apm_mgmt.max.maxcores, _i.mgmt_interface.apm_mgmt.maxcores.group, 0
	.weak _i.mgmt_interface.apm_mgmt.maxtimers.group
	.max_reduce _i.mgmt_interface.apm_mgmt.max.maxtimers, _i.mgmt_interface.apm_mgmt.maxtimers.group, 0
	.weak _i.mgmt_interface.apm_mgmt.nstackwords.group
	.globl _i.mgmt_interface.apm_mgmt.nstackwords.group
	.weak _i.mgmt_interface.apm_mgmt.fns.group
	.globl _i.mgmt_interface.apm_mgmt.fns.group
	.max_reduce _i.mgmt_interface.apm_mgmt.max.nstackwords, _i.mgmt_interface.apm_mgmt.nstackwords.group, 0
	.max_reduce _i.mgmt_interface.apm_mgmt.fns, _i.mgmt_interface.apm_mgmt.fns.group, 0
	.weak _i.mgmt_interface.get_response.maxchanends.group
	.max_reduce _i.mgmt_interface.get_response.max.maxchanends, _i.mgmt_interface.get_response.maxchanends.group, 0
	.weak _i.mgmt_interface.get_response.maxcores.group
	.max_reduce _i.mgmt_interface.get_response.max.maxcores, _i.mgmt_interface.get_response.maxcores.group, 0
	.weak _i.mgmt_interface.get_response.maxtimers.group
	.max_reduce _i.mgmt_interface.get_response.max.maxtimers, _i.mgmt_interface.get_response.maxtimers.group, 0
	.weak _i.mgmt_interface.get_response.nstackwords.group
	.globl _i.mgmt_interface.get_response.nstackwords.group
	.weak _i.mgmt_interface.get_response.fns.group
	.globl _i.mgmt_interface.get_response.fns.group
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
	.call bayer_testbench_upstream,printstrln
	.set bayer_testbench_downstream.locnochandec, 1
	.set bayer_testbench_upstream.locnochandec, 1
	.set bayer_testbench_downstream.locnoglobalaccess, 1
	.set bayer_testbench_upstream.locnoglobalaccess, 1
	.set bayer_testbench_downstream.locnonotificationselect, 1
	.set bayer_testbench_upstream.locnonotificationselect, 1


	.file	1 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.file	2 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug\\<synthesized>"
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
	.cc_top bayer_testbench_downstream.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI4_0.data
	.align	4
.LCPI4_0:
	.long	4278255360
	.cc_bottom .LCPI4_0.data
	.cc_top .LCPI4_1.data
	.align	4
.LCPI4_1:
	.long	16711935
	.cc_bottom .LCPI4_1.data
	.text
	.globl	bayer_testbench_downstream
	.align	4
	.type	bayer_testbench_downstream,@function
bayer_testbench_downstream:
.Ltmp84:
	.cfi_startproc
.Lfunc_begin4:
	.loc	1 9 0
.Lxtalabel0:
	entsp 392
.Ltmp85:
	.cfi_def_cfa_offset 1568
.Ltmp86:
	.cfi_offset 15, 0
	.loc	1 9 0 prologue_end
.Ltmp87:
	stw r4, sp[391]
.Ltmp88:
	.cfi_offset 4, -4
	stw r5, sp[390]
.Ltmp89:
	.cfi_offset 5, -8
	stw r6, sp[389]
.Ltmp90:
	.cfi_offset 6, -12
	stw r7, sp[388]
.Ltmp91:
	.cfi_offset 7, -16
	stw r8, sp[387]
.Ltmp92:
	.cfi_offset 8, -20
	stw r9, sp[386]
.Ltmp93:
	.cfi_offset 9, -24
	stw r10, sp[385]
.Ltmp94:
	.cfi_offset 10, -28
	stw r0, sp[0]
	ldaw r1, sp[196]
	.loc	1 11 0
.Ltmp95:
	stw r1, sp[1]
	stw r1, sp[2]
	ldc r3, 756
	stw r3, sp[3]
	ldaw r2, sp[7]
	stw r2, sp[4]
	stw r2, sp[5]
	stw r3, sp[6]
	ldc r3, 0
.Ltmp96:
	ldc r11, 752
	ldc r4, 120
.LBB4_1:
.Lxtalabel1:
	.loc	1 19 0
.Ltmp97:
	shl r5, r3, 2
	lsu r5, r11, r5
	ecallt r5
	ldw r6, cp[.LCPI4_0]
	stw r6, r1[r3]
	.loc	1 20 0
	ecallt r5
	ldw r5, cp[.LCPI4_1]
	stw r5, r2[r3]
	.loc	1 18 0
	add r3, r3, 1
	lsu r5, r3, r4
.Lxta.loop_labels0:
	# LOOPMARKER 0
	bt r5, .LBB4_1
.Ltmp98:
.Lxtalabel2:
	.loc	1 26 0
	ldw r8, r0[0]
	ldc r6, 0
	clre
	ldap r11, .Ltmp99
	setv res[r8], r11
	eeu res[r8]
	mov r10, r6
	mov r7, r6
	mov r1, r6
	
	.xtabranch .LBB4_3
waiteu
.Ltmp99:
.LBB4_3:
.Lxtalabel3:
	in r11, res[r8]
	ldc r2, 254
	add r3, r11, r2
	zext r3, 8
	sub r11, r11, r3
	setd res[r8], r11
	outct res[r8], 1
	in r9, res[r8]
	bf r3, .LBB4_5
	.loc	1 44 0
	zext r1, 8
	ldc r2, 2
	lsu r3, r1, r2
	ecallf r3
	ldw r3, r9[2]
	ldw r11, r9[1]
	ldw r4, r9[0]
	stw r6, r9[0]
	stw r6, r9[1]
	stw r6, r9[2]
	ldc r2, 12
	mul r5, r1, r2
	ldaw r2, sp[1]
	add r5, r2, r5
	stw r4, r5[0]
	stw r11, r5[1]
	stw r3, r5[2]
	ldw r8, r0[0]
	out res[r8], r6
	mkmsk r2, 1
	.loc	1 45 0
	sub r1, r2, r1
	outct res[r8], 1
	.loc	1 26 0
	clre
	ldap r11, .Ltmp99
	setv res[r8], r11
	eeu res[r8]
	
	.xtabranch .LBB4_3
waiteu
.LBB4_5:
	.loc	1 29 0
	zext r10, 8
	ldc r2, 2
	lsu r4, r10, r2
	in r11, res[r8]
	in r3, res[r8]
	in r8, res[r8]
	ecallf r4
.Ltmp100:
	ldc r0, 12
	mul r4, r10, r0
	mov r0, r6
	ldaw r5, sp[1]
	add r6, r5, r4
	ldw r4, r6[2]
	ldw r5, r6[1]
	mov r2, r7
	ldw r7, r6[0]
	stw r0, r6[0]
	stw r0, r6[1]
	stw r0, r6[2]
	mov r6, r0
	stw r7, r9[0]
	mov r7, r2
	stw r5, r9[1]
	stw r4, r9[2]
	mkmsk r0, 1
	.loc	1 31 0
	sub r10, r0, r10
	.loc	1 32 0
	mov r4, r7
	zext r4, 8
	bt r4, .LBB4_9
.Lxtalabel4:
	mkmsk r0, 2
	.loc	1 35 0
	lsu r0, r8, r0
	mov r4, r6
	bt r0, .LBB4_8
.Lxtalabel5:
	sub r4, r8, 3
.LBB4_8:
.Lxtalabel6:
	sub r0, r11, r3
	lsu r3, r0, r4
	ldw r0, sp[0]
.Ltmp101:
	ecallf r3
	ldc r2, 272
	st16 r2, r11[r6]
	.loc	1 36 0
	add r2, r11, 2
	ldc r3, 480
	st16 r3, r2[r6]
	mkmsk r7, 1
.Ltmp102:
	ldw r8, r0[0]
	out res[r8], r6
	out res[r8], r7
	outct res[r8], 1
	.loc	1 26 0
	clre
	ldap r11, .Ltmp99
	setv res[r8], r11
	eeu res[r8]
	
	.xtabranch .LBB4_3
waiteu
.LBB4_9:
.Lxtalabel7:
.Ltmp103:
	ldw r0, sp[0]
.Ltmp104:
	ldw r8, r0[0]
	out res[r8], r6
	out res[r8], r6
	outct res[r8], 1
	clre
	ldap r11, .Ltmp99
	setv res[r8], r11
	eeu res[r8]
	
	.xtabranch .LBB4_3
waiteu
.Ltmp105:
.Ltmp106:
	.size	bayer_testbench_downstream, .Ltmp106-bayer_testbench_downstream
.Lfunc_end4:
.Ltmp107:
	.cfi_endproc
.Leh_func_end4:

	.align	4
	.cc_bottom bayer_testbench_downstream.function
	.set	bayer_testbench_downstream.nstackwords,392
	.globl	bayer_testbench_downstream.nstackwords
	.set	bayer_testbench_downstream.maxcores,1
	.globl	bayer_testbench_downstream.maxcores
	.set	bayer_testbench_downstream.maxtimers,0
	.globl	bayer_testbench_downstream.maxtimers
	.set	bayer_testbench_downstream.maxchanends,0
	.globl	bayer_testbench_downstream.maxchanends
	.cc_top bayer_testbench_upstream.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI5_0.data
	.align	4
.LCPI5_0:
	.long	4162844703
	.cc_bottom .LCPI5_0.data
	.text
	.globl	bayer_testbench_upstream
	.align	4
	.type	bayer_testbench_upstream,@function
bayer_testbench_upstream:
.Ltmp116:
	.cfi_startproc
.Lfunc_begin5:
	.loc	1 56 0
.Lxtalabel8:
	entsp 14
.Ltmp117:
	.cfi_def_cfa_offset 56
.Ltmp118:
	.cfi_offset 15, 0
	.loc	1 56 0 prologue_end
.Ltmp119:
	stw r4, sp[13]
.Ltmp120:
	.cfi_offset 4, -4
	stw r5, sp[12]
.Ltmp121:
	.cfi_offset 5, -8
	stw r6, sp[11]
.Ltmp122:
	.cfi_offset 6, -12
	stw r7, sp[10]
.Ltmp123:
	.cfi_offset 7, -16
	stw r8, sp[9]
.Ltmp124:
	.cfi_offset 8, -20
	stw r9, sp[8]
.Ltmp125:
	.cfi_offset 9, -24
	stw r10, sp[7]
.Ltmp126:
	.cfi_offset 10, -28
	mov r4, r0
.Ltmp127:
	ldc r0, 0
	.loc	1 57 0
.Ltmp128:
	stw r0, sp[6]
	stw r0, sp[5]
	stw r0, sp[4]
.Ltmp129:
	ldc r5, 4
	ldaw r6, sp[4]
	ldaw r10, sp[3]
	bu .LBB5_1
.LBB5_3:
.Lxtalabel9:
	.loc	1 75 0
.Ltmp130:
	ldw r0, r4[0]
	ldw r1, r4[1]
	mov r8, r2
	ldw r2, r1[1]
	.loc	1 75 0
	mov r1, r6
.Lxta.call_labels0:
	bla r2
	.loc	1 76 0
	ldw r0, r4[0]
	ldw r1, r4[1]
	ldw r11, r1[0]
	.loc	1 76 0
	stw r5, sp[1]
	mov r1, r6
	mov r2, r10
	mov r3, r10
.Lxta.call_labels1:
	bla r11
	mov r2, r8
	.loc	1 73 0
	add r7, r7, 1
.Ltmp131:
	lsu r0, r7, r2
.Lxta.loop_labels1:
	# LOOPMARKER 2
	ldc r9, 0
	bt r0, .LBB5_3
.Ltmp132:
.LBB5_4:
.Lxtalabel10:
	.loc	1 82 0
	ldw r0, r4[0]
	ldw r1, r4[1]
	ldw r2, r1[1]
	.loc	1 82 0
	mov r1, r6
.Lxta.call_labels2:
	bla r2
	.loc	1 84 0
	bf r9, .LBB5_13
.Lxtalabel11:
	.loc	1 85 0
	ldaw r0, dp[.str]
	ldc r1, 25
.Lxta.call_labels3:
	bl printstrln
.LBB5_1:
.Lxtalabel12:
	.loc	1 70 0
	ldw r0, r4[0]
	ldw r1, r4[1]
	ldw r11, r1[0]
	.loc	1 70 0
	stw r5, sp[1]
	mov r1, r6
	mov r2, r10
	mov r3, r10
.Lxta.call_labels4:
	bla r11
	.loc	1 71 0
	ldw r0, sp[3]
	mov r2, r0
	zext r2, 16
.Ltmp133:
	stw r2, sp[2]
	ldc r1, 2
	.loc	1 73 0
.Ltmp134:
	lsu r1, r2, r1
.Ltmp135:
	ldc r9, 0
	bt r1, .LBB5_4
.Ltmp136:
	ldc r1, 17
	shr r8, r0, r1
.Ltmp137:
	ldc r9, 0
	mkmsk r7, 1
	bf r8, .LBB5_3
.LBB5_6:
.Lxtalabel13:
	.loc	1 75 0
	ldw r0, r4[0]
	ldw r1, r4[1]
	ldw r2, r1[1]
	.loc	1 75 0
	mov r1, r6
.Lxta.call_labels5:
	bla r2
	.loc	1 76 0
	ldw r0, r4[0]
	ldw r1, r4[1]
	ldw r11, r1[0]
	.loc	1 76 0
	stw r5, sp[1]
	mov r2, r6
	mov r1, r2
	mov r5, r10
	mov r6, r2
	mov r2, r5
	mov r3, r5
	mov r10, r5
.Lxta.call_labels6:
	bla r11
	.loc	1 79 0
.Ltmp138:
	ldw r1, sp[6]
	mkmsk r0, 2
	lsu r2, r1, r0
	ldc r0, 0
	bt r2, .LBB5_8
.Lxtalabel14:
	sub r0, r1, 3
.LBB5_8:
.Lxtalabel15:
	ldw r1, sp[4]
	ecallf r1
	ldw r2, sp[5]
	ldc r3, 0
.LBB5_9:
.Lxtalabel16:
	ldaw r11, r1[r3]
	sub r5, r11, r2
	lsu r5, r5, r0
	ecallf r5
	ldw r11, r11[0]
	ldw r5, cp[.LCPI5_0]
	eq r11, r11, r5
	bt r11, .LBB5_11
	mkmsk r9, 1
.LBB5_11:
	.loc	1 78 0
	add r3, r3, 1
	lsu r11, r3, r8
.Lxta.loop_labels2:
	# LOOPMARKER 0
	bt r11, .LBB5_9
.Ltmp139:
.Lxtalabel17:
	.loc	1 73 0
	add r7, r7, 1
.Ltmp140:
	ldw r0, sp[2]
	lsu r0, r7, r0
.Lxta.loop_labels3:
	# LOOPMARKER 1
	ldc r5, 4
	bf r0, .LBB5_4
	bu .LBB5_6
.Ltmp141:
.LBB5_13:
.Lxtalabel18:
	.loc	1 87 0
	ldaw r0, dp[.str1]
	ldc r1, 23
.Lxta.call_labels7:
	bl printstrln
	bu .LBB5_1
.Ltmp142:
.Ltmp143:
	.size	bayer_testbench_upstream, .Ltmp143-bayer_testbench_upstream
.Lfunc_end5:
.Ltmp144:
	.cfi_endproc
.Leh_func_end5:

	.align	4
	.cc_bottom bayer_testbench_upstream.function
	.set	bayer_testbench_upstream.nstackwords,((printstrln.nstackwords $M _i.pipeline_interface.release_line_buf.max.nstackwords $M _i.pipeline_interface.get_new_line.max.nstackwords) + 14)
	.globl	bayer_testbench_upstream.nstackwords
	.set	bayer_testbench_upstream.maxcores,_i.pipeline_interface.get_new_line.max.maxcores $M _i.pipeline_interface.release_line_buf.max.maxcores $M printstrln.maxcores $M 1
	.globl	bayer_testbench_upstream.maxcores
	.set	bayer_testbench_upstream.maxtimers,_i.pipeline_interface.get_new_line.max.maxtimers $M _i.pipeline_interface.release_line_buf.max.maxtimers $M printstrln.maxtimers $M 0
	.globl	bayer_testbench_upstream.maxtimers
	.set	bayer_testbench_upstream.maxchanends,_i.pipeline_interface.get_new_line.max.maxchanends $M _i.pipeline_interface.release_line_buf.max.maxchanends $M printstrln.maxchanends $M 0
	.globl	bayer_testbench_upstream.maxchanends
	.section	.dp.rodata,"awd",@progbits
	.cc_top .str.data
	.align	4
	.type	.str,@object
	.size .str,25
.str:
.asciiz "Incorrect frame received"
	.cc_bottom .str.data
	.cc_top .str1.data
	.align	4
	.type	.str1,@object
	.size .str1,23
.str1:
.asciiz "Correct frame received"
	.cc_bottom .str1.data
	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	1951
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Enterprise_13.1.0 (build 11949, Apr-08-2014)"
	.byte	0
	.short	49152
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
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
	.long	378
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
	.long	957
	.long	.Ldebug_loc2+0
	.byte	0
	.byte	4
	.ascii	 "__TYPE_1"
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
	.ascii	 "__TYPE_0"
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
	.long	1806
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
	.long	1814
	.long	.Ldebug_loc15+0
	.byte	0
	.byte	2
	.ascii	 "_i.pipeline_interface._chan.get_new_line"
	.byte	0
	.ascii	 "_i.pipeline_interface._chan.get_new_line"
	.byte	0
	.byte	2
	.long	4294967295
	.long	957
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
	.long	1814
	.long	.Ldebug_loc20+0
	.byte	8
	.ascii	 "param2"
	.byte	0
	.byte	2
	.long	16777215
	.long	1890
	.byte	0
	.byte	9
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	10
	.ascii	 "bayer_testbench_downstream"
	.byte	0
	.ascii	 "bayer_testbench_downstream"
	.byte	0
	.byte	1
	.byte	9
	.byte	1
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.byte	1
	.byte	94
	.byte	1
	.byte	11
	.ascii	 "apm"
	.byte	0
	.byte	1
	.byte	9
	.long	1896
	.long	.Ldebug_loc23+0
	.byte	12
	.long	.Ltmp95
	.long	.Ltmp105
	.byte	12
	.long	.Ltmp95
	.long	.Ltmp105
	.byte	13
	.ascii	 "bayer_buf0"
	.byte	0
	.byte	1
	.byte	10
	.long	1912
	.byte	13
	.ascii	 "bayer_buf1"
	.byte	0
	.byte	1
	.byte	10
	.long	1912
	.byte	12
	.long	.Ltmp95
	.long	.Ltmp105
	.byte	14
	.ascii	 "bayer_buf_ptr"
	.byte	0
	.byte	1
	.byte	11
	.long	1925
	.byte	2
	.byte	145
	.byte	4
	.byte	12
	.long	.Ltmp97
	.long	.Ltmp105
	.byte	13
	.ascii	 "index1"
	.byte	0
	.byte	1
	.byte	12
	.long	1937
	.byte	13
	.ascii	 "index2"
	.byte	0
	.byte	1
	.byte	12
	.long	1937
	.byte	13
	.ascii	 "row"
	.byte	0
	.byte	1
	.byte	12
	.long	1937
	.byte	12
	.long	.Ltmp97
	.long	.Ltmp105
	.byte	15
	.ascii	 "pattern0"
	.byte	0
	.byte	1
	.byte	15
	.long	957
	.byte	5
	.ascii	 "\200\376\203\370\017"
	.byte	12
	.long	.Ltmp97
	.long	.Ltmp105
	.byte	15
	.ascii	 "pattern1"
	.byte	0
	.byte	1
	.byte	16
	.long	957
	.byte	4
	.ascii	 "\377\201\374\007"
	.byte	15
	.ascii	 "flag"
	.byte	0
	.byte	1
	.byte	27
	.long	957
	.byte	1
	.byte	1
	.byte	13
	.ascii	 "buf_ptr"
	.byte	0
	.byte	1
	.byte	43
	.long	1814
	.byte	13
	.ascii	 "buf_ptr"
	.byte	0
	.byte	1
	.byte	27
	.long	1814
	.byte	13
	.ascii	 "mtdata"
	.byte	0
	.byte	1
	.byte	27
	.long	1890
	.byte	12
	.long	.Ltmp97
	.long	.Ltmp98
	.byte	13
	.byte	99
	.byte	0
	.byte	1
	.byte	18
	.long	957
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.ascii	 "bayer_testbench_upstream"
	.byte	0
	.ascii	 "bayer_testbench_upstream"
	.byte	0
	.byte	1
	.byte	56
	.byte	1
	.long	.Lfunc_begin5
	.long	.Lfunc_end5
	.byte	1
	.byte	94
	.byte	1
	.byte	11
	.ascii	 "apm"
	.byte	0
	.byte	1
	.byte	56
	.long	1896
	.long	.Ldebug_loc29+0
	.byte	12
	.long	.Ltmp128
	.long	.Ltmp142
	.byte	12
	.long	.Ltmp128
	.long	.Ltmp142
	.byte	14
	.ascii	 "rgb_buf_ptr"
	.byte	0
	.byte	1
	.byte	57
	.long	1808
	.byte	2
	.byte	145
	.byte	16
	.byte	12
	.long	.Ltmp130
	.long	.Ltmp142
	.byte	13
	.ascii	 "metadata"
	.byte	0
	.byte	1
	.byte	58
	.long	1837
	.byte	12
	.long	.Ltmp130
	.long	.Ltmp142
	.byte	16
	.ascii	 "ht"
	.byte	0
	.byte	1
	.byte	59
	.long	957
	.long	.Ldebug_loc37+0
	.byte	16
	.ascii	 "wd"
	.byte	0
	.byte	1
	.byte	59
	.long	957
	.long	.Ldebug_loc39+0
	.byte	12
	.long	.Ltmp130
	.long	.Ltmp142
	.byte	15
	.ascii	 "rgb565"
	.byte	0
	.byte	1
	.byte	62
	.long	1819
	.byte	5
	.ascii	 "\237\360\377\377\017"
	.byte	12
	.long	.Ltmp130
	.long	.Ltmp142
	.byte	15
	.ascii	 "rgb565_double"
	.byte	0
	.byte	1
	.byte	63
	.long	957
	.byte	5
	.ascii	 "\237\360\377\300\017"
	.byte	12
	.long	.Ltmp130
	.long	.Ltmp142
	.byte	13
	.ascii	 "data_incorrect"
	.byte	0
	.byte	1
	.byte	68
	.long	957
	.byte	17
	.long	.Ldebug_range+0
	.byte	16
	.byte	114
	.byte	0
	.byte	1
	.byte	73
	.long	957
	.long	.Ldebug_loc33+0
	.byte	12
	.long	.Ltmp138
	.long	.Ltmp139
	.byte	13
	.byte	99
	.byte	0
	.byte	1
	.byte	78
	.long	957
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.ascii	 "__TYPE_0"
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
	.byte	18
	.byte	4
	.byte	19
	.long	957
	.byte	12
	.byte	20
	.long	1808
	.byte	9
	.ascii	 "unsigned short"
	.byte	0
	.byte	7
	.byte	2
	.byte	21
	.ascii	 "__TYPE_4"
	.byte	0
	.byte	4
	.byte	22
	.ascii	 "height"
	.byte	0
	.long	1819
	.byte	2
	.long	4294967295
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	22
	.ascii	 "width"
	.byte	0
	.long	1819
	.byte	2
	.long	4294967295
	.byte	2
	.byte	35
	.byte	2
	.byte	1
	.byte	0
	.byte	19
	.long	1837
	.byte	12
	.byte	9
	.ascii	 "interface"
	.byte	0
	.byte	7
	.byte	4
	.byte	23
	.byte	4
	.byte	5
	.byte	24
	.long	957
	.byte	25
	.long	1909
	.short	188
	.byte	0
	.byte	24
	.long	1808
	.byte	26
	.long	1909
	.byte	1
	.byte	0
	.byte	9
	.ascii	 "unsigned char"
	.byte	0
	.byte	8
	.byte	1
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
	.byte	2
	.byte	6
	.byte	0
	.byte	0
	.byte	12
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	13
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
	.byte	14
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
	.byte	28
	.byte	10
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
	.byte	11
	.byte	1
	.byte	85
	.byte	6
	.byte	0
	.byte	0
	.byte	18
	.byte	15
	.byte	0
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	19
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	20
	.byte	16
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	21
	.byte	19
	.byte	1
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	22
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
	.byte	23
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	24
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	25
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	5
	.byte	0
	.byte	0
	.byte	26
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	11
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
	.long	814
.asciiz "_i.pipeline_interface._chan.get_new_line"
	.long	428
.asciiz "_i.mgmt_interface._chan.apm_mgmt"
	.long	1337
.asciiz "bayer_testbench_upstream"
	.long	684
.asciiz "_i.pipeline_interface._chan.release_line_buf"
	.long	973
.asciiz "bayer_testbench_downstream"
	.long	243
.asciiz "_i.mgmt_interface._chan.get_response"
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
	.long	378
.asciiz "__TYPE_1"
	.long	1837
.asciiz "__TYPE_4"
	.long	0
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp12
.Lset4 = .Ltmp146-.Ltmp145
	.short	.Lset4
.Ltmp145:
	.byte	80
.Ltmp146:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin0
	.long	.Ltmp11
.Lset5 = .Ltmp148-.Ltmp147
	.short	.Lset5
.Ltmp147:
	.byte	81
.Ltmp148:
	.long	.Ltmp11
	.long	.Ltmp13
.Lset6 = .Ltmp150-.Ltmp149
	.short	.Lset6
.Ltmp149:
	.byte	85
.Ltmp150:
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Lfunc_begin1
	.long	.Ltmp32
.Lset7 = .Ltmp152-.Ltmp151
	.short	.Lset7
.Ltmp151:
	.byte	80
.Ltmp152:
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Lfunc_begin1
	.long	.Ltmp31
.Lset8 = .Ltmp154-.Ltmp153
	.short	.Lset8
.Ltmp153:
	.byte	81
.Ltmp154:
	.long	.Ltmp31
	.long	.Ltmp33
.Lset9 = .Ltmp156-.Ltmp155
	.short	.Lset9
.Ltmp155:
	.byte	87
.Ltmp156:
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Lfunc_begin1
	.long	.Ltmp30
.Lset10 = .Ltmp158-.Ltmp157
	.short	.Lset10
.Ltmp157:
	.byte	82
.Ltmp158:
	.long	.Ltmp30
	.long	.Ltmp34
.Lset11 = .Ltmp160-.Ltmp159
	.short	.Lset11
.Ltmp159:
	.byte	85
.Ltmp160:
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Lfunc_begin2
	.long	.Ltmp50
.Lset12 = .Ltmp162-.Ltmp161
	.short	.Lset12
.Ltmp161:
	.byte	80
.Ltmp162:
	.long	0
	.long	0
.Ldebug_loc15:
	.long	.Lfunc_begin2
	.long	.Ltmp49
.Lset13 = .Ltmp164-.Ltmp163
	.short	.Lset13
.Ltmp163:
	.byte	81
.Ltmp164:
	.long	.Ltmp49
	.long	.Ltmp51
.Lset14 = .Ltmp166-.Ltmp165
	.short	.Lset14
.Ltmp165:
	.byte	85
.Ltmp166:
	.long	0
	.long	0
.Ldebug_loc18:
	.long	.Lfunc_begin3
	.long	.Ltmp71
.Lset15 = .Ltmp168-.Ltmp167
	.short	.Lset15
.Ltmp167:
	.byte	80
.Ltmp168:
	.long	0
	.long	0
.Ldebug_loc20:
	.long	.Lfunc_begin3
	.long	.Ltmp70
.Lset16 = .Ltmp170-.Ltmp169
	.short	.Lset16
.Ltmp169:
	.byte	81
.Ltmp170:
	.long	.Ltmp70
	.long	.Ltmp72
.Lset17 = .Ltmp172-.Ltmp171
	.short	.Lset17
.Ltmp171:
	.byte	88
.Ltmp172:
	.long	0
	.long	0
.Ldebug_loc23:
	.long	.Lfunc_begin4
	.long	.Ltmp100
.Lset18 = .Ltmp174-.Ltmp173
	.short	.Lset18
.Ltmp173:
	.byte	80
.Ltmp174:
	.long	.Ltmp100
	.long	.Ltmp101
.Lset19 = .Ltmp176-.Ltmp175
	.short	.Lset19
.Ltmp175:
	.byte	94
.Ltmp176:
	.long	.Ltmp101
	.long	.Ltmp103
.Lset20 = .Ltmp178-.Ltmp177
	.short	.Lset20
.Ltmp177:
	.byte	80
.Ltmp178:
	.long	.Ltmp103
	.long	.Ltmp104
.Lset21 = .Ltmp180-.Ltmp179
	.short	.Lset21
.Ltmp179:
	.byte	94
.Ltmp180:
	.long	.Ltmp104
	.long	.Ltmp105
.Lset22 = .Ltmp182-.Ltmp181
	.short	.Lset22
.Ltmp181:
	.byte	80
.Ltmp182:
	.long	0
	.long	0
.Ldebug_loc29:
	.long	.Lfunc_begin5
	.long	.Ltmp127
.Lset23 = .Ltmp184-.Ltmp183
	.short	.Lset23
.Ltmp183:
	.byte	80
.Ltmp184:
	.long	.Ltmp127
	.long	.Ltmp142
.Lset24 = .Ltmp186-.Ltmp185
	.short	.Lset24
.Ltmp185:
	.byte	84
.Ltmp186:
	.long	0
	.long	0
.Ldebug_loc33:
	.long	.Ltmp131
	.long	.Ltmp132
.Lset25 = .Ltmp188-.Ltmp187
	.short	.Lset25
.Ltmp187:
	.byte	87
.Ltmp188:
	.long	.Ltmp135
	.long	.Ltmp140
.Lset26 = .Ltmp190-.Ltmp189
	.short	.Lset26
.Ltmp189:
	.byte	16
	.byte	1
.Ltmp190:
	.long	.Ltmp140
	.long	.Ltmp141
.Lset27 = .Ltmp192-.Ltmp191
	.short	.Lset27
.Ltmp191:
	.byte	87
.Ltmp192:
	.long	0
	.long	0
.Ldebug_loc37:
	.long	.Ltmp133
	.long	.Ltmp136
.Lset28 = .Ltmp194-.Ltmp193
	.short	.Lset28
.Ltmp193:
	.byte	82
.Ltmp194:
	.long	0
	.long	0
.Ldebug_loc39:
	.long	.Ltmp137
	.long	.Ltmp141
.Lset29 = .Ltmp196-.Ltmp195
	.short	.Lset29
.Ltmp195:
	.byte	88
.Ltmp196:
	.long	0
	.long	0
.Ldebug_loc42:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.long	.Ltmp130
	.long	.Ltmp132
	.long	.Ltmp134
	.long	.Ltmp141
	.long	0
	.long	0
	.section	.debug_macinfo,"",@progbits

	.typestring _i.mgmt_interface._chan.get_response, "l:f{e(){m(APM_MGMT_FAILURE){0},m(APM_MGMT_SUCCESS){1}}}(&(s(yarg){m(dest){chd},m(y){ui}}),ui)"
	.overlay_reference _i.mgmt_interface._chan.get_response,_i.mgmt_interface._client_call.fns
	.typestring _i.mgmt_interface._chan.apm_mgmt, "f{0}(&(s(yarg){m(dest){chd},m(y){ui}}),e(){m(BAYER_MODE){4},m(NOT_USED_COMMAND){0},m(SET_COLOR_MODE){2},m(SET_REGION_OF_INTEREST){3},m(SET_SCREEN_RESOLUTION){1},m(START_OPERATION){5},m(STOP_OPERATION){6}},u:q(0))"
	.overlay_reference _i.mgmt_interface._chan.apm_mgmt,_i.mgmt_interface._client_call.fns
	.typestring _i.pipeline_interface._chan.release_line_buf, "f{0}(&(s(yarg){m(dest){chd},m(y){ui}}),&(x:q(ui)))"
	.overlay_reference _i.pipeline_interface._chan.release_line_buf,_i.pipeline_interface._client_call.fns
	.typestring _i.pipeline_interface._chan.get_new_line, "f{ui}(&(s(yarg){m(dest){chd},m(y){ui}}),&(x:q(ui)),q(s(){m(height){us},m(width){us}}))"
	.overlay_reference _i.pipeline_interface._chan.get_new_line,_i.pipeline_interface._client_call.fns
	.typestring printstrln, "f{si}(a:&(a(:c:uc)))"
	.typestring bayer_testbench_downstream, "f{0}(is(pipeline_interface)s:{m(get_new_line){f{ui}(&(x:q(ui)),q(s(){m(height){us},m(width){us}}))},m(release_line_buf){f{0}(&(x:q(ui)))}})"
	.typestring bayer_testbench_upstream, "f{0}(ic(pipeline_interface)s:{m(get_new_line){f{ui}(&(x:q(ui)),q(s(){m(height){us},m(width){us}}))},m(release_line_buf){f{0}(&(x:q(ui)))}})"
	.overlay_reference bayer_testbench_upstream,_i.pipeline_interface.get_new_line.fns
	.overlay_reference bayer_testbench_upstream,_i.pipeline_interface.release_line_buf.fns
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug"
	.byte	0
.cc_top cc_0,.Lxta.call_labels4
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	70
	.long	.Lxta.call_labels4
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels0
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	75
	.long	.Lxta.call_labels0
.cc_bottom cc_1
.cc_top cc_2,.Lxta.call_labels5
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	75
	.long	.Lxta.call_labels5
.cc_bottom cc_2
.cc_top cc_3,.Lxta.call_labels1
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	76
	.long	.Lxta.call_labels1
.cc_bottom cc_3
.cc_top cc_4,.Lxta.call_labels6
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	76
	.long	.Lxta.call_labels6
.cc_bottom cc_4
.cc_top cc_5,.Lxta.call_labels2
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	82
	.long	.Lxta.call_labels2
.cc_bottom cc_5
.cc_top cc_6,.Lxta.call_labels3
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	85
	.long	.Lxta.call_labels3
.cc_bottom cc_6
.cc_top cc_7,.Lxta.call_labels7
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	87
	.long	.Lxta.call_labels7
.cc_bottom cc_7
.Lentries_end1:
	.section	.xtalabeltable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug"
	.byte	0
.cc_top cc_8,.Lxtalabel0
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	10
	.long	18
	.long	.Lxtalabel0
.cc_bottom cc_8
.cc_top cc_9,.Lxtalabel1
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	19
	.long	21
	.long	.Lxtalabel1
.cc_bottom cc_9
.cc_top cc_10,.Lxtalabel2
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	25
	.long	27
	.long	.Lxtalabel2
.cc_bottom cc_10
.cc_top cc_11,.Lxtalabel7
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	25
	.long	27
	.long	.Lxtalabel7
.cc_bottom cc_11
.cc_top cc_12,.Lxtalabel3
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	28
	.long	32
	.long	.Lxtalabel3
.cc_bottom cc_12
.cc_top cc_13,.Lxtalabel4
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	33
	.long	38
	.long	.Lxtalabel4
.cc_bottom cc_13
.cc_top cc_14,.Lxtalabel5
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	33
	.long	38
	.long	.Lxtalabel5
.cc_bottom cc_14
.cc_top cc_15,.Lxtalabel6
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	33
	.long	38
	.long	.Lxtalabel6
.cc_bottom cc_15
.cc_top cc_16,.Lxtalabel7
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	40
	.long	43
	.long	.Lxtalabel7
.cc_bottom cc_16
.cc_top cc_17,.Lxtalabel8
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	57
	.long	66
	.long	.Lxtalabel8
.cc_bottom cc_17
.cc_top cc_18,.Lxtalabel12
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	67
	.long	73
	.long	.Lxtalabel12
.cc_bottom cc_18
.cc_top cc_19,.Lxtalabel15
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	74
	.long	78
	.long	.Lxtalabel15
.cc_bottom cc_19
.cc_top cc_20,.Lxtalabel14
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	74
	.long	78
	.long	.Lxtalabel14
.cc_bottom cc_20
.cc_top cc_21,.Lxtalabel13
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	74
	.long	78
	.long	.Lxtalabel13
.cc_bottom cc_21
.cc_top cc_22,.Lxtalabel9
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	74
	.long	78
	.long	.Lxtalabel9
.cc_bottom cc_22
.cc_top cc_23,.Lxtalabel16
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	79
	.long	79
	.long	.Lxtalabel16
.cc_bottom cc_23
.cc_top cc_24,.Lxtalabel17
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	80
	.long	80
	.long	.Lxtalabel17
.cc_bottom cc_24
.cc_top cc_25,.Lxtalabel9
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	80
	.long	80
	.long	.Lxtalabel9
.cc_bottom cc_25
.cc_top cc_26,.Lxtalabel10
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	81
	.long	84
	.long	.Lxtalabel10
.cc_bottom cc_26
.cc_top cc_27,.Lxtalabel11
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	85
	.long	85
	.long	.Lxtalabel11
.cc_bottom cc_27
.cc_top cc_28,.Lxtalabel18
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	86
	.long	87
	.long	.Lxtalabel18
.cc_bottom cc_28
.Lentries_end3:
	.section	.xtalooplabeltable,"",@progbits
.Lentries_start4:
	.long	.Lentries_end5-.Lentries_start4
	.long	0
	.ascii	 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug"
	.byte	0
.cc_top cc_29,.Lxta.loop_labels0
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	19
	.long	21
	.long	.Lxta.loop_labels0
.cc_bottom cc_29
.cc_top cc_30,.Lxta.loop_labels1
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	74
	.long	78
	.long	.Lxta.loop_labels1
.cc_bottom cc_30
.cc_top cc_31,.Lxta.loop_labels3
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	74
	.long	78
	.long	.Lxta.loop_labels3
.cc_bottom cc_31
.cc_top cc_32,.Lxta.loop_labels2
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	79
	.long	79
	.long	.Lxta.loop_labels2
.cc_bottom cc_32
.cc_top cc_33,.Lxta.loop_labels1
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	80
	.long	80
	.long	.Lxta.loop_labels1
.cc_bottom cc_33
.cc_top cc_34,.Lxta.loop_labels3
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_testbench.xc"
	.byte	0
	.long	80
	.long	80
	.long	.Lxta.loop_labels3
.cc_bottom cc_34
.Lentries_end5:
