﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Antialias\GUIAA_Char4.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

_BSS	SEGMENT
?_aColor@?1??_DrawCharAA4_NoTrans@@9@9 DD 010H DUP (?)	; `_DrawCharAA4_NoTrans'::`2'::_aColor
_BSS	ENDS
_DATA	SEGMENT
?_Palette@?1??_DrawCharAA4_NoTrans@@9@9 DD 010H		; `_DrawCharAA4_NoTrans'::`2'::_Palette
	DB	00H
	ORG $+3
	DD	FLAT:?_aColor@?1??_DrawCharAA4_NoTrans@@9@9
?_Bitmap@?1??_DrawCharAA4_NoTrans@@9@9 DW 00H		; `_DrawCharAA4_NoTrans'::`2'::_Bitmap
	DW	00H
	DW	00H
	DW	04H
	DD	00H
	DD	FLAT:?_Palette@?1??_DrawCharAA4_NoTrans@@9@9
	DD	00H
_DATA	ENDS
PUBLIC	_GUI_AA__DrawCharAA4
EXTRN	_LCD_SetPixelAA_Xor:PROC
EXTRN	_LCD_SetPixelAA:PROC
EXTRN	_GUI_Context:BYTE
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\antialias\guiaa_char4.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUI_AA__DrawCharAA4
_TEXT	SEGMENT
tv66 = -196						; size = 4
_x0$ = 8						; size = 4
_y0$ = 12						; size = 4
_XSize$ = 16						; size = 4
_YSize$ = 20						; size = 4
_BytesPerLine$ = 24					; size = 4
_pData$ = 28						; size = 4
_GUI_AA__DrawCharAA4 PROC				; COMDAT
; Line 131
	push	ebp
	mov	ebp, esp
	sub	esp, 196				; 000000c4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-196]
	mov	ecx, 49					; 00000031H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 132
	movzx	eax, BYTE PTR _GUI_Context+16
	and	eax, 3
	mov	DWORD PTR tv66[ebp], eax
	cmp	DWORD PTR tv66[ebp], 3
	ja	SHORT $LN6@GUI_AA__Dr
	mov	ecx, DWORD PTR tv66[ebp]
	jmp	DWORD PTR $LN8@GUI_AA__Dr[ecx*4]
$LN3@GUI_AA__Dr:
; Line 134
	mov	eax, DWORD PTR _pData$[ebp]
	push	eax
	mov	ecx, DWORD PTR _BytesPerLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _YSize$[ebp]
	push	edx
	mov	eax, DWORD PTR _XSize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y0$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x0$[ebp]
	push	edx
	call	__DrawCharAA4_NoTrans
	add	esp, 24					; 00000018H
; Line 135
	jmp	SHORT $LN6@GUI_AA__Dr
$LN2@GUI_AA__Dr:
; Line 137
	push	OFFSET _LCD_SetPixelAA
	mov	eax, DWORD PTR _pData$[ebp]
	push	eax
	mov	ecx, DWORD PTR _BytesPerLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _YSize$[ebp]
	push	edx
	mov	eax, DWORD PTR _XSize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y0$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x0$[ebp]
	push	edx
	call	__DrawCharAA4_Trans
	add	esp, 28					; 0000001cH
; Line 138
	jmp	SHORT $LN6@GUI_AA__Dr
$LN1@GUI_AA__Dr:
; Line 141
	push	OFFSET _LCD_SetPixelAA_Xor
	mov	eax, DWORD PTR _pData$[ebp]
	push	eax
	mov	ecx, DWORD PTR _BytesPerLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _YSize$[ebp]
	push	edx
	mov	eax, DWORD PTR _XSize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y0$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x0$[ebp]
	push	edx
	call	__DrawCharAA4_Trans
	add	esp, 28					; 0000001cH
$LN6@GUI_AA__Dr:
; Line 144
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 196				; 000000c4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN8@GUI_AA__Dr:
	DD	$LN3@GUI_AA__Dr
	DD	$LN1@GUI_AA__Dr
	DD	$LN2@GUI_AA__Dr
	DD	$LN1@GUI_AA__Dr
