	.file	"F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"

	.inline_definition rgb888_to_rgb565
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
	.set usage.anon.0,0
	.call bayer_interpolation,usage.anon.0
	.call bayer_interpolation,printstrln
	.set usage.anon.0.locnoside, 1
	.set usage.anon.0.locnochandec, 1
	.set bayer_interpolation.locnochandec, 1
	.set usage.anon.0.locnoglobalaccess, 1
	.set bayer_interpolation.locnoglobalaccess, 1
	.set usage.anon.0.locnointerfaceaccess, 1
	.set usage.anon.0.locnonotificationselect, 1
	.set bayer_interpolation.locnonotificationselect, 1


	.file	1 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
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
	.cc_top bayer_interpolation.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI4_0.data
	.align	4
.LCPI4_0:
	.long	4294967292
	.cc_bottom .LCPI4_0.data
	.text
	.globl	bayer_interpolation
	.align	4
	.type	bayer_interpolation,@function
bayer_interpolation:
.Ltmp84:
	.cfi_startproc
.Lfunc_begin4:
	.loc	1 14 0
.Lxtalabel0:
	entsp 1558
.Ltmp85:
	.cfi_def_cfa_offset 6232
.Ltmp86:
	.cfi_offset 15, 0
	.loc	1 14 0 prologue_end
.Ltmp87:
	stw r4, sp[1557]
.Ltmp88:
	.cfi_offset 4, -4
	stw r5, sp[1556]
.Ltmp89:
	.cfi_offset 5, -8
	stw r6, sp[1555]
.Ltmp90:
	.cfi_offset 6, -12
	stw r7, sp[1554]
.Ltmp91:
	.cfi_offset 7, -16
	stw r8, sp[1553]
.Ltmp92:
	.cfi_offset 8, -20
	stw r9, sp[1552]
.Ltmp93:
	.cfi_offset 9, -24
	stw r10, sp[1551]
.Ltmp94:
	.cfi_offset 10, -28
	mov r4, r2
.Ltmp95:
	stw r1, sp[11]
.Ltmp96:
	mov r7, r0
.Ltmp97:
	stw r7, sp[23]
	ldaw r0, sp[799]
	.loc	1 16 0
.Ltmp98:
	stw r0, sp[35]
	stw r0, sp[36]
	ldc r0, 1504
	stw r0, sp[37]
	ldaw r1, sp[1175]
	stw r1, sp[38]
	stw r1, sp[39]
	stw r0, sp[40]
	ldaw r1, sp[47]
	stw r1, sp[41]
	stw r1, sp[42]
	stw r0, sp[43]
	ldaw r1, sp[423]
	stw r1, sp[44]
	stw r1, sp[45]
	stw r0, sp[46]
	ldc r0, 0
	.loc	1 20 0
.Ltmp99:
	stw r0, sp[34]
	stw r0, sp[33]
	stw r0, sp[32]
	stw r0, sp[31]
	stw r0, sp[30]
	stw r0, sp[29]
	stw r0, sp[9]
	stw r0, sp[13]
	mov r1, r0
	mov r2, r0
	mov r11, r0
	stw r0, sp[26]
	mov r8, r0
	bu .LBB4_1
.LBB4_15:
.Lxtalabel1:
	.loc	1 36 0
.Ltmp100:
	ldaw r0, dp[.str]
	ldc r1, 43
.Lxta.call_labels0:
	bl printstrln
	.loc	1 37 0
	ldw r6, r5[0]
.LBB4_16:
.Lxtalabel2:
	.loc	1 52 0
	ldw r0, r7[4]
	ldc r3, 0
	ldw r11, sp[18]
	bt r0, .LBB4_20
.LBB4_17:
	stw r6, sp[9]
	ldw r0, r7[0]
	out res[r0], r3
	outct res[r0], 1
	ldw r2, sp[14]
	ldw r1, sp[12]
.LBB4_1:
	.loc	1 58 0
	stw r8, sp[8]
	mov r0, r8
	zext r0, 8
	eq r0, r0, 0
	eq r0, r0, 0
	stw r0, sp[20]
	bu .LBB4_2
.LBB4_41:
.Ltmp101:
	.loc	1 108 0
	sub r6, r6, 3
.LBB4_42:
	ldw r7, sp[17]
	ldw r7, r7[0]
	ldaw r11, r7[r11]
	ldw r7, sp[18]
	ldw r7, r7[0]
	sub r7, r11, r7
	lsu r6, r7, r6
	ecallf r6
.Ltmp102:
	stw r3, r11[0]
.Ltmp103:
	.loc	1 96 0
	add r2, r2, 2
	ldw r3, sp[24]
.Ltmp104:
	lsu r3, r2, r3
.Lxta.loop_labels0:
	# LOOPMARKER 0
	bt r3, .LBB4_36
.Ltmp105:
.LBB4_43:
.Lxtalabel3:
	ldw r10, sp[11]
.Ltmp106:
	.loc	1 112 0
	ldw r0, r10[0]
	ldw r1, r10[1]
	ldw r2, r1[1]
	ldaw r1, sp[29]
	.loc	1 112 0
.Lxta.call_labels1:
	bla r2
	.loc	1 113 0
	ldw r0, r10[0]
	ldw r1, r10[1]
.Ltmp107:
	ldw r2, r1[1]
.Ltmp108:
	.loc	1 20 0
	ldaw r1, sp[32]
	.loc	1 113 0
.Ltmp109:
.Lxta.call_labels2:
	bla r2
	ldw r1, sp[19]
	ldc r0, 2
	mov r11, r0
	ldw r7, sp[23]
.Ltmp110:
	ldw r2, sp[14]
.LBB4_2:
	stw r1, sp[12]
	.loc	1 68 0
	zext r1, 8
	stw r1, sp[15]
	mkmsk r0, 1
	sub r0, r0, r1
	stw r0, sp[19]
.LBB4_3:
	stw r11, sp[18]
	stw r2, sp[14]
	ldc r1, 2
	ldw r3, sp[19]
	lsu r0, r3, r1
	zext r2, 8
	stw r2, sp[17]
	lsu r1, r2, r1
	stw r1, sp[16]
	and r0, r0, r1
	stw r0, sp[22]
	ldc r0, 12
	mul r0, r2, r0
	ldc r1, 24
	mul r1, r3, r1
	ldaw r2, sp[35]
	add r1, r2, r1
	add r0, r1, r0
	stw r0, sp[25]
	add r2, r0, 8
	add r0, r0, 4
	.loc	1 69 0
	stw r0, sp[24]
	mov r0, r11
	zext r0, 8
	eq r1, r0, 1
	ldw r11, sp[13]
	zext r11, 8
	eq r11, r11, 0
	or r1, r11, r1
	stw r1, sp[21]
	ldc r9, 254
	mov r3, r9
	bu .LBB4_4
