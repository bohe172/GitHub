﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\SLIDER_Skin.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

EXTRN	_SLIDER__DefaultProps:BYTE
_DATA	SEGMENT
__Skin	DD	FLAT:__Paint
	DD	FLAT:__Create
	DD	FLAT:_SLIDER__DefaultProps+16
_DATA	ENDS
PUBLIC	__$ArrayPad$
EXTRN	_WM_SetUserClipRect:PROC
EXTRN	_WM_GetClientRectEx:PROC
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_SLIDER_LockH:PROC
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\slider_skin.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT __Paint
_TEXT	SEGMENT
tv137 = -408						; size = 4
tv91 = -408						; size = 4
_HasFocus$ = -208					; size = 4
_s1$ = -196						; size = 4
_s0$ = -184						; size = 4
_Range$ = -172						; size = 4
_v$ = -160						; size = 4
_Max$ = -148						; size = 4
_Min$ = -136						; size = 4
_SkinInfo$ = -124					; size = 20
_RectClip$ = -96					; size = 8
_RectClient$ = -80					; size = 8
_ItemInfo$ = -64					; size = 32
_pfDrawSkin$ = -24					; size = 4
_pObj$ = -12						; size = 4
__$ArrayPad$ = -4					; size = 4
_hObj$ = 8						; size = 4
__Paint	PROC						; COMDAT
; Line 50
	push	ebp
	mov	ebp, esp
	sub	esp, 408				; 00000198H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-408]
	mov	ecx, 102				; 00000066H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 62
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 63
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+72]
	mov	DWORD PTR _pfDrawSkin$[ebp], ecx
; Line 64
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+80]
	mov	DWORD PTR _Min$[ebp], ecx
; Line 65
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+84]
	mov	DWORD PTR _Max$[ebp], ecx
; Line 66
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+88]
	mov	DWORD PTR _v$[ebp], ecx
; Line 67
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+96]
	mov	DWORD PTR _SkinInfo$[ebp+4], ecx
; Line 68
	mov	eax, DWORD PTR _pObj$[ebp]
	movsx	ecx, WORD PTR [eax+100]
	mov	DWORD PTR _SkinInfo$[ebp], ecx
; Line 69
	mov	eax, DWORD PTR _pObj$[ebp]
	movzx	ecx, WORD PTR [eax+54]
	and	ecx, 256				; 00000100H
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	mov	DWORD PTR _SkinInfo$[ebp+12], ecx
; Line 70
	mov	eax, DWORD PTR _pObj$[ebp]
	movzx	ecx, WORD PTR [eax+54]
	and	ecx, 8
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	mov	DWORD PTR _SkinInfo$[ebp+16], ecx
; Line 71
	mov	eax, DWORD PTR _pObj$[ebp]
	movzx	ecx, WORD PTR [eax+54]
	and	ecx, 1
	mov	DWORD PTR _HasFocus$[ebp], ecx
; Line 72
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 73
	lea	eax, DWORD PTR _RectClient$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	call	_WM_GetClientRectEx
	add	esp, 8
; Line 74
	mov	eax, DWORD PTR _Max$[ebp]
	sub	eax, DWORD PTR _Min$[ebp]
	je	SHORT $LN10@Paint
	mov	ecx, DWORD PTR _Max$[ebp]
	sub	ecx, DWORD PTR _Min$[ebp]
	mov	DWORD PTR tv91[ebp], ecx
	jmp	SHORT $LN11@Paint
$LN10@Paint:
	mov	DWORD PTR tv91[ebp], 1
$LN11@Paint:
	mov	edx, DWORD PTR tv91[ebp]
	mov	DWORD PTR _Range$[ebp], edx
; Line 77
	cmp	DWORD PTR _SkinInfo$[ebp+16], 0
	je	SHORT $LN12@Paint
	movsx	eax, WORD PTR _RectClient$[ebp+6]
	movsx	ecx, WORD PTR _RectClient$[ebp+2]
	sub	eax, ecx
	add	eax, 1
	sub	eax, DWORD PTR _SkinInfo$[ebp]
	sub	eax, 2
	mov	DWORD PTR tv137[ebp], eax
	jmp	SHORT $LN13@Paint
