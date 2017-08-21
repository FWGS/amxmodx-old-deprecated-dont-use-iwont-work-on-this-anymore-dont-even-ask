; vim: set ts=4 sw=4 tw=99 noet ft=nasm:
;
; AMX Mod X, based on AMX Mod by Aleksander Naszko ("OLO").
; Copyright (C) The AMX Mod X Development Team.
;
; This software is licensed under the GNU General Public License, version 3 or higher.
; Additional exceptions apply. For full license details, see LICENSE.txt or visit:
;     https://alliedmods.net/amxmodx-license

;
; register_native functions for ARM
;     Based on the concept by Julien "dJeyL" Laurent
;     Thanks to T(+)rget for pushing to implement this
;     Implemented by a1batross
;

GLOBAL_GATE:
amxx_DynaInit:
        @ args = 0, pretend = 0, frame = 8
        @ frame_needed = 1, uses_anonymous_args = 0
        @ link register save eliminated.
        str     fp, [sp, #-4]!
        add     fp, sp, #0
        sub     sp, sp, #12
        str     r0, [fp, #-8]
        ldr     r3, .L2
        ldr     r2, [fp, #-8]
        str     r2, [r3, #0]
        add     sp, fp, #0
        ldmfd   sp!, {fp}
        bx      lr
.L2:
        .word   GLOBAL_GATE


amxx_DynaFunc:
        @ args = 0, pretend = 0, frame = 16
        @ frame_needed = 1, uses_anonymous_args = 0
        stmfd   sp!, {fp, lr}
        add     fp, sp, #4
        sub     sp, sp, #16
        str     r0, [fp, #-16]
        str     r1, [fp, #-20]
        ldr     r3, .L5
        ldr     r3, [r3, #0]
        str     r3, [fp, #-8]
        ldr     r3, [fp, #-8]
        ldr     r0, .L5+4
        ldr     r1, [fp, #-16]
        ldr     r2, [fp, #-20]
        blx     r3
        mov     r3, r0
        mov     r0, r3
        sub     sp, fp, #4
        ldmfd   sp!, {fp, pc}
.L5:
        .word   GLOBAL_GATE
        .word   305419896