.LBB4_12:
	ldw r1, r7[4]
	eq r1, r1, r11
	bf r1, .LBB4_14
.LBB4_13:
	mkmsk r11, 1
	stw r11, r7[4]
	ldc r1, 0
	out res[r8], r1
	out res[r8], r11
	outct res[r8], 1
.Ltmp111:
	ldw r1, sp[20]
	stw r1, sp[26]
	bu .LBB4_4
.LBB4_14:
	ldw r11, r7[3]
	ldw r1, r7[2]
	#APP
	getd r5, res[r1]
	#NO_APP
	setd res[r1], r11
	outct res[r1], 1
	setd res[r1], r5
	bu .LBB4_13
.Ltmp112:
.LBB4_24:
.Lxtalabel4:
.Ltmp113:
	ldw r6, r4[0]
	in r11, res[r6]
	add r1, r11, r3
	zext r1, 8
	sub r5, r11, r1
	setd res[r6], r5
	bt r1, .LBB4_23
	bf r0, .LBB4_48
	outct res[r6], 1
	in r10, res[r6]
	in r11, res[r6]
	in r8, res[r6]
	in r6, res[r6]
	.loc	1 68 0
	ldw r1, sp[22]
	ecallf r1
	ldw r1, r2[0]
	stw r1, sp[27]
	ldw r9, sp[24]
	ldw r5, r9[0]
	mov r3, r4
.Ltmp114:
	ldw r4, sp[25]
	ldw r1, r4[0]
	ldc r7, 0
	stw r7, r4[0]
	mov r4, r3
.Ltmp115:
	stw r7, r9[0]
	stw r7, r2[0]
	stw r1, r10[0]
	stw r5, r10[1]
	ldw r1, sp[27]
	stw r1, r10[2]
	.loc	1 69 0
	ldw r1, sp[21]
	bt r1, .LBB4_31
.Lxtalabel5:
	mkmsk r1, 2
	.loc	1 70 0
	lsu r1, r6, r1
	bf r1, .LBB4_29
	ldc r6, 0
	bu .LBB4_30
.Ltmp116:
.LBB4_44:
	.loc	1 120 0
	bf r0, .LBB4_32
	bu .LBB4_45
.LBB4_21:
.Lxtalabel6:
.Ltmp117:
	.loc	1 64 0
	clre
	ldw r1, r4[0]
	ldap r11, .Ltmp112
	setv res[r1], r11
	eeu res[r1]
	ldaw r7, sp[28]
	bu .LBB4_22
.LBB4_29:
.Lxtalabel7:
	.loc	1 70 0
	sub r6, r6, 3
.LBB4_30:
.Lxtalabel8:
	sub r1, r11, r8
	lsu r1, r1, r6
	ecallf r1
	ldw r1, sp[28]
	ldc r5, 0
	st16 r1, r11[r5]
	add r11, r11, 2
	shr r1, r1, 16
	st16 r1, r11[r5]
	mkmsk r7, 1
.Ltmp118:
.LBB4_31:
.Lxtalabel9:
	ldw r1, r4[0]
	ldc r11, 0
	out res[r1], r11
	out res[r1], r7
	outct res[r1], 1
	ldw r7, sp[23]
.Ltmp119:
	ldc r3, 254
.LBB4_4:
.Lxtalabel10:
	.loc	1 33 0
	clre
	ldw r8, r7[0]
	ldap r11, .Ltmp120
	setv res[r8], r11
	eeu res[r8]
	.loc	1 125 0
	setsr 1
	clrsr 1
	bu .Ltmp121
.Ltmp120:
.LBB4_5:
.Lxtalabel11:
	in r1, res[r8]
	add r6, r1, r3
	zext r6, 8
	sub r1, r1, r6
	setd res[r8], r1
	outct res[r8], 1
	in r11, res[r8]
.Ltmp122:
	bt r6, .LBB4_12
	in r5, res[r8]
	.loc	1 35 0
	eq r0, r11, 4
	ldw r8, sp[8]
	bf r0, .LBB4_8
.Ltmp123:
	bt r5, .LBB4_15
.LBB4_8:
.Lxtalabel12:
.Ltmp124:
	.loc	1 39 0
	eq r0, r11, 5
	ldw r6, sp[9]
	bf r0, .LBB4_18
.Ltmp125:
.Lxtalabel13:
	bt r5, .LBB4_18
.Lxtalabel14:
	.loc	1 40 0
	ldaw r0, dp[.str1]
	ldc r1, 48
.Lxta.call_labels3:
	bl printstrln
	.loc	1 41 0
	eq r0, r6, 1
	bf r0, .LBB4_16
.Lxtalabel15:
	.loc	1 42 0
	ldaw r0, dp[.str2]
	ldc r1, 44
.Lxta.call_labels4:
	bl printstrln
	ldc r0, 0
	stw r0, sp[26]
	mkmsk r0, 1
	mov r6, r0
	mov r8, r0
	bu .LBB4_16
.LBB4_18:
.Lxtalabel16:
.Ltmp126:
	.loc	1 47 0
	eq r0, r11, 6
	bf r0, .LBB4_16
.Ltmp127:
.Lxtalabel17:
	ldc r8, 0
	stw r8, sp[26]
	bu .LBB4_16
.LBB4_20:
	.loc	1 52 0
	ldw r1, r7[3]
	ldw r0, r7[2]
	#APP
	getd r2, res[r0]
	#NO_APP
	setd res[r0], r1
	outct res[r0], 1
	setd res[r0], r2
	stw r3, r7[4]
	bu .LBB4_17
.LBB4_22:
.Ltmp128:
	.loc	1 120 0
	setsr 1
	clrsr 1
	bu .Ltmp116