$LN12@Paint:
	movsx	edx, WORD PTR _RectClient$[ebp+4]
	movsx	eax, WORD PTR _RectClient$[ebp]
	sub	edx, eax
	add	edx, 1
	sub	edx, DWORD PTR _SkinInfo$[ebp]
	sub	edx, 2
	mov	DWORD PTR tv137[ebp], edx
$LN13@Paint:
	mov	ecx, DWORD PTR tv137[ebp]
	mov	DWORD PTR _SkinInfo$[ebp+8], ecx
; Line 78
	cmp	DWORD PTR _SkinInfo$[ebp+4], 0
	jge	SHORT $LN7@Paint
; Line 79
	mov	eax, DWORD PTR _Range$[ebp]
	add	eax, 1
	mov	DWORD PTR _SkinInfo$[ebp+4], eax
; Line 80
	mov	eax, DWORD PTR _SkinInfo$[ebp+8]
	cdq
	mov	ecx, 5
	idiv	ecx
	cmp	DWORD PTR _SkinInfo$[ebp+4], eax
	jle	SHORT $LN7@Paint
; Line 81
	mov	DWORD PTR _SkinInfo$[ebp+4], 11		; 0000000bH
$LN7@Paint:
; Line 87
	cmp	DWORD PTR _SkinInfo$[ebp+16], 0
	je	SHORT $LN5@Paint
; Line 88
	movsx	ecx, WORD PTR _RectClient$[ebp+2]
	movsx	eax, WORD PTR _RectClient$[ebp+6]
	movsx	edx, WORD PTR _RectClient$[ebp+2]
	sub	eax, edx
	sub	eax, 1
	sub	eax, DWORD PTR _SkinInfo$[ebp]
	mov	edx, DWORD PTR _v$[ebp]
	sub	edx, DWORD PTR _Min$[ebp]
	imul	eax, edx
	cdq
	idiv	DWORD PTR _Range$[ebp]
	lea	eax, DWORD PTR [ecx+eax+1]
	mov	DWORD PTR _s0$[ebp], eax
; Line 89
	jmp	SHORT $LN4@Paint
$LN5@Paint:
; Line 90
	movsx	ecx, WORD PTR _RectClient$[ebp]
	movsx	eax, WORD PTR _RectClient$[ebp+4]
	movsx	edx, WORD PTR _RectClient$[ebp]
	sub	eax, edx
	sub	eax, 1
	sub	eax, DWORD PTR _SkinInfo$[ebp]
	mov	edx, DWORD PTR _v$[ebp]
	sub	edx, DWORD PTR _Min$[ebp]
	imul	eax, edx
	cdq
	idiv	DWORD PTR _Range$[ebp]
	lea	eax, DWORD PTR [ecx+eax+1]
	mov	DWORD PTR _s0$[ebp], eax
$LN4@Paint:
; Line 92
	mov	eax, DWORD PTR _SkinInfo$[ebp]
	mov	ecx, DWORD PTR _s0$[ebp]
	lea	edx, DWORD PTR [ecx+eax-1]
	mov	DWORD PTR _s1$[ebp], edx
; Line 96
	mov	eax, DWORD PTR _hObj$[ebp]
	mov	DWORD PTR _ItemInfo$[ebp], eax
; Line 97
	lea	eax, DWORD PTR _SkinInfo$[ebp]
	mov	DWORD PTR _ItemInfo$[ebp+28], eax
; Line 101
	mov	DWORD PTR _ItemInfo$[ebp+4], 13		; 0000000dH
; Line 102
	movsx	eax, WORD PTR _RectClient$[ebp+2]
	add	eax, 1
	mov	DWORD PTR _ItemInfo$[ebp+16], eax
; Line 103
	movsx	eax, WORD PTR _RectClient$[ebp+6]
	sub	eax, 1
	mov	DWORD PTR _ItemInfo$[ebp+24], eax