_GUI_AA__DrawCharAA4 ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT __DrawCharAA4_Trans
_TEXT	SEGMENT
_Data$ = -77						; size = 1
_RemPixels$ = -68					; size = 4
_yPos$ = -56						; size = 4
_xPos$ = -44						; size = 4
_y$ = -32						; size = 4
_x$ = -20						; size = 4
_pData0$ = -8						; size = 4
_x0$ = 8						; size = 4
_y0$ = 12						; size = 4
_XSize$ = 16						; size = 4
_YSize$ = 20						; size = 4
_BytesPerLine$ = 24					; size = 4
_pData$ = 28						; size = 4
_pfSetPixelAA$ = 32					; size = 4
__DrawCharAA4_Trans PROC				; COMDAT
; Line 40
	push	ebp
	mov	ebp, esp
	sub	esp, 276				; 00000114H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-276]
	mov	ecx, 69					; 00000045H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 45
	mov	DWORD PTR _y$[ebp], 0
	jmp	SHORT $LN6@DrawCharAA
$LN5@DrawCharAA:
	mov	eax, DWORD PTR _y$[ebp]
	add	eax, 1
	mov	DWORD PTR _y$[ebp], eax
$LN6@DrawCharAA:
	mov	eax, DWORD PTR _y$[ebp]
	cmp	eax, DWORD PTR _YSize$[ebp]
	jge	$LN7@DrawCharAA
; Line 46
	mov	DWORD PTR _x$[ebp], 0
; Line 47
	mov	eax, DWORD PTR _pData$[ebp]
	mov	DWORD PTR _pData0$[ebp], eax
; Line 48
	mov	eax, DWORD PTR _XSize$[ebp]
	mov	DWORD PTR _RemPixels$[ebp], eax
; Line 49
	mov	eax, DWORD PTR _y0$[ebp]
	add	eax, DWORD PTR _y$[ebp]
	mov	DWORD PTR _yPos$[ebp], eax
$LN3@DrawCharAA:
; Line 50
	cmp	DWORD PTR _RemPixels$[ebp], 2
	jl	SHORT $LN2@DrawCharAA
; Line 51
	mov	eax, DWORD PTR _x$[ebp]
	add	eax, DWORD PTR _x0$[ebp]
	mov	DWORD PTR _xPos$[ebp], eax
; Line 52
	mov	eax, DWORD PTR _pData0$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR _Data$[ebp], cl
	mov	edx, DWORD PTR _pData0$[ebp]
	add	edx, 1
	mov	DWORD PTR _pData0$[ebp], edx
; Line 53
	movzx	eax, BYTE PTR _Data$[ebp]
	sar	eax, 4
	mov	esi, esp
	push	eax
	mov	ecx, DWORD PTR _yPos$[ebp]
	push	ecx
	mov	edx, DWORD PTR _xPos$[ebp]
	push	edx
	call	DWORD PTR _pfSetPixelAA$[ebp]
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 54
	mov	al, BYTE PTR _Data$[ebp]
	shl	al, 4
	mov	BYTE PTR _Data$[ebp], al
; Line 55
	movzx	eax, BYTE PTR _Data$[ebp]
	sar	eax, 4
	mov	esi, esp
	push	eax
	mov	ecx, DWORD PTR _yPos$[ebp]
	push	ecx
	mov	edx, DWORD PTR _xPos$[ebp]
	add	edx, 1
	push	edx
	call	DWORD PTR _pfSetPixelAA$[ebp]
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 56
	mov	eax, DWORD PTR _RemPixels$[ebp]
	sub	eax, 2
	mov	DWORD PTR _RemPixels$[ebp], eax
; Line 57
	mov	eax, DWORD PTR _x$[ebp]
	add	eax, 2
	mov	DWORD PTR _x$[ebp], eax
; Line 58
	jmp	SHORT $LN3@DrawCharAA
$LN2@DrawCharAA:
; Line 59
	cmp	DWORD PTR _RemPixels$[ebp], 0
	je	SHORT $LN1@DrawCharAA
; Line 60
	mov	eax, DWORD PTR _pData0$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR _Data$[ebp], cl
; Line 61
	movzx	eax, BYTE PTR _Data$[ebp]
	sar	eax, 4
	mov	esi, esp
	push	eax
	mov	ecx, DWORD PTR _yPos$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp]
	add	edx, DWORD PTR _x0$[ebp]
	push	edx
	call	DWORD PTR _pfSetPixelAA$[ebp]
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN1@DrawCharAA:
; Line 63
	mov	eax, DWORD PTR _pData$[ebp]
	add	eax, DWORD PTR _BytesPerLine$[ebp]
	mov	DWORD PTR _pData$[ebp], eax
; Line 64
	jmp	$LN5@DrawCharAA