.LBB4_23:
	mkmsk r0, 1
	.loc	1 81 0
	ldw r1, sp[19]
	lsu r1, r0, r1
	outct res[r6], 1
	in r0, res[r6]
	ecallt r1
	ldw r1, sp[16]
	ecallf r1
	ldw r11, r0[2]
	ldw r5, r0[1]
	ldw r1, r0[0]
	ldc r6, 0
	stw r6, r0[0]
	stw r6, r0[1]
	stw r6, r0[2]
	ldw r0, sp[25]
	stw r1, r0[0]
	ldw r0, sp[24]
	stw r5, r0[0]
	stw r11, r2[0]
	ldw r0, r4[0]
	out res[r0], r6
	mkmsk r1, 1
	.loc	1 82 0
	ldw r2, sp[17]
	sub r2, r1, r2
	outct res[r0], 1
	ldw r11, sp[18]
	.loc	1 83 0
	sub r11, r11, 1
	ldw r7, sp[23]
.Ltmp129:
	bu .LBB4_3
.LBB4_32:
.Lxtalabel18:
.Ltmp130:
	ldw r2, sp[11]
.Ltmp131:
	.loc	1 89 0
	ldw r0, r2[0]
	ldw r1, r2[1]
	mov r5, r2
.Ltmp132:
	ldw r11, r1[0]
	ldc r1, 4
	.loc	1 89 0
	stw r1, sp[1]
	ldaw r1, sp[29]
	mov r2, r7
	mov r3, r7
.Lxta.call_labels5:
	bla r11
	.loc	1 89 0
	stw r0, sp[13]
	zext r0, 8
	ldc r3, 0
	.loc	1 90 0
	bf r0, .LBB4_34
.Lxtalabel19:
	ldc r0, 2
	.loc	1 91 0
	or r0, r7, r0
	ld16s r0, r0[r3]
	zext r0, 16
	stw r0, sp[10]
.LBB4_34:
.Lxtalabel20:
	.loc	1 94 0
	ldw r0, r5[0]
	ldw r1, r5[1]
.Ltmp133:
	ldw r11, r1[0]
	.loc	1 94 0
	stw r3, sp[1]
.Ltmp134:
	.loc	1 20 0
	ldaw r1, sp[32]
	.loc	1 94 0
.Ltmp135:
	mov r2, r3
.Lxta.call_labels6:
	bla r11
	.loc	1 96 0
.Ltmp136:
	ldw r0, sp[10]
	zext r0, 16
	stw r0, sp[24]
	bf r0, .LBB4_43
	ldc r0, 24
	.loc	1 107 0
.Ltmp137:
	ldw r1, sp[15]
	mul r0, r1, r0
	ldaw r1, sp[35]
	add r0, r1, r0
	.loc	1 108 0
	stw r0, sp[22]
	ldaw r1, r0[5]
	stw r1, sp[21]
	ldaw r1, r0[4]
	stw r1, sp[18]
	ldaw r1, r0[3]
	.loc	1 107 0
	stw r1, sp[17]
	add r1, r0, 8
	stw r1, sp[16]
	add r0, r0, 4
	stw r0, sp[12]
	ldc r2, 0
.Ltmp138:
	.loc	1 98 0
	ldw r0, sp[31]
	stw r0, sp[27]
	ldw r0, sp[30]
	stw r0, sp[25]
	ldw r5, sp[29]
.Ltmp139:
	.loc	1 97 0
	ldw r9, sp[34]
	ldw r0, sp[33]
	ldw r1, sp[32]
.LBB4_36:
.Lxtalabel21:
	add r3, r1, r2
	sub r11, r3, r0
	lsu r11, r11, r9
	ecallf r11
	mkmsk r11, 1
	.loc	1 98 0
.Ltmp140:
	or r11, r2, r11
	add r6, r5, r11
	ldw r7, sp[25]
	sub r7, r6, r7
	ldw r8, sp[27]
	lsu r7, r7, r8
	ecallf r7
	.loc	1 99 0
.Ltmp141:
	add r8, r5, r2
	ldw r7, sp[25]
	sub r7, r8, r7
	ldw r10, sp[27]
	lsu r7, r7, r10
	ecallf r7
	.loc	1 100 0
.Ltmp142:
	add r11, r1, r11
	sub r7, r11, r0
	lsu r7, r7, r9
	ecallf r7
	mkmsk r7, 1
	.loc	1 107 0
.Ltmp143:
	ldw r10, sp[15]
	lsu r7, r7, r10
	ecallt r7
	ldc r7, 0
.Ltmp144:
	.loc	1 97 0
	ld8u r3, r3[r7]
	.loc	1 98 0
.Ltmp145:
	ld8u r6, r6[r7]
	ldc r10, 248
	.loc	1 11 0
.Ltmp146:
	and r3, r3, r10
	shl r3, r3, 8
	and r6, r6, r10
	shr r6, r6, 3
	or r6, r6, r3
.Ltmp147:
	.loc	1 100 0
	ld8u r3, r11[r7]
	.loc	1 11 0
.Ltmp148:
	shl r3, r3, 3
	ldc r10, 2016
	and r3, r3, r10
	or r3, r6, r3
.Ltmp149:
	.loc	1 105 0
	shl r11, r3, 16
	or r3, r11, r3
.Ltmp150:
	.loc	1 99 0
	ld8u r11, r8[r7]
	.loc	1 11 0
.Ltmp151:
	shl r11, r11, 3
	and r11, r11, r10
	or r11, r6, r11
.Ltmp152:
	.loc	1 104 0
	shl r6, r11, 16
	or r8, r6, r11
.Ltmp153:
	.loc	1 107 0
	ldw r11, sp[16]
	ldw r11, r11[0]
	mkmsk r6, 2
	lsu r6, r11, r6
	bf r6, .LBB4_38
	ldc r11, 0
	bu .LBB4_39
.LBB4_38:
	sub r11, r11, 3
.LBB4_39:
	shl r6, r2, 1
	ldw r7, cp[.LCPI4_0]
	and r6, r6, r7
	ldw r7, sp[22]
	ldw r7, r7[0]
	add r6, r7, r6
	ldw r7, sp[12]
	ldw r7, r7[0]
	sub r7, r6, r7
	lsu r11, r7, r11
	ecallf r11
.Ltmp154:
	shr r11, r2, 1
	stw r8, r6[0]
	.loc	1 108 0
	ldw r6, sp[21]
	ldw r6, r6[0]
	mkmsk r7, 2
	lsu r7, r6, r7
	bf r7, .LBB4_41
.Ltmp155:
	ldc r6, 0
	bu .LBB4_42
.Ltmp156:
.LBB4_45:
	.loc	1 120 0
	
	.xtabranch .LBB4_24
waiteu
.Ltmp121:
.LBB4_46:
.Ltmp157:
	ldw r1, sp[26]
	zext r1, 8
	.loc	1 125 0
	bt r1, .LBB4_21
	
	.xtabranch .LBB4_5