; Line 104
	movsx	eax, WORD PTR _RectClient$[ebp]
	add	eax, 1
	mov	DWORD PTR _ItemInfo$[ebp+12], eax
; Line 105
	movsx	eax, WORD PTR _RectClient$[ebp+4]
	sub	eax, 1
	mov	DWORD PTR _ItemInfo$[ebp+20], eax
; Line 106
	lea	eax, DWORD PTR _RectClip$[ebp]
	push	eax
	lea	ecx, DWORD PTR _ItemInfo$[ebp]
	push	ecx
	call	__CopyItemInfo2Rect
	add	esp, 8
; Line 107
	lea	eax, DWORD PTR _RectClip$[ebp]
	push	eax
	call	_WM_SetUserClipRect
	add	esp, 4
; Line 108
	mov	esi, esp
	lea	eax, DWORD PTR _ItemInfo$[ebp]
	push	eax
	call	DWORD PTR _pfDrawSkin$[ebp]
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 109
	push	0
	call	_WM_SetUserClipRect
	add	esp, 4
; Line 113
	mov	DWORD PTR _ItemInfo$[ebp+4], 17		; 00000011H
; Line 114
	cmp	DWORD PTR _SkinInfo$[ebp+16], 0
	je	SHORT $LN3@Paint
; Line 115
	mov	eax, DWORD PTR _s0$[ebp]
	mov	DWORD PTR _ItemInfo$[ebp+16], eax
; Line 116
	mov	eax, DWORD PTR _s1$[ebp]
	mov	DWORD PTR _ItemInfo$[ebp+24], eax
; Line 117
	jmp	SHORT $LN2@Paint
$LN3@Paint:
; Line 118
	mov	eax, DWORD PTR _s0$[ebp]
	mov	DWORD PTR _ItemInfo$[ebp+12], eax
; Line 119
	mov	eax, DWORD PTR _s1$[ebp]
	mov	DWORD PTR _ItemInfo$[ebp+20], eax
$LN2@Paint:
; Line 121
	lea	eax, DWORD PTR _RectClip$[ebp]
	push	eax
	lea	ecx, DWORD PTR _ItemInfo$[ebp]
	push	ecx
	call	__CopyItemInfo2Rect
	add	esp, 8
; Line 122
	lea	eax, DWORD PTR _RectClip$[ebp]
	push	eax
	call	_WM_SetUserClipRect
	add	esp, 4
; Line 123
	mov	esi, esp
	lea	eax, DWORD PTR _ItemInfo$[ebp]
	push	eax
	call	DWORD PTR _pfDrawSkin$[ebp]
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 124
	push	0
	call	_WM_SetUserClipRect
	add	esp, 4
; Line 128
	mov	DWORD PTR _ItemInfo$[ebp+4], 18		; 00000012H
; Line 129
	movsx	eax, WORD PTR _RectClient$[ebp+2]
	add	eax, 1
	mov	DWORD PTR _ItemInfo$[ebp+16], eax
; Line 130
	movsx	eax, WORD PTR _RectClient$[ebp+6]
	sub	eax, 1
	mov	DWORD PTR _ItemInfo$[ebp+24], eax
; Line 131
	movsx	eax, WORD PTR _RectClient$[ebp]
	add	eax, 1
	mov	DWORD PTR _ItemInfo$[ebp+12], eax
; Line 132
	movsx	eax, WORD PTR _RectClient$[ebp+4]
	sub	eax, 1
	mov	DWORD PTR _ItemInfo$[ebp+20], eax
; Line 133
	lea	eax, DWORD PTR _RectClip$[ebp]
	push	eax
	lea	ecx, DWORD PTR _ItemInfo$[ebp]
	push	ecx
	call	__CopyItemInfo2Rect
	add	esp, 8
; Line 134
	lea	eax, DWORD PTR _RectClip$[ebp]
	push	eax
	call	_WM_SetUserClipRect
	add	esp, 4
