﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Core\GUI_GetYSizeOfFont.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI_GetYSizeOfFont
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\core\gui_getysizeoffont.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUI_GetYSizeOfFont
_TEXT	SEGMENT
_pFont$ = 8						; size = 4
_GUI_GetYSizeOfFont PROC				; COMDAT
; Line 35
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
; Line 36
	mov	eax, DWORD PTR _pFont$[ebp]
	movzx	eax, BYTE PTR [eax+24]
	mov	ecx, DWORD PTR _pFont$[ebp]
	movzx	edx, BYTE PTR [ecx+27]
	imul	eax, edx
; Line 37
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_GUI_GetYSizeOfFont ENDP
_TEXT	ENDS
PUBLIC	_GUI_GetYDistOfFont
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUI_GetYDistOfFont
_TEXT	SEGMENT
_pFont$ = 8						; size = 4
_GUI_GetYDistOfFont PROC				; COMDAT
; Line 43
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
; Line 44
	mov	eax, DWORD PTR _pFont$[ebp]
	movzx	eax, BYTE PTR [eax+25]
	mov	ecx, DWORD PTR _pFont$[ebp]
	movzx	edx, BYTE PTR [ecx+27]
	imul	eax, edx
; Line 45
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_GUI_GetYDistOfFont ENDP
_TEXT	ENDS
END