waiteu
.Ltmp158:
.LBB4_48:
	setd res[r6], r6
	out res[r6], r11
	outct res[r6], 2
	edu res[r6]
	bu .LBB4_22
.Ltmp159:
.Ltmp160:
	.size	bayer_interpolation, .Ltmp160-bayer_interpolation
.Lfunc_end4:
.Ltmp161:
	.cfi_endproc
.Leh_func_end4:

	.align	4
	.cc_bottom bayer_interpolation.function
	.set	bayer_interpolation.nstackwords,((printstrln.nstackwords $M _i.pipeline_interface.get_new_line.max.nstackwords $M _i.pipeline_interface.release_line_buf.max.nstackwords) + 1558)
	.globl	bayer_interpolation.nstackwords
	.set	bayer_interpolation.maxcores,_i.pipeline_interface.get_new_line.max.maxcores $M _i.pipeline_interface.release_line_buf.max.maxcores $M printstrln.maxcores $M 1
	.globl	bayer_interpolation.maxcores
	.set	bayer_interpolation.maxtimers,_i.pipeline_interface.get_new_line.max.maxtimers $M _i.pipeline_interface.release_line_buf.max.maxtimers $M printstrln.maxtimers $M 0
	.globl	bayer_interpolation.maxtimers
	.set	bayer_interpolation.maxchanends,_i.pipeline_interface.get_new_line.max.maxchanends $M _i.pipeline_interface.release_line_buf.max.maxchanends $M printstrln.maxchanends $M 0
	.globl	bayer_interpolation.maxchanends
	.section	.dp.rodata,"awd",@progbits
	.cc_top .str.data
	.align	4
	.type	.str,@object
	.size .str,43
.str:
.asciiz "bayer_if: Bayer mode received from mgmt_if"
	.cc_bottom .str.data
	.cc_top .str1.data
	.align	4
	.type	.str1,@object
	.size .str1,48
.str1:
.asciiz "bayer_if: Start operation received from mgmt_if"
	.cc_bottom .str1.data
	.cc_top .str2.data
	.align	4
	.type	.str2,@object
	.size .str2,44
.str2:
.asciiz "bayer_if: PIXEL_DOUBLE mode received....!!!"
	.cc_bottom .str2.data
	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	2435
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Enterprise_13.1.0 (build 11949, Apr-08-2014)"
	.byte	0
	.short	49152
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
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
	.long	382
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
	.long	961
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
	.long	2284
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
	.long	2292
	.long	.Ldebug_loc15+0
	.byte	0
	.byte	2
	.ascii	 "_i.pipeline_interface._chan.get_new_line"
	.byte	0
	.ascii	 "_i.pipeline_interface._chan.get_new_line"
	.byte	0
	.byte	2
	.long	4294967295
	.long	961
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
	.long	2292
	.long	.Ldebug_loc20+0
	.byte	8
	.ascii	 "param2"
	.byte	0
	.byte	2
	.long	16777215
	.long	2350
	.byte	0
	.byte	9
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	10
	.ascii	 "rgb888_to_rgb565"
	.byte	0
	.ascii	 "rgb888_to_rgb565"
	.byte	0
	.byte	1
	.byte	10
	.long	1047
	.byte	1
	.byte	11
	.byte	114
	.byte	0
	.byte	1
	.byte	10
	.long	2356
	.byte	11
	.byte	103
	.byte	0
	.byte	1
	.byte	10
	.long	2356
	.byte	11
	.byte	98
	.byte	0
	.byte	1
	.byte	10
	.long	2356
	.byte	0
	.byte	9
	.ascii	 "unsigned short"
	.byte	0
	.byte	7
	.byte	2
	.byte	12
	.ascii	 "bayer_interpolation"
	.byte	0
	.ascii	 "bayer_interpolation"
	.byte	0
	.byte	1
	.byte	14
	.byte	1
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.byte	1
	.byte	94
	.byte	1
	.byte	13
	.ascii	 "bayer_if"
	.byte	0
	.byte	1
	.byte	14
	.long	2373
	.long	.Ldebug_loc23+0
	.byte	13
	.ascii	 "apm_ds"
	.byte	0
	.byte	1
	.byte	14
	.long	2373
	.long	.Ldebug_loc37+0
	.byte	13
	.ascii	 "apm_us"
	.byte	0
	.byte	1
	.byte	14
	.long	2373
	.long	.Ldebug_loc46+0
	.byte	14
	.long	.Ltmp98
	.long	.Ltmp158
	.byte	14
	.long	.Ltmp98
	.long	.Ltmp158
	.byte	15
	.ascii	 "rgb565buf_0"
	.byte	0
	.byte	1
	.byte	15
	.long	2389
	.byte	15
	.ascii	 "rgb565buf_1"
	.byte	0
	.byte	1
	.byte	15
	.long	2389
	.byte	14
	.long	.Ltmp98
	.long	.Ltmp158
	.byte	16
	.ascii	 "rgb565buf_ptr"
	.byte	0
	.byte	1
	.byte	16
	.long	2408
	.byte	3
	.byte	145
	.ascii	 "\214\001"
	.byte	14
	.long	.Ltmp99
	.long	.Ltmp158
	.byte	16
	.ascii	 "bayer_buf_ptr"
	.byte	0
	.byte	1
	.byte	20
	.long	2426
	.byte	3
	.byte	145