$LN7@DrawCharAA:
; Line 65
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 276				; 00000114H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__DrawCharAA4_Trans ENDP
_TEXT	ENDS
EXTRN	_GL_DrawBitmap:PROC
EXTRN	_GUI__CharHasTrans:BYTE
EXTRN	_LCD_GetpPalConvTableUncached:PROC
EXTRN	_LCD_AA_MixColors:PROC
EXTRN	_LCD_Index2Color:PROC
EXTRN	_LCD_pColorIndex:DWORD
EXTRN	_LCD_pBkColorIndex:DWORD
_BSS	SEGMENT
?_OldBkColorIndex@?1??_DrawCharAA4_NoTrans@@9@9 DD 01H DUP (?) ; `_DrawCharAA4_NoTrans'::`2'::_OldBkColorIndex
?_OldColorIndex@?1??_DrawCharAA4_NoTrans@@9@9 DD 01H DUP (?) ; `_DrawCharAA4_NoTrans'::`2'::_OldColorIndex
; Function compile flags: /Odtp /RTCsu /ZI
_BSS	ENDS
;	COMDAT __DrawCharAA4_NoTrans
_TEXT	SEGMENT
_BkColor$ = -56						; size = 4
_Color$ = -44						; size = 4
_BkColorIndex$ = -32					; size = 4
_ColorIndex$ = -20					; size = 4
_i$ = -8						; size = 4
_x0$ = 8						; size = 4
_y0$ = 12						; size = 4
_XSize$ = 16						; size = 4
_YSize$ = 20						; size = 4
_BytesPerLine$ = 24					; size = 4
_pData$ = 28						; size = 4
__DrawCharAA4_NoTrans PROC				; COMDAT
; Line 74
	push	ebp
	mov	ebp, esp
	sub	esp, 252				; 000000fcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-252]
	mov	ecx, 63					; 0000003fH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 86
	mov	eax, DWORD PTR _LCD_pBkColorIndex
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _BkColorIndex$[ebp], ecx
; Line 87
	mov	eax, DWORD PTR _LCD_pColorIndex
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _ColorIndex$[ebp], ecx
; Line 92
	mov	eax, DWORD PTR ?_OldColorIndex@?1??_DrawCharAA4_NoTrans@@9@9
	cmp	eax, DWORD PTR _ColorIndex$[ebp]
	jne	SHORT $LN4@DrawCharAA@2
	mov	eax, DWORD PTR ?_OldBkColorIndex@?1??_DrawCharAA4_NoTrans@@9@9
	cmp	eax, DWORD PTR _BkColorIndex$[ebp]
	je	$LN5@DrawCharAA@2
$LN4@DrawCharAA@2:
; Line 93
	mov	eax, DWORD PTR _BkColorIndex$[ebp]
	push	eax
	call	_LCD_Index2Color
	add	esp, 4
	mov	DWORD PTR _BkColor$[ebp], eax
; Line 94
	mov	eax, DWORD PTR _ColorIndex$[ebp]
	push	eax
	call	_LCD_Index2Color
	add	esp, 4
	mov	DWORD PTR _Color$[ebp], eax
; Line 95
	mov	eax, DWORD PTR _BkColor$[ebp]
	mov	DWORD PTR ?_aColor@?1??_DrawCharAA4_NoTrans@@9@9, eax
; Line 96
	mov	DWORD PTR _i$[ebp], 1
	jmp	SHORT $LN3@DrawCharAA@2
$LN2@DrawCharAA@2:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN3@DrawCharAA@2:
	cmp	DWORD PTR _i$[ebp], 15			; 0000000fH
	jge	SHORT $LN1@DrawCharAA@2
; Line 97
	movzx	eax, BYTE PTR _i$[ebp]
	push	eax
	mov	ecx, DWORD PTR _BkColor$[ebp]
	push	ecx
	mov	edx, DWORD PTR _Color$[ebp]
	push	edx
	call	_LCD_AA_MixColors
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _i$[ebp]
	mov	DWORD PTR ?_aColor@?1??_DrawCharAA4_NoTrans@@9@9[ecx*4], eax
; Line 98
	jmp	SHORT $LN2@DrawCharAA@2
$LN1@DrawCharAA@2:
; Line 99
	mov	eax, DWORD PTR _Color$[ebp]
	mov	DWORD PTR ?_aColor@?1??_DrawCharAA4_NoTrans@@9@9+60, eax
; Line 100
	push	OFFSET ?_Palette@?1??_DrawCharAA4_NoTrans@@9@9
	call	_LCD_GetpPalConvTableUncached
	add	esp, 4
; Line 101
	mov	eax, DWORD PTR _ColorIndex$[ebp]
	mov	DWORD PTR ?_OldColorIndex@?1??_DrawCharAA4_NoTrans@@9@9, eax