; Line 135
	mov	esi, esp
	lea	eax, DWORD PTR _ItemInfo$[ebp]
	push	eax
	call	DWORD PTR _pfDrawSkin$[ebp]
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 136
	push	0
	call	_WM_SetUserClipRect
	add	esp, 4
; Line 140
	cmp	DWORD PTR _HasFocus$[ebp], 0
	je	SHORT $LN8@Paint
; Line 141
	mov	DWORD PTR _ItemInfo$[ebp+4], 8
; Line 142
	movsx	eax, WORD PTR _RectClient$[ebp+2]
	mov	DWORD PTR _ItemInfo$[ebp+16], eax
; Line 143
	movsx	eax, WORD PTR _RectClient$[ebp+6]
	mov	DWORD PTR _ItemInfo$[ebp+24], eax
; Line 144
	movsx	eax, WORD PTR _RectClient$[ebp]
	mov	DWORD PTR _ItemInfo$[ebp+12], eax
; Line 145
	movsx	eax, WORD PTR _RectClient$[ebp+4]
	mov	DWORD PTR _ItemInfo$[ebp+20], eax
; Line 146
	lea	eax, DWORD PTR _RectClip$[ebp]
	push	eax
	lea	ecx, DWORD PTR _ItemInfo$[ebp]
	push	ecx
	call	__CopyItemInfo2Rect
	add	esp, 8
; Line 147
	lea	eax, DWORD PTR _RectClip$[ebp]
	push	eax
	call	_WM_SetUserClipRect
	add	esp, 4
; Line 148
	mov	esi, esp
	lea	eax, DWORD PTR _ItemInfo$[ebp]
	push	eax
	call	DWORD PTR _pfDrawSkin$[ebp]
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 149
	push	0
	call	_WM_SetUserClipRect
	add	esp, 4
$LN8@Paint:
; Line 151
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN19@Paint
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 408				; 00000198H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN19@Paint:
	DD	4
	DD	$LN18@Paint
$LN18@Paint:
	DD	-64					; ffffffc0H
	DD	32					; 00000020H
	DD	$LN14@Paint
	DD	-80					; ffffffb0H
	DD	8
	DD	$LN15@Paint
	DD	-96					; ffffffa0H
	DD	8
	DD	$LN16@Paint
	DD	-124					; ffffff84H
	DD	20					; 00000014H
	DD	$LN17@Paint
$LN17@Paint:
	DB	83					; 00000053H
	DB	107					; 0000006bH
	DB	105					; 00000069H
	DB	110					; 0000006eH
	DB	73					; 00000049H
	DB	110					; 0000006eH
	DB	102					; 00000066H
	DB	111					; 0000006fH
	DB	0
$LN16@Paint:
	DB	82					; 00000052H
	DB	101					; 00000065H
	DB	99					; 00000063H
	DB	116					; 00000074H
	DB	67					; 00000043H
	DB	108					; 0000006cH
	DB	105					; 00000069H
	DB	112					; 00000070H
	DB	0
$LN15@Paint:
	DB	82					; 00000052H
	DB	101					; 00000065H
	DB	99					; 00000063H
	DB	116					; 00000074H
	DB	67					; 00000043H
	DB	108					; 0000006cH
	DB	105					; 00000069H
	DB	101					; 00000065H
	DB	110					; 0000006eH
	DB	116					; 00000074H
	DB	0
$LN14@Paint:
	DB	73					; 00000049H
	DB	116					; 00000074H
	DB	101					; 00000065H
	DB	109					; 0000006dH
	DB	73					; 00000049H
	DB	110					; 0000006eH
	DB	102					; 00000066H
	DB	111					; 0000006fH
	DB	0
__Paint	ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT __CopyItemInfo2Rect
_TEXT	SEGMENT
_pItemInfo$ = 8						; size = 4
_pRect$ = 12						; size = 4
__CopyItemInfo2Rect PROC				; COMDAT
; Line 39
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 40
	mov	eax, DWORD PTR _pRect$[ebp]
	mov	ecx, DWORD PTR _pItemInfo$[ebp]
	mov	dx, WORD PTR [ecx+12]
	mov	WORD PTR [eax], dx