.asciiz "\364"
	.byte	17
	.long	.Ldebug_range+600
	.byte	15
	.ascii	 "operation_started"
	.byte	0
	.byte	1
	.byte	21
	.long	2356
	.byte	17
	.long	.Ldebug_range+568
	.byte	15
	.ascii	 "operation_start_responded"
	.byte	0
	.byte	1
	.byte	22
	.long	2356
	.byte	17
	.long	.Ldebug_range+536
	.byte	15
	.ascii	 "rgb_data_available"
	.byte	0
	.byte	1
	.byte	23
	.long	2356
	.byte	17
	.long	.Ldebug_range+504
	.byte	15
	.ascii	 "rgb_buf_ptr_index"
	.byte	0
	.byte	1
	.byte	24
	.long	2356
	.byte	15
	.ascii	 "rgb_buf_ptr_index1"
	.byte	0
	.byte	1
	.byte	24
	.long	2356
	.byte	17
	.long	.Ldebug_range+472
	.byte	15
	.ascii	 "ROI_rcvd"
	.byte	0
	.byte	1
	.byte	25
	.long	2356
	.byte	17
	.long	.Ldebug_range+440
	.byte	15
	.ascii	 "ht"
	.byte	0
	.byte	1
	.byte	26
	.long	1047
	.byte	15
	.ascii	 "wd"
	.byte	0
	.byte	1
	.byte	26
	.long	1047
	.byte	15
	.ascii	 "row"
	.byte	0
	.byte	1
	.byte	26
	.long	1047
	.byte	17
	.long	.Ldebug_range+408
	.byte	15
	.ascii	 "bayer_mode_l"
	.byte	0
	.byte	1
	.byte	27
	.long	2018
	.byte	17
	.long	.Ldebug_range+376
	.byte	18
	.ascii	 "bayer_if_status"
	.byte	0
	.byte	1
	.byte	56
	.long	2085
	.byte	1
	.byte	1
	.byte	18
	.ascii	 "flag"
	.byte	0
	.byte	1
	.byte	66
	.long	961
	.byte	1
	.byte	1
	.byte	19
	.ascii	 "command"
	.byte	0
	.byte	1
	.byte	34
	.long	2137
	.long	.Ldebug_loc57+0
	.byte	15
	.ascii	 "metadata"
	.byte	0
	.byte	1
	.byte	28
	.long	2297
	.byte	15
	.ascii	 "param"
	.byte	0
	.byte	1
	.byte	34
	.long	2284
	.byte	15
	.ascii	 "buf_ptr"
	.byte	0
	.byte	1
	.byte	79
	.long	2292
	.byte	15
	.ascii	 "buf_ptr"
	.byte	0
	.byte	1
	.byte	66
	.long	2292
	.byte	15
	.ascii	 "mtdata"
	.byte	0
	.byte	1
	.byte	66
	.long	2350
	.byte	17
	.long	.Ldebug_range+352
	.byte	15
	.byte	99
	.byte	0
	.byte	1
	.byte	96
	.long	961
	.byte	17
	.long	.Ldebug_range+328
	.byte	15
	.byte	114
	.byte	0
	.byte	1
	.byte	97
	.long	2356
	.byte	17
	.long	.Ldebug_range+288
	.byte	15
	.byte	98
	.byte	0
	.byte	1
	.byte	98
	.long	2356
	.byte	17
	.long	.Ldebug_range+248
	.byte	15
	.ascii	 "g0"
	.byte	0
	.byte	1
	.byte	99
	.long	2356
	.byte	17
	.long	.Ldebug_range+200
	.byte	15
	.ascii	 "g1"
	.byte	0
	.byte	1
	.byte	100
	.long	2356
	.byte	17
	.long	.Ldebug_range+144
	.byte	15
	.ascii	 "rgb565_0"
	.byte	0
	.byte	1
	.byte	102
	.long	1047
	.byte	17
	.long	.Ldebug_range+96
	.byte	15
	.ascii	 "rgb565_1"
	.byte	0
	.byte	1
	.byte	103
	.long	1047
	.byte	17
	.long	.Ldebug_range+48
	.byte	19
	.ascii	 "rgb565_0_double"
	.byte	0
	.byte	1
	.byte	104
	.long	961
	.long	.Ldebug_loc61+0
	.byte	17
	.long	.Ldebug_range+0
	.byte	19
	.ascii	 "rgb565_1_double"
	.byte	0
	.byte	1
	.byte	105
	.long	961
	.long	.Ldebug_loc52+0
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
	.byte	0
	.byte	0
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
	.byte	20
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
	.byte	20
	.ascii	 "__TYPE_5"
	.byte	0
	.byte	4
	.byte	1
	.byte	56
	.byte	5
	.ascii	 "APM_MGMT_FAILURE"
	.byte	0
	.byte	0
	.byte	5
	.ascii	 "APM_MGMT_SUCCESS"
	.byte	0
	.byte	1
	.byte	0
	.byte	20
	.ascii	 "__TYPE_4"
	.byte	0
	.byte	4
	.byte	1
	.byte	34
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
	.byte	4
	.byte	22
	.long	961
	.byte	12
	.byte	23
	.long	2286
	.byte	24
	.ascii	 "__TYPE_8"
	.byte	0
	.byte	4
	.byte	25
	.ascii	 "height"
	.byte	0
	.long	1047
	.byte	2
	.long	4294967295
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	25
	.ascii	 "width"
	.byte	0
	.long	1047
	.byte	2
	.long	4294967295
	.byte	2
	.byte	35
	.byte	2
	.byte	1
	.byte	0
	.byte	22
	.long	2297
	.byte	12
	.byte	9
	.ascii	 "unsigned char"
	.byte	0
	.byte	8
	.byte	1
	.byte	9
	.ascii	 "interface"
	.byte	0
	.byte	7
	.byte	4
	.byte	26
	.byte	4
	.byte	5
	.byte	27
	.long	961
	.byte	28
	.long	2386
	.byte	1
	.byte	29
	.long	2386
	.short	375
	.byte	0
	.byte	27
	.long	2286
	.byte	28
	.long	2386
	.byte	1
	.byte	28
	.long	2386
	.byte	1
	.byte	0
	.byte	27
	.long	2286
	.byte	28
	.long	2386
	.byte	1
	.byte	0
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
	.byte	73
	.byte	19
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
	.byte	10
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
	.byte	19
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
	.byte	20
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
	.byte	21
	.byte	15
	.byte	0
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	22
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	23
	.byte	16
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	24
	.byte	19
	.byte	1
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	25
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
	.byte	26
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	27
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	28
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	11
	.byte	0
	.byte	0
	.byte	29
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	5
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
	.long	818
.asciiz "_i.pipeline_interface._chan.get_new_line"
	.long	432
.asciiz "_i.mgmt_interface._chan.apm_mgmt"
	.long	688
.asciiz "_i.pipeline_interface._chan.release_line_buf"
	.long	1065
.asciiz "bayer_interpolation"
	.long	247
.asciiz "_i.mgmt_interface._chan.get_response"
	.long	977
.asciiz "rgb888_to_rgb565"
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
	.long	382
.asciiz "__TYPE_5"
	.long	2297
.asciiz "__TYPE_8"
	.long	0
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp12
.Lset4 = .Ltmp163-.Ltmp162
	.short	.Lset4
.Ltmp162:
	.byte	80
.Ltmp163:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin0
	.long	.Ltmp11
.Lset5 = .Ltmp165-.Ltmp164
	.short	.Lset5
.Ltmp164:
	.byte	81