; Line 102
	mov	eax, DWORD PTR _BkColorIndex$[ebp]
	mov	DWORD PTR ?_OldBkColorIndex@?1??_DrawCharAA4_NoTrans@@9@9, eax
$LN5@DrawCharAA@2:
; Line 107
	mov	ax, WORD PTR _XSize$[ebp]
	mov	WORD PTR ?_Bitmap@?1??_DrawCharAA4_NoTrans@@9@9, ax
; Line 108
	mov	ax, WORD PTR _YSize$[ebp]
	mov	WORD PTR ?_Bitmap@?1??_DrawCharAA4_NoTrans@@9@9+2, ax
; Line 109
	mov	ax, WORD PTR _BytesPerLine$[ebp]
	mov	WORD PTR ?_Bitmap@?1??_DrawCharAA4_NoTrans@@9@9+4, ax
; Line 110
	mov	eax, DWORD PTR _pData$[ebp]
	mov	DWORD PTR ?_Bitmap@?1??_DrawCharAA4_NoTrans@@9@9+8, eax
; Line 114
	mov	al, BYTE PTR _GUI__CharHasTrans
	mov	BYTE PTR ?_Palette@?1??_DrawCharAA4_NoTrans@@9@9+4, al
; Line 118
	mov	eax, DWORD PTR _y0$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x0$[ebp]
	push	ecx
	push	OFFSET ?_Bitmap@?1??_DrawCharAA4_NoTrans@@9@9
	call	_GL_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 119
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 252				; 000000fcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__DrawCharAA4_NoTrans ENDP
_TEXT	ENDS
PUBLIC	_GUIPROP_AA4_DispChar
EXTRN	_GUI_pLCD_APIList:DWORD
EXTRN	_LCD_SetDrawMode:PROC
EXTRN	_GUIPROP__FindChar:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROP_AA4_DispChar
_TEXT	SEGMENT
_pCharInfo$ = -56					; size = 4
_pProp$ = -44						; size = 4
_OldDrawMode$ = -32					; size = 4
_DrawMode$ = -20					; size = 4
_BytesPerLine$ = -8					; size = 4
_c$ = 8							; size = 2
_GUIPROP_AA4_DispChar PROC				; COMDAT
; Line 150
	push	ebp
	mov	ebp, esp
	sub	esp, 252				; 000000fcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-252]
	mov	ecx, 63					; 0000003fH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 156
	movsx	eax, WORD PTR _GUI_Context+42
	mov	DWORD PTR _DrawMode$[ebp], eax
; Line 157
	movzx	eax, WORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _GUI_Context+28
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	call	_GUIPROP__FindChar
	add	esp, 8
	mov	DWORD PTR _pProp$[ebp], eax
; Line 158
	cmp	DWORD PTR _pProp$[ebp], 0
	je	$LN4@GUIPROP_AA
; Line 159
	movzx	eax, WORD PTR _c$[ebp]
	mov	ecx, DWORD PTR _pProp$[ebp]
	movzx	edx, WORD PTR [ecx]
	sub	eax, edx
	mov	ecx, DWORD PTR _pProp$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	lea	eax, DWORD PTR [edx+eax*8]
	mov	DWORD PTR _pCharInfo$[ebp], eax
; Line 160
	mov	eax, DWORD PTR _pCharInfo$[ebp]
	movzx	ecx, BYTE PTR [eax+2]
	mov	DWORD PTR _BytesPerLine$[ebp], ecx
; Line 161
	mov	eax, DWORD PTR _DrawMode$[ebp]
	push	eax
	call	_LCD_SetDrawMode
	add	esp, 4
	mov	DWORD PTR _OldDrawMode$[ebp], eax
; Line 163
	cmp	DWORD PTR _GUI_pLCD_APIList, 0
	je	SHORT $LN2@GUIPROP_AA
; Line 173
	mov	esi, esp
	push	0
	mov	eax, DWORD PTR _pCharInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	mov	edx, DWORD PTR _BytesPerLine$[ebp]
	push	edx
	push	4
	push	1
	push	1
	mov	eax, DWORD PTR _GUI_Context+28
	movzx	ecx, BYTE PTR [eax+24]
	push	ecx
	mov	edx, DWORD PTR _pCharInfo$[ebp]
	movzx	eax, BYTE PTR [edx]
	push	eax
	movsx	ecx, WORD PTR _GUI_Context+36
	push	ecx
	movsx	edx, WORD PTR _GUI_Context+34
	push	edx
	mov	eax, DWORD PTR _GUI_pLCD_APIList
	mov	ecx, DWORD PTR [eax]
	call	ecx
	add	esp, 40					; 00000028H
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 174
	jmp	SHORT $LN1@GUIPROP_AA