; Line 41
	mov	eax, DWORD PTR _pRect$[ebp]
	mov	ecx, DWORD PTR _pItemInfo$[ebp]
	mov	dx, WORD PTR [ecx+16]
	mov	WORD PTR [eax+2], dx
; Line 42
	mov	eax, DWORD PTR _pRect$[ebp]
	mov	ecx, DWORD PTR _pItemInfo$[ebp]
	mov	dx, WORD PTR [ecx+20]
	mov	WORD PTR [eax+4], dx
; Line 43
	mov	eax, DWORD PTR _pRect$[ebp]
	mov	ecx, DWORD PTR _pItemInfo$[ebp]
	mov	dx, WORD PTR [ecx+24]
	mov	WORD PTR [eax+6], dx
; Line 44
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
__CopyItemInfo2Rect ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT __Create
_TEXT	SEGMENT
_ItemInfo$ = -60					; size = 32
_pfDrawSkin$ = -20					; size = 4
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
__Create PROC						; COMDAT
; Line 157
	push	ebp
	mov	ebp, esp
	sub	esp, 256				; 00000100H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-256]
	mov	ecx, 64					; 00000040H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 165
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 166
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+72]
	mov	DWORD PTR _pfDrawSkin$[ebp], ecx
; Line 167
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 171
	mov	DWORD PTR _ItemInfo$[ebp+4], 0
; Line 172
	mov	eax, DWORD PTR _hObj$[ebp]
	mov	DWORD PTR _ItemInfo$[ebp], eax
; Line 173
	mov	DWORD PTR _ItemInfo$[ebp+28], 0
; Line 174
	mov	esi, esp
	lea	eax, DWORD PTR _ItemInfo$[ebp]
	push	eax
	call	DWORD PTR _pfDrawSkin$[ebp]
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 175
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN5@Create
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 256				; 00000100H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN5@Create:
	DD	1
	DD	$LN4@Create
$LN4@Create:
	DD	-60					; ffffffc4H
	DD	32					; 00000020H
	DD	$LN3@Create
$LN3@Create:
	DB	73					; 00000049H
	DB	116					; 00000074H
	DB	101					; 00000065H
	DB	109					; 0000006dH
	DB	73					; 00000049H
	DB	110					; 0000006eH
	DB	102					; 00000066H
	DB	111					; 0000006fH
	DB	0
__Create ENDP
_TEXT	ENDS
PUBLIC	_SLIDER_SetSkin
EXTRN	_WM_InvalidateWindow:PROC
EXTRN	_WM_SetHasTrans:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SLIDER_SetSkin
_TEXT	SEGMENT
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
_pfDrawSkin$ = 12					; size = 4
_SLIDER_SetSkin PROC					; COMDAT
; Line 203
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 207
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 211
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	DWORD PTR [eax+76], OFFSET __Skin
; Line 215
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR _pfDrawSkin$[ebp]
	mov	DWORD PTR [eax+72], ecx
; Line 216
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 220
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_SetHasTrans
	add	esp, 4
; Line 221
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
; Line 223
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_SetSkin ENDP
_TEXT	ENDS
PUBLIC	_SLIDER_SetDefaultSkin
EXTRN	_SLIDER__pSkinDefault:DWORD
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SLIDER_SetDefaultSkin
_TEXT	SEGMENT
_pfDrawSkin$ = 8					; size = 4
_SLIDER_SetDefaultSkin PROC				; COMDAT
; Line 229
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 230
	mov	DWORD PTR _SLIDER__pSkinDefault, OFFSET __Skin
; Line 231
	mov	eax, DWORD PTR _pfDrawSkin$[ebp]
	mov	DWORD PTR _SLIDER__DefaultProps+16, eax
; Line 232
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_SetDefaultSkin ENDP
_TEXT	ENDS
END