.Ltmp165:
	.long	.Ltmp11
	.long	.Ltmp13
.Lset6 = .Ltmp167-.Ltmp166
	.short	.Lset6
.Ltmp166:
	.byte	85
.Ltmp167:
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Lfunc_begin1
	.long	.Ltmp32
.Lset7 = .Ltmp169-.Ltmp168
	.short	.Lset7
.Ltmp168:
	.byte	80
.Ltmp169:
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Lfunc_begin1
	.long	.Ltmp31
.Lset8 = .Ltmp171-.Ltmp170
	.short	.Lset8
.Ltmp170:
	.byte	81
.Ltmp171:
	.long	.Ltmp31
	.long	.Ltmp33
.Lset9 = .Ltmp173-.Ltmp172
	.short	.Lset9
.Ltmp172:
	.byte	87
.Ltmp173:
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Lfunc_begin1
	.long	.Ltmp30
.Lset10 = .Ltmp175-.Ltmp174
	.short	.Lset10
.Ltmp174:
	.byte	82
.Ltmp175:
	.long	.Ltmp30
	.long	.Ltmp34
.Lset11 = .Ltmp177-.Ltmp176
	.short	.Lset11
.Ltmp176:
	.byte	85
.Ltmp177:
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Lfunc_begin2
	.long	.Ltmp50
.Lset12 = .Ltmp179-.Ltmp178
	.short	.Lset12
.Ltmp178:
	.byte	80
.Ltmp179:
	.long	0
	.long	0
.Ldebug_loc15:
	.long	.Lfunc_begin2
	.long	.Ltmp49
.Lset13 = .Ltmp181-.Ltmp180
	.short	.Lset13
.Ltmp180:
	.byte	81
.Ltmp181:
	.long	.Ltmp49
	.long	.Ltmp51
.Lset14 = .Ltmp183-.Ltmp182
	.short	.Lset14
.Ltmp182:
	.byte	85
.Ltmp183:
	.long	0
	.long	0
.Ldebug_loc18:
	.long	.Lfunc_begin3
	.long	.Ltmp71
.Lset15 = .Ltmp185-.Ltmp184
	.short	.Lset15
.Ltmp184:
	.byte	80
.Ltmp185:
	.long	0
	.long	0
.Ldebug_loc20:
	.long	.Lfunc_begin3
	.long	.Ltmp70
.Lset16 = .Ltmp187-.Ltmp186
	.short	.Lset16
.Ltmp186:
	.byte	81
.Ltmp187:
	.long	.Ltmp70
	.long	.Ltmp72
.Lset17 = .Ltmp189-.Ltmp188
	.short	.Lset17
.Ltmp188:
	.byte	88
.Ltmp189:
	.long	0
	.long	0
.Ldebug_loc23:
	.long	.Lfunc_begin4
	.long	.Ltmp97
.Lset18 = .Ltmp191-.Ltmp190
	.short	.Lset18
.Ltmp190:
	.byte	80
.Ltmp191:
	.long	.Ltmp97
	.long	.Ltmp101
.Lset19 = .Ltmp193-.Ltmp192
	.short	.Lset19
.Ltmp192:
	.byte	87
.Ltmp193:
	.long	.Ltmp101
	.long	.Ltmp110
.Lset20 = .Ltmp195-.Ltmp194
	.short	.Lset20
.Ltmp194:
	.byte	126
.asciiz "\334"
.Ltmp195:
	.long	.Ltmp110
	.long	.Ltmp113
.Lset21 = .Ltmp197-.Ltmp196
	.short	.Lset21
.Ltmp196:
	.byte	87
.Ltmp197:
	.long	.Ltmp113
	.long	.Ltmp117
.Lset22 = .Ltmp199-.Ltmp198
	.short	.Lset22
.Ltmp198:
	.byte	126
.asciiz "\334"
.Ltmp199:
	.long	.Ltmp117
	.long	.Ltmp117
.Lset23 = .Ltmp201-.Ltmp200
	.short	.Lset23
.Ltmp200:
	.byte	87
.Ltmp201:
	.long	.Ltmp117
	.long	.Ltmp119
.Lset24 = .Ltmp203-.Ltmp202
	.short	.Lset24
.Ltmp202:
	.byte	126
.asciiz "\334"
.Ltmp203:
	.long	.Ltmp119
	.long	.Ltmp128
.Lset25 = .Ltmp205-.Ltmp204
	.short	.Lset25
.Ltmp204:
	.byte	87
.Ltmp205:
	.long	.Ltmp128
	.long	.Ltmp129
.Lset26 = .Ltmp207-.Ltmp206
	.short	.Lset26
.Ltmp206:
	.byte	126
.asciiz "\334"
.Ltmp207:
	.long	.Ltmp129
	.long	.Ltmp130
.Lset27 = .Ltmp209-.Ltmp208
	.short	.Lset27
.Ltmp208:
	.byte	87
.Ltmp209:
	.long	.Ltmp130
	.long	.Ltmp157
.Lset28 = .Ltmp211-.Ltmp210
	.short	.Lset28
.Ltmp210:
	.byte	126
.asciiz "\334"
.Ltmp211:
	.long	.Ltmp157
	.long	.Ltmp158
.Lset29 = .Ltmp213-.Ltmp212
	.short	.Lset29
.Ltmp212:
	.byte	87
.Ltmp213:
	.long	.Ltmp158
	.long	.Lfunc_end4
.Lset30 = .Ltmp215-.Ltmp214
	.short	.Lset30
.Ltmp214:
	.byte	126
.asciiz "\334"
.Ltmp215:
	.long	0
	.long	0
.Ldebug_loc37:
	.long	.Lfunc_begin4
	.long	.Ltmp96
.Lset31 = .Ltmp217-.Ltmp216
	.short	.Lset31
.Ltmp216:
	.byte	81
.Ltmp217:
	.long	.Ltmp96
	.long	.Ltmp106
.Lset32 = .Ltmp219-.Ltmp218
	.short	.Lset32
.Ltmp218:
	.byte	126
	.byte	44
.Ltmp219:
	.long	.Ltmp106
	.long	.Ltmp107
.Lset33 = .Ltmp221-.Ltmp220
	.short	.Lset33
.Ltmp220:
	.byte	90
.Ltmp221:
	.long	.Ltmp107
	.long	.Ltmp131
.Lset34 = .Ltmp223-.Ltmp222
	.short	.Lset34
.Ltmp222:
	.byte	126
	.byte	44
.Ltmp223:
	.long	.Ltmp131
	.long	.Ltmp132
