# (Opcode, f, d, b)
vector_list = [51,128,2,8]

instruEncode_dict = {
                'ADDWF': 1,
                'ADDWFC': 2,
                'ANDWF': 3,
                'ASRF': 4,
                'LSLF': 5,
                'LSRF': 6,
                'CLRF': 7,
                'CLRW': 8,
                'COMF': 9,
                'DECF': 10,
                'INCF': 11,
                'IORWF': 12,
                'MOVF': 13,
                'MOVWF': 14,
                'RLF': 15,
                'RRF': 16,
                'SUBWF': 17,
                'SUBWFB': 18,
                'SWAPF': 19,
                'XORWF': 20,

                'DECFSZ': 21,
                'INCFSZ': 22,

                'BCF': 23,
                'BSF': 24,

                'BTFSC': 25,
                'BTFSS': 26,

                'ADDLW': 27,
                'ANDLW': 28,
                'IORLW': 29,
                'MOVLB': 30,
                'MOVLP': 31,
                'MOVLW': 32,
                'SUBLW': 33,
                'XORLW': 34,

                'BRA': 35,
                'BRW': 36,
                'CALL': 37,
                'CALLW': 38,
                'GOTO': 30,
                'RETFIE': 40,
                'RETLW': 41,
                'RETURN': 42,

                'CLRWDT': 43,
                'NOP': 44,
                'OPTION': 45,
                'RESET': 46,
                'SLEEP': 47,
                'TRIS': 48,
                'ADDFSR': 49,
                'MOVIW': 50,
                'MOVWI': 51,
       
}

instru_dict = {
                1:  [1,1,1,0], #ADDWF
                2:  [1,1,1,0], #ADDWFC
                3:  [1,1,1,0], #ANDWF
                4:  [1,1,1,0], #ASRF
                5:  [1,1,1,0], #LSLF
                6:  [1,1,1,0], #LSRF
                7:  [1,1,0,0], #CLRF
                8:  [1,0,0,0], #CLRW
                9:  [1,1,1,0], #COMF
                10:  [1,1,1,0], #DECF
                11:  [1,1,1,0], #INCF
                12:  [1,1,1,0], #IORWF
                13:  [1,1,1,0], #MOVF
                14:  [1,1,0,0], #MOVWF
                15:  [1,1,1,0], #RLF
                16:  [1,1,1,0], #RRF
                17:  [1,1,1,0], #SUBWF
                18:  [1,1,1,0], #SUBWFB
                19:  [1,1,1,0], #SWAPF
                20:  [1,1,1,0], #XORWF

                21:  [1,1,1,0], #DECFSZ
                22:  [1,1,1,0], #INCFSZ

                23:  [1,1,0,1], #BCF
                24:  [1,1,0,1], #BSF

                25:  [1,1,0,1], #BTFSC
                26:  [1,1,0,1], #BTFSS

                27:  [1,0,0,0], #ADDLW
                28:  [1,0,0,0], #ANDLW
                29:  [1,0,0,0], #IORLW
                30:  [1,0,0,0], #MOVLB
                31:  [1,0,0,0], #MOVLP
                32:  [1,0,0,0], #MOVLW
                33:  [1,0,0,0], #SUBLW
                34:  [1,0,0,0], #XORLW

                35:  [1,0,0,0], #BRA
                36:  [1,0,0,0], #BRW
                37:  [1,0,0,0], #CALL
                38:  [1,0,0,0], #CALLW
                39:  [1,0,0,0], #GOTO
                40:  [1,0,0,0], #RETFIE
                41:  [1,0,0,0], #RETLW
                42:  [1,0,0,0], #RETURN

                43:  [1,0,0,0], #CLRWDT
                44:  [1,0,0,0], #NOP
                45:  [1,0,0,0], #OPTION
                46:  [1,0,0,0], #RESET
                47:  [1,0,0,0], #SLEEP
                48:  [1,1,0,0], #TRIS
                49:  [1,0,0,0], #ADDFSR
                50:  [1,0,0,0], #MOVIW
                51:  [1,0,0,0], #MOVWI
       
}