$LN2@GUIPROP_AA:
; Line 183
	mov	eax, DWORD PTR _pCharInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	mov	edx, DWORD PTR _BytesPerLine$[ebp]
	push	edx
	mov	eax, DWORD PTR _GUI_Context+28
	movzx	ecx, BYTE PTR [eax+24]
	push	ecx
	mov	edx, DWORD PTR _pCharInfo$[ebp]
	movzx	eax, BYTE PTR [edx]
	push	eax
	movsx	ecx, WORD PTR _GUI_Context+36
	push	ecx
	movsx	edx, WORD PTR _GUI_Context+34
	push	edx
	call	_GUI_AA__DrawCharAA4
	add	esp, 24					; 00000018H
$LN1@GUIPROP_AA:
; Line 185
	mov	eax, DWORD PTR _OldDrawMode$[ebp]
	push	eax
	call	_LCD_SetDrawMode
	add	esp, 4
; Line 186
	mov	eax, DWORD PTR _pCharInfo$[ebp]
	movzx	ecx, BYTE PTR [eax+1]
	movsx	edx, WORD PTR _GUI_Context+34
	add	edx, ecx
	mov	WORD PTR _GUI_Context+34, dx
$LN4@GUIPROP_AA:
; Line 188
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 252				; 000000fcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROP_AA4_DispChar ENDP
_TEXT	ENDS
PUBLIC	_GUIPROP_AA4_GetCharDistX
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROP_AA4_GetCharDistX
_TEXT	SEGMENT
tv76 = -208						; size = 4
_pProp$ = -8						; size = 4
_c$ = 8							; size = 2
_GUIPROP_AA4_GetCharDistX PROC				; COMDAT
; Line 194
	push	ebp
	mov	ebp, esp
	sub	esp, 208				; 000000d0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-208]
	mov	ecx, 52					; 00000034H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 197
	movzx	eax, WORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _GUI_Context+28
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	call	_GUIPROP__FindChar
	add	esp, 8
	mov	DWORD PTR _pProp$[ebp], eax
; Line 198
	cmp	DWORD PTR _pProp$[ebp], 0
	je	SHORT $LN3@GUIPROP_AA@2
	movzx	eax, WORD PTR _c$[ebp]
	mov	ecx, DWORD PTR _pProp$[ebp]
	movzx	edx, WORD PTR [ecx]
	sub	eax, edx
	mov	ecx, DWORD PTR _pProp$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	movzx	eax, BYTE PTR [edx+eax*8]
	mov	DWORD PTR tv76[ebp], eax
	jmp	SHORT $LN4@GUIPROP_AA@2
$LN3@GUIPROP_AA@2:
	mov	DWORD PTR tv76[ebp], 0
$LN4@GUIPROP_AA@2:
	mov	eax, DWORD PTR tv76[ebp]
; Line 199
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 208				; 000000d0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROP_AA4_GetCharDistX ENDP
_TEXT	ENDS
PUBLIC	_GUIPROP_AA4_GetFontInfo
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROP_AA4_GetFontInfo
_TEXT	SEGMENT
_pFont$ = 8						; size = 4
_pfi$ = 12						; size = 4
_GUIPROP_AA4_GetFontInfo PROC				; COMDAT
; Line 205
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
; Line 206
	mov	eax, DWORD PTR _pFont$[ebp]
	mov	DWORD PTR _pFont$[ebp], eax
; Line 207
	mov	eax, 17					; 00000011H
	mov	ecx, DWORD PTR _pfi$[ebp]
	mov	WORD PTR [ecx], ax
; Line 208
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROP_AA4_GetFontInfo ENDP
_TEXT	ENDS
PUBLIC	_GUIPROP_AA4_IsInFont
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROP_AA4_IsInFont
_TEXT	SEGMENT
_pProp$ = -8						; size = 4
_pFont$ = 8						; size = 4
_c$ = 12						; size = 2
_GUIPROP_AA4_IsInFont PROC				; COMDAT
; Line 214
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
; Line 217
	movzx	eax, WORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pFont$[ebp]
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	call	_GUIPROP__FindChar
	add	esp, 8
	mov	DWORD PTR _pProp$[ebp], eax
; Line 218
	xor	eax, eax
	cmp	DWORD PTR _pProp$[ebp], 0
	setne	al
; Line 219
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROP_AA4_IsInFont ENDP
_TEXT	ENDS
END