.Lset35 = .Ltmp225-.Ltmp224
	.short	.Lset35
.Ltmp224:
	.byte	82
.Ltmp225:
	.long	.Ltmp132
	.long	.Ltmp133
.Lset36 = .Ltmp227-.Ltmp226
	.short	.Lset36
.Ltmp226:
	.byte	85
.Ltmp227:
	.long	.Ltmp133
	.long	.Lfunc_end4
.Lset37 = .Ltmp229-.Ltmp228
	.short	.Lset37
.Ltmp228:
	.byte	126
	.byte	44
.Ltmp229:
	.long	0
	.long	0
.Ldebug_loc46:
	.long	.Lfunc_begin4
	.long	.Ltmp95
.Lset38 = .Ltmp231-.Ltmp230
	.short	.Lset38
.Ltmp230:
	.byte	82
.Ltmp231:
	.long	.Ltmp95
	.long	.Ltmp114
.Lset39 = .Ltmp233-.Ltmp232
	.short	.Lset39
.Ltmp232:
	.byte	84
.Ltmp233:
	.long	.Ltmp114
	.long	.Ltmp115
.Lset40 = .Ltmp235-.Ltmp234
	.short	.Lset40
.Ltmp234:
	.byte	83
.Ltmp235:
	.long	.Ltmp115
	.long	.Ltmp159
.Lset41 = .Ltmp237-.Ltmp236
	.short	.Lset41
.Ltmp236:
	.byte	84
.Ltmp237:
	.long	0
	.long	0
.Ldebug_loc52:
	.long	.Ltmp101
	.long	.Ltmp104
.Lset42 = .Ltmp239-.Ltmp238
	.short	.Lset42
.Ltmp238:
	.byte	83
.Ltmp239:
	.long	.Ltmp150
	.long	.Ltmp156
.Lset43 = .Ltmp241-.Ltmp240
	.short	.Lset43
.Ltmp240:
	.byte	83
.Ltmp241:
	.long	0
	.long	0
.Ldebug_loc57:
	.long	.Ltmp122
	.long	.Ltmp123
.Lset44 = .Ltmp243-.Ltmp242
	.short	.Lset44
.Ltmp242:
	.byte	91
.Ltmp243:
	.long	.Ltmp124
	.long	.Ltmp125
.Lset45 = .Ltmp245-.Ltmp244
	.short	.Lset45
.Ltmp244:
	.byte	91
.Ltmp245:
	.long	.Ltmp126
	.long	.Ltmp127
.Lset46 = .Ltmp247-.Ltmp246
	.short	.Lset46
.Ltmp246:
	.byte	91
.Ltmp247:
	.long	0
	.long	0
.Ldebug_loc61:
	.long	.Ltmp153
	.long	.Ltmp155
.Lset47 = .Ltmp249-.Ltmp248
	.short	.Lset47
.Ltmp248:
	.byte	88
.Ltmp249:
	.long	0
	.long	0
.Ldebug_loc64:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.long	.Ltmp101
	.long	.Ltmp103
	.long	.Ltmp137
	.long	.Ltmp138
	.long	.Ltmp143
	.long	.Ltmp144
	.long	.Ltmp149
	.long	.Ltmp150
	.long	.Ltmp153
	.long	.Ltmp155
	.long	0
	.long	0
	.long	.Ltmp101
	.long	.Ltmp103
	.long	.Ltmp137
	.long	.Ltmp138
	.long	.Ltmp143
	.long	.Ltmp144
	.long	.Ltmp149
	.long	.Ltmp150
	.long	.Ltmp152
	.long	.Ltmp155
	.long	0
	.long	0
	.long	.Ltmp101
	.long	.Ltmp103
	.long	.Ltmp137
	.long	.Ltmp138
	.long	.Ltmp143
	.long	.Ltmp144
	.long	.Ltmp148
	.long	.Ltmp150
	.long	.Ltmp152
	.long	.Ltmp155
	.long	0
	.long	0
	.long	.Ltmp101
	.long	.Ltmp103
	.long	.Ltmp137
	.long	.Ltmp138
	.long	.Ltmp143
	.long	.Ltmp144
	.long	.Ltmp146
	.long	.Ltmp147
	.long	.Ltmp148
	.long	.Ltmp150
	.long	.Ltmp151
	.long	.Ltmp155
	.long	0
	.long	0
	.long	.Ltmp101
	.long	.Ltmp103
	.long	.Ltmp137
	.long	.Ltmp138
	.long	.Ltmp142
	.long	.Ltmp144
	.long	.Ltmp146
	.long	.Ltmp150
	.long	.Ltmp151
	.long	.Ltmp155
	.long	0
	.long	0
	.long	.Ltmp101
	.long	.Ltmp103
	.long	.Ltmp137
	.long	.Ltmp138
	.long	.Ltmp141
	.long	.Ltmp144
	.long	.Ltmp146
	.long	.Ltmp155
	.long	0
	.long	0
	.long	.Ltmp101
	.long	.Ltmp103
	.long	.Ltmp137
	.long	.Ltmp139
	.long	.Ltmp140
	.long	.Ltmp144
	.long	.Ltmp145
	.long	.Ltmp155
	.long	0
	.long	0
	.long	.Ltmp101
	.long	.Ltmp103
	.long	.Ltmp137
	.long	.Ltmp155
	.long	0
	.long	0
	.long	.Ltmp101
	.long	.Ltmp105
	.long	.Ltmp136
	.long	.Ltmp155
	.long	0
	.long	0
	.long	.Ltmp100
	.long	.Ltmp108
	.long	.Ltmp109
	.long	.Ltmp134
	.long	.Ltmp135
	.long	.Ltmp158
	.long	0
	.long	0
	.long	.Ltmp100
	.long	.Ltmp108
	.long	.Ltmp109
	.long	.Ltmp134
	.long	.Ltmp135
	.long	.Ltmp158
	.long	0
	.long	0
	.long	.Ltmp100
	.long	.Ltmp108
	.long	.Ltmp109
	.long	.Ltmp134
	.long	.Ltmp135
	.long	.Ltmp158
	.long	0
	.long	0
	.long	.Ltmp100
	.long	.Ltmp108
	.long	.Ltmp109
	.long	.Ltmp134
	.long	.Ltmp135
	.long	.Ltmp158
	.long	0
	.long	0
	.long	.Ltmp100
	.long	.Ltmp108
	.long	.Ltmp109
	.long	.Ltmp134
	.long	.Ltmp135
	.long	.Ltmp158
	.long	0
	.long	0
	.long	.Ltmp100
	.long	.Ltmp108
	.long	.Ltmp109
	.long	.Ltmp134
	.long	.Ltmp135
	.long	.Ltmp158
	.long	0
	.long	0
	.long	.Ltmp100
	.long	.Ltmp108
	.long	.Ltmp109
	.long	.Ltmp134
	.long	.Ltmp135
	.long	.Ltmp158
	.long	0
	.long	0
	.long	.Ltmp100
	.long	.Ltmp108
	.long	.Ltmp109
	.long	.Ltmp134
	.long	.Ltmp135
	.long	.Ltmp158
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
	.typestring bayer_interpolation, "f{0}(is(mgmt_interface){m(apm_mgmt){f{0}(e(){m(BAYER_MODE){4},m(NOT_USED_COMMAND){0},m(SET_COLOR_MODE){2},m(SET_REGION_OF_INTEREST){3},m(SET_SCREEN_RESOLUTION){1},m(START_OPERATION){5},m(STOP_OPERATION){6}},u:q(0))},m(request_response){st:f{0}()},m(get_response){l:f{e(){m(APM_MGMT_FAILURE){0},m(APM_MGMT_SUCCESS){1}}}()}},ic(pipeline_interface)s:{m(get_new_line){f{ui}(&(x:q(ui)),q(s(){m(height){us},m(width){us}}))},m(release_line_buf){f{0}(&(x:q(ui)))}},is(pipeline_interface)s:{m(get_new_line){f{ui}(&(x:q(ui)),q(s(){m(height){us},m(width){us}}))},m(release_line_buf){f{0}(&(x:q(ui)))}})"
	.overlay_reference bayer_interpolation,_i.pipeline_interface.get_new_line.fns
	.overlay_reference bayer_interpolation,_i.pipeline_interface.release_line_buf.fns
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug"
	.byte	0
.cc_top cc_0,.Lxta.call_labels0
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	36
	.long	.Lxta.call_labels0
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels3
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	40
	.long	.Lxta.call_labels3
.cc_bottom cc_1
.cc_top cc_2,.Lxta.call_labels4
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	42
	.long	.Lxta.call_labels4
.cc_bottom cc_2
.cc_top cc_3,.Lxta.call_labels5
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	89
	.long	.Lxta.call_labels5
.cc_bottom cc_3
.cc_top cc_4,.Lxta.call_labels6
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	94
	.long	.Lxta.call_labels6
.cc_bottom cc_4
.cc_top cc_5,.Lxta.call_labels1
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	112
	.long	.Lxta.call_labels1
.cc_bottom cc_5
.cc_top cc_6,.Lxta.call_labels2
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	113
	.long	.Lxta.call_labels2
.cc_bottom cc_6
.Lentries_end1:
	.section	.xtalabeltable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug"
	.byte	0
.cc_top cc_7,.Lxtalabel0
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	15
	.long	31
	.long	.Lxtalabel0
.cc_bottom cc_7
.cc_top cc_8,.Lxtalabel10
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	32
	.long	34
	.long	.Lxtalabel10
.cc_bottom cc_8
.cc_top cc_9,.Lxtalabel11
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	35
	.long	35
	.long	.Lxtalabel11
.cc_bottom cc_9
.cc_top cc_10,.Lxtalabel1
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	36
	.long	38
	.long	.Lxtalabel1
.cc_bottom cc_10
.cc_top cc_11,.Lxtalabel12
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	39
	.long	39
	.long	.Lxtalabel12
.cc_bottom cc_11
.cc_top cc_12,.Lxtalabel13
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	39
	.long	39
	.long	.Lxtalabel13
.cc_bottom cc_12
.cc_top cc_13,.Lxtalabel14
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	40
	.long	41
	.long	.Lxtalabel14
.cc_bottom cc_13
.cc_top cc_14,.Lxtalabel15
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	42
	.long	45
	.long	.Lxtalabel15
.cc_bottom cc_14
.cc_top cc_15,.Lxtalabel16
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	47
	.long	47
	.long	.Lxtalabel16
.cc_bottom cc_15
.cc_top cc_16,.Lxtalabel17
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	48
	.long	50
	.long	.Lxtalabel17
.cc_bottom cc_16
.cc_top cc_17,.Lxtalabel2
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	51
	.long	56
	.long	.Lxtalabel2
.cc_bottom cc_17
.cc_top cc_18,.Lxtalabel4
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	67
	.long	69
	.long	.Lxtalabel4
.cc_bottom cc_18
.cc_top cc_19,.Lxtalabel5
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	70
	.long	73
	.long	.Lxtalabel5
.cc_bottom cc_19
.cc_top cc_20,.Lxtalabel7
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	70
	.long	73
	.long	.Lxtalabel7
.cc_bottom cc_20
.cc_top cc_21,.Lxtalabel8
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	70
	.long	73
	.long	.Lxtalabel8
.cc_bottom cc_21
.cc_top cc_22,.Lxtalabel9
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	77
	.long	79
	.long	.Lxtalabel9
.cc_bottom cc_22
.cc_top cc_23,.Lxtalabel19
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	91
	.long	93
	.long	.Lxtalabel19
.cc_bottom cc_23
.cc_top cc_24,.Lxtalabel20
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	94
	.long	96
	.long	.Lxtalabel20
.cc_bottom cc_24
.cc_top cc_25,.Lxtalabel21
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	97
	.long	110
	.long	.Lxtalabel21
.cc_bottom cc_25
.cc_top cc_26,.Lxtalabel3
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	111
	.long	119
	.long	.Lxtalabel3
.cc_bottom cc_26
.cc_top cc_27,.Lxtalabel18
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	120
	.long	122
	.long	.Lxtalabel18
.cc_bottom cc_27
.cc_top cc_28,.Lxtalabel6
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	125
	.long	127
	.long	.Lxtalabel6
.cc_bottom cc_28
.Lentries_end3:
	.section	.xtalooplabeltable,"",@progbits
.Lentries_start4:
	.long	.Lentries_end5-.Lentries_start4
	.long	0
	.ascii	 "F:\\Sudha\\workspace\\xCORExa-vision\\app_bayer_testbench\\.build_Debug"
	.byte	0
.cc_top cc_29,.Lxta.loop_labels0
	.ascii	 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
	.byte	0
	.long	97
	.long	110
	.long	.Lxta.loop_labels0
.cc_bottom cc_29
.Lentries_end5:
