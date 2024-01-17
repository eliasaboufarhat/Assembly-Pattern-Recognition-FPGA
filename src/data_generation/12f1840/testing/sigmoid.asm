0000:  3180  movlp   0x00
0001:  2802  goto    0x0002
0002:  3187  movlp   0x07
0003:  2ff0  goto    0x07f0
00da:  00fe  movwf   0x7e
00db:  0012  moviw   0++
00dc:  001e  movwi   0x1++
00dd:  0bfe  decfsz  0x7e, 0x1
00de:  28db  goto    0x00db
00df:  3400  retlw   0x00
00e0:  0872  movf    0x72, 0x0
00e1:  0471  iorwf   0x71, 0x0
00e2:  0470  iorwf   0x70, 0x0
00e3:  1903  btfsc   0x03, 0x2
00e4:  0008  return
00e5:  3080  movlw   0x80
00e6:  06f2  xorwf   0x72, 0x1
00e7:  0008  return
00e8:  00f3  movwf   0x73
00e9:  01f2  clrf    0x72
00ea:  1c73  btfss   0x73, 0x0
00eb:  28f0  goto    0x00f0
00ec:  0870  movf    0x70, 0x0
00ed:  00f1  movwf   0x71
00ee:  0871  movf    0x71, 0x0
00ef:  07f2  addwf   0x72, 0x1
00f0:  1003  bcf     0x03, 0x0
00f1:  0df0  rlf     0x70, 0x1
00f2:  1003  bcf     0x03, 0x0
00f3:  0cf3  rrf     0x73, 0x1
00f4:  0873  movf    0x73, 0x0
00f5:  1d03  btfss   0x03, 0x2
00f6:  28ea  goto    0x00ea
00f7:  0872  movf    0x72, 0x0
00f8:  0008  return
00f9:  01f4  clrf    0x74
00fa:  01f5  clrf    0x75
00fb:  1c70  btfss   0x70, 0x0
00fc:  2901  goto    0x0101
00fd:  0872  movf    0x72, 0x0
00fe:  07f4  addwf   0x74, 0x1
00ff:  0873  movf    0x73, 0x0
0100:  3df5  addwfc  0x75, 0x1
0101:  3001  movlw   0x01
0102:  35f2  lslf    0x72, 0x1
0103:  0df3  rlf     0x73, 0x1
0104:  0b89  decfsz  0x09, 0x1
0105:  2902  goto    0x0102
0106:  3001  movlw   0x01
0107:  36f1  lsrf    0x71, 0x1
0108:  0cf0  rrf     0x70, 0x1
0109:  0b89  decfsz  0x09, 0x1
010a:  2907  goto    0x0107
010b:  0870  movf    0x70, 0x0
010c:  0471  iorwf   0x71, 0x0
010d:  1d03  btfss   0x03, 0x2
010e:  28fb  goto    0x00fb
010f:  0875  movf    0x75, 0x0
0110:  00f1  movwf   0x71
0111:  0874  movf    0x74, 0x0
0112:  00f0  movwf   0x70
0113:  0008  return
0114:  0839  movf    0x39, 0x0
0115:  0438  iorwf   0x38, 0x0
0116:  0437  iorwf   0x37, 0x0
0117:  1903  btfsc   0x03, 0x2
0118:  291b  goto    0x011b
0119:  3080  movlw   0x80
011a:  06b9  xorwf   0x39, 0x1
011b:  083a  movf    0x3a, 0x0
011c:  00aa  movwf   0x2a
011d:  083b  movf    0x3b, 0x0
011e:  00ab  movwf   0x2b
011f:  083c  movf    0x3c, 0x0
0120:  00ac  movwf   0x2c
0121:  0837  movf    0x37, 0x0
0122:  00ad  movwf   0x2d
0123:  0838  movf    0x38, 0x0
0124:  00ae  movwf   0x2e
0125:  0839  movf    0x39, 0x0
0126:  00af  movwf   0x2f
0127:  3185  movlp   0x05
0128:  25f4  call    0x05f4
0129:  082a  movf    0x2a, 0x0
012a:  00b7  movwf   0x37
012b:  082b  movf    0x2b, 0x0
012c:  00b8  movwf   0x38
012d:  082c  movf    0x2c, 0x0
012e:  00b9  movwf   0x39
012f:  0008  return
0130:  3400  retlw   0x00
0131:  3400  retlw   0x00
0132:  3440  retlw   0x40
0133:  3400  retlw   0x00
0134:  340a  retlw   0x0a
0135:  3442  retlw   0x42
0136:  34cd  retlw   0xcd
0137:  3454  retlw   0x54
0138:  3441  retlw   0x41
0139:  3400  retlw   0x00
013a:  3440  retlw   0x40
013b:  3441  retlw   0x41
013c:  34cd  retlw   0xcd
013d:  349f  retlw   0x9f
013e:  3442  retlw   0x42
013f:  3433  retlw   0x33
0140:  3435  retlw   0x35
0141:  3442  retlw   0x42
0142:  34c3  retlw   0xc3
0143:  34ed  retlw   0xed
0144:  3440  retlw   0x40
0145:  34cd  retlw   0xcd
0146:  348c  retlw   0x8c
0147:  343f  retlw   0x3f
0148:  3400  retlw   0x00
0149:  34b8  retlw   0xb8
014a:  3442  retlw   0x42
014b:  3400  retlw   0x00
014c:  3404  retlw   0x04
014d:  3442  retlw   0x42
014e:  01fd  clrf    0x7d
014f:  1ff9  btfss   0x79, 0x7
0150:  2958  goto    0x0158
0151:  09f8  comf    0x78, 0x1
0152:  09f9  comf    0x79, 0x1
0153:  0af8  incf    0x78, 0x1
0154:  1903  btfsc   0x03, 0x2
0155:  0af9  incf    0x79, 0x1
0156:  01fd  clrf    0x7d
0157:  0afd  incf    0x7d, 0x1
0158:  0878  movf    0x78, 0x0
0159:  00f0  movwf   0x70
015a:  0879  movf    0x79, 0x0
015b:  00f1  movwf   0x71
015c:  01f2  clrf    0x72
015d:  308e  movlw   0x8e
015e:  00fb  movwf   0x7b
015f:  087b  movf    0x7b, 0x0
0160:  00f3  movwf   0x73
0161:  087d  movf    0x7d, 0x0
0162:  00fc  movwf   0x7c
0163:  087c  movf    0x7c, 0x0
0164:  00f4  movwf   0x74
0165:  3183  movlp   0x03
0166:  2303  call    0x0303
0167:  0870  movf    0x70, 0x0
0168:  00f8  movwf   0x78
0169:  0871  movf    0x71, 0x0
016a:  00f9  movwf   0x79
016b:  0872  movf    0x72, 0x0
016c:  00fa  movwf   0x7a
016d:  0008  return
016e:  1ff2  btfss   0x72, 0x7
016f:  297d  goto    0x017d
0170:  0870  movf    0x70, 0x0
0171:  3c00  sublw   0x00
0172:  00f0  movwf   0x70
0173:  0871  movf    0x71, 0x0
0174:  1c03  btfss   0x03, 0x0
0175:  0f71  incfsz  0x71, 0x0
0176:  3c00  sublw   0x00
0177:  00f1  movwf   0x71
0178:  0872  movf    0x72, 0x0
0179:  1c03  btfss   0x03, 0x0
017a:  0f72  incfsz  0x72, 0x0
017b:  3c80  sublw   0x80
017c:  00f2  movwf   0x72
017d:  1ff5  btfss   0x75, 0x7
017e:  298c  goto    0x018c
017f:  0873  movf    0x73, 0x0
0180:  3c00  sublw   0x00
0181:  00f3  movwf   0x73
0182:  0874  movf    0x74, 0x0
0183:  1c03  btfss   0x03, 0x0
0184:  0f74  incfsz  0x74, 0x0
0185:  3c00  sublw   0x00
0186:  00f4  movwf   0x74
0187:  0875  movf    0x75, 0x0
0188:  1c03  btfss   0x03, 0x0
0189:  0f75  incfsz  0x75, 0x0
018a:  3c80  sublw   0x80
018b:  00f5  movwf   0x75
018c:  3080  movlw   0x80
018d:  06f2  xorwf   0x72, 0x1
018e:  3080  movlw   0x80
018f:  06f5  xorwf   0x75, 0x1
0190:  0875  movf    0x75, 0x0
0191:  0272  subwf   0x72, 0x0
0192:  1d03  btfss   0x03, 0x2
0193:  0008  return
0194:  0874  movf    0x74, 0x0
0195:  0271  subwf   0x71, 0x0
0196:  1d03  btfss   0x03, 0x2
0197:  0008  return
0198:  0873  movf    0x73, 0x0
0199:  0270  subwf   0x70, 0x0
019a:  0008  return
019b:  0872  movf    0x72, 0x0
019c:  0471  iorwf   0x71, 0x0
019d:  0470  iorwf   0x70, 0x0
019e:  1d03  btfss   0x03, 0x2
019f:  29a7  goto    0x01a7
01a0:  0873  movf    0x73, 0x0
01a1:  0086  movwf   0x06
01a2:  0187  clrf    0x07
01a3:  3000  movlw   0x00
01a4:  3fc0  movwi   .0[1]
01a5:  3fc1  movwi   .1[1]
01a6:  0008  return
01a7:  0872  movf    0x72, 0x0
01a8:  397f  andlw   0x7f
01a9:  00f4  movwf   0x74
01aa:  01f5  clrf    0x75
01ab:  35f4  lslf    0x74, 0x1
01ac:  0df5  rlf     0x75, 0x1
01ad:  0873  movf    0x73, 0x0
01ae:  0086  movwf   0x06
01af:  0187  clrf    0x07
01b0:  0874  movf    0x74, 0x0
01b1:  3fc0  movwi   .0[1]
01b2:  0875  movf    0x75, 0x0
01b3:  3fc1  movwi   .1[1]
01b4:  0d71  rlf     0x71, 0x0
01b5:  0d71  rlf     0x71, 0x0
01b6:  3901  andlw   0x01
01b7:  00f4  movwf   0x74
01b8:  01f5  clrf    0x75
01b9:  0873  movf    0x73, 0x0
01ba:  0086  movwf   0x06
01bb:  0187  clrf    0x07
01bc:  0874  movf    0x74, 0x0
01bd:  0481  iorwf   0x01, 0x1
01be:  3141  addfsr  6, .1
01bf:  0875  movf    0x75, 0x0
01c0:  0481  iorwf   0x01, 0x1
01c1:  0873  movf    0x73, 0x0
01c2:  0086  movwf   0x06
01c3:  0187  clrf    0x07
01c4:  3082  movlw   0x82
01c5:  0781  addwf   0x01, 0x1
01c6:  3141  addfsr  6, .1
01c7:  30ff  movlw   0xff
01c8:  3d81  addwfc  0x01, 0x1
01c9:  317f  addfsr  6, -.1
01ca:  0872  movf    0x72, 0x0
01cb:  3980  andlw   0x80
01cc:  383f  iorlw   0x3f
01cd:  00f2  movwf   0x72
01ce:  13f1  bcf     0x71, 0x7
01cf:  0008  return
01d0:  01a7  clrf    0x27
01d1:  308e  movlw   0x8e
01d2:  00a4  movwf   0x24
01d3:  0824  movf    0x24, 0x0
01d4:  00a6  movwf   0x26
01d5:  1fa3  btfss   0x23, 0x7
01d6:  29e4  goto    0x01e4
01d7:  09a0  comf    0x20, 0x1
01d8:  09a1  comf    0x21, 0x1
01d9:  09a2  comf    0x22, 0x1
01da:  09a3  comf    0x23, 0x1
01db:  0aa0  incf    0x20, 0x1
01dc:  1903  btfsc   0x03, 0x2
01dd:  0aa1  incf    0x21, 0x1
01de:  1903  btfsc   0x03, 0x2
01df:  0aa2  incf    0x22, 0x1
01e0:  1903  btfsc   0x03, 0x2
01e1:  0aa3  incf    0x23, 0x1
01e2:  01a7  clrf    0x27
01e3:  0aa7  incf    0x27, 0x1
01e4:  30ff  movlw   0xff
01e5:  0523  andwf   0x23, 0x0
01e6:  1903  btfsc   0x03, 0x2
01e7:  29f4  goto    0x01f4
01e8:  3001  movlw   0x01
01e9:  36a3  lsrf    0x23, 0x1
01ea:  0ca2  rrf     0x22, 0x1
01eb:  0ca1  rrf     0x21, 0x1
01ec:  0ca0  rrf     0x20, 0x1
01ed:  0b89  decfsz  0x09, 0x1
01ee:  29e9  goto    0x01e9
01ef:  3001  movlw   0x01
01f0:  00a4  movwf   0x24
01f1:  0824  movf    0x24, 0x0
01f2:  07a6  addwf   0x26, 0x1
01f3:  29e4  goto    0x01e4
01f4:  0820  movf    0x20, 0x0
01f5:  00f0  movwf   0x70
01f6:  0821  movf    0x21, 0x0
01f7:  00f1  movwf   0x71
01f8:  0822  movf    0x22, 0x0
01f9:  00f2  movwf   0x72
01fa:  0826  movf    0x26, 0x0
01fb:  00a4  movwf   0x24
01fc:  0824  movf    0x24, 0x0
01fd:  00f3  movwf   0x73
01fe:  0827  movf    0x27, 0x0
01ff:  00a5  movwf   0x25
0200:  0825  movf    0x25, 0x0
0201:  00f4  movwf   0x74
0202:  3183  movlp   0x03
0203:  2303  call    0x0303
0204:  0870  movf    0x70, 0x0
0205:  00a0  movwf   0x20
0206:  0871  movf    0x71, 0x0
0207:  00a1  movwf   0x21
0208:  0872  movf    0x72, 0x0
0209:  00a2  movwf   0x22
020a:  0008  return
020b:  0852  movf    0x52, 0x0
020c:  00f0  movwf   0x70
020d:  0853  movf    0x53, 0x0
020e:  00f1  movwf   0x71
020f:  0854  movf    0x54, 0x0
0210:  00f2  movwf   0x72
0211:  3180  movlp   0x00
0212:  20e0  call    0x00e0
0213:  3182  movlp   0x02
0214:  0870  movf    0x70, 0x0
0215:  00d8  movwf   0x58
0216:  0871  movf    0x71, 0x0
0217:  00d9  movwf   0x59
0218:  0872  movf    0x72, 0x0
0219:  00da  movwf   0x5a
021a:  0858  movf    0x58, 0x0
021b:  00c8  movwf   0x48
021c:  0859  movf    0x59, 0x0
021d:  00c9  movwf   0x49
021e:  085a  movf    0x5a, 0x0
021f:  00ca  movwf   0x4a
0220:  3186  movlp   0x06
0221:  26e8  call    0x06e8
0222:  3182  movlp   0x02
0223:  0848  movf    0x48, 0x0
0224:  00db  movwf   0x5b
0225:  0849  movf    0x49, 0x0
0226:  00dc  movwf   0x5c
0227:  084a  movf    0x4a, 0x0
0228:  00dd  movwf   0x5d
0229:  3000  movlw   0x00
022a:  00aa  movwf   0x2a
022b:  3080  movlw   0x80
022c:  00ab  movwf   0x2b
022d:  303f  movlw   0x3f
022e:  00ac  movwf   0x2c
022f:  085b  movf    0x5b, 0x0
0230:  00ad  movwf   0x2d
0231:  085c  movf    0x5c, 0x0
0232:  00ae  movwf   0x2e
0233:  085d  movf    0x5d, 0x0
0234:  00af  movwf   0x2f
0235:  3185  movlp   0x05
0236:  25f4  call    0x05f4
0237:  3182  movlp   0x02
0238:  082a  movf    0x2a, 0x0
0239:  00b7  movwf   0x37
023a:  082b  movf    0x2b, 0x0
023b:  00b8  movwf   0x38
023c:  082c  movf    0x2c, 0x0
023d:  00b9  movwf   0x39
023e:  3000  movlw   0x00
023f:  00ba  movwf   0x3a
0240:  3080  movlw   0x80
0241:  00bb  movwf   0x3b
0242:  303f  movlw   0x3f
0243:  00bc  movwf   0x3c
0244:  3184  movlp   0x04
0245:  24cb  call    0x04cb
0246:  0837  movf    0x37, 0x0
0247:  00d5  movwf   0x55
0248:  0838  movf    0x38, 0x0
0249:  00d6  movwf   0x56
024a:  0839  movf    0x39, 0x0
024b:  00d7  movwf   0x57
024c:  0855  movf    0x55, 0x0
024d:  00d2  movwf   0x52
024e:  0856  movf    0x56, 0x0
024f:  00d3  movwf   0x53
0250:  0857  movf    0x57, 0x0
0251:  00d4  movwf   0x54
0252:  0008  return
0253:  3020  movlw   0x20
0254:  0086  movwf   0x06
0255:  3001  movlw   0x01
0256:  0087  movwf   0x07
0257:  30a0  movlw   0xa0
0258:  0084  movwf   0x04
0259:  3000  movlw   0x00
025a:  0085  movwf   0x05
025b:  301e  movlw   0x1e
025c:  00de  movwf   0x5e
025d:  0016  moviw   0x1++
025e:  001a  movwi   0++
025f:  0bde  decfsz  0x5e, 0x1
0260:  2a5d  goto    0x025d
0261:  0021  movlb   0x01
0262:  01dc  clrf    0x5c
0263:  01dd  clrf    0x5d
0264:  3003  movlw   0x03
0265:  0020  movlb   0x00
0266:  00de  movwf   0x5e
0267:  085e  movf    0x5e, 0x0
0268:  00f0  movwf   0x70
0269:  0021  movlb   0x01
026a:  085c  movf    0x5c, 0x0
026b:  3180  movlp   0x00
026c:  20e8  call    0x00e8
026d:  3182  movlp   0x02
026e:  3ea0  addlw   0xa0
026f:  0086  movwf   0x06
0270:  0187  clrf    0x07
0271:  3f40  moviw   .0[1]
0272:  0020  movlb   0x00
0273:  00d2  movwf   0x52
0274:  3f41  moviw   .1[1]
0275:  00d3  movwf   0x53
0276:  3f42  moviw   .2[1]
0277:  00d4  movwf   0x54
0278:  3182  movlp   0x02
0279:  220b  call    0x020b
027a:  3182  movlp   0x02
027b:  0852  movf    0x52, 0x0
027c:  00df  movwf   0x5f
027d:  0853  movf    0x53, 0x0
027e:  00e0  movwf   0x60
027f:  0854  movf    0x54, 0x0
0280:  00e1  movwf   0x61
0281:  3003  movlw   0x03
0282:  00e2  movwf   0x62
0283:  0862  movf    0x62, 0x0
0284:  00f0  movwf   0x70
0285:  0021  movlb   0x01
0286:  085c  movf    0x5c, 0x0
0287:  3180  movlp   0x00
0288:  20e8  call    0x00e8
0289:  3182  movlp   0x02
028a:  3ebe  addlw   0xbe
028b:  0086  movwf   0x06
028c:  0187  clrf    0x07
028d:  0020  movlb   0x00
028e:  085f  movf    0x5f, 0x0
028f:  3fc0  movwi   .0[1]
0290:  0860  movf    0x60, 0x0
0291:  3fc1  movwi   .1[1]
0292:  0861  movf    0x61, 0x0
0293:  3fc2  movwi   .2[1]
0294:  3001  movlw   0x01
0295:  0021  movlb   0x01
0296:  07dc  addwf   0x5c, 0x1
0297:  3000  movlw   0x00
0298:  3ddd  addwfc  0x5d, 0x1
0299:  085d  movf    0x5d, 0x0
029a:  3a80  xorlw   0x80
029b:  0020  movlb   0x00
029c:  00de  movwf   0x5e
029d:  3080  movlw   0x80
029e:  025e  subwf   0x5e, 0x0
029f:  1d03  btfss   0x03, 0x2
02a0:  2aa4  goto    0x02a4
02a1:  300a  movlw   0x0a
02a2:  0021  movlb   0x01
02a3:  025c  subwf   0x5c, 0x0
02a4:  1c03  btfss   0x03, 0x0
02a5:  2a64  goto    0x0264
02a6:  3180  movlp   0x00
02a7:  2802  goto    0x0002
02a8:  083d  movf    0x3d, 0x0
02a9:  00f1  movwf   0x71
02aa:  083c  movf    0x3c, 0x0
02ab:  00f0  movwf   0x70
02ac:  3003  movlw   0x03
02ad:  00f2  movwf   0x72
02ae:  3000  movlw   0x00
02af:  00f3  movwf   0x73
02b0:  3180  movlp   0x00
02b1:  20f9  call    0x00f9
02b2:  3182  movlp   0x02
02b3:  083a  movf    0x3a, 0x0
02b4:  0770  addwf   0x70, 0x0
02b5:  0084  movwf   0x04
02b6:  083b  movf    0x3b, 0x0
02b7:  3d71  addwfc  0x71, 0x0
02b8:  0085  movwf   0x05
02b9:  3f00  moviw   .0[0]
02ba:  00be  movwf   0x3e
02bb:  3f01  moviw   .1[0]
02bc:  00bf  movwf   0x3f
02bd:  3f02  moviw   .2[0]
02be:  00c0  movwf   0x40
02bf:  083c  movf    0x3c, 0x0
02c0:  043d  iorwf   0x3d, 0x0
02c1:  1903  btfsc   0x03, 0x2
02c2:  2afc  goto    0x02fc
02c3:  30ff  movlw   0xff
02c4:  07bc  addwf   0x3c, 0x1
02c5:  30ff  movlw   0xff
02c6:  3dbd  addwfc  0x3d, 0x1
02c7:  083d  movf    0x3d, 0x0
02c8:  00f1  movwf   0x71
02c9:  083c  movf    0x3c, 0x0
02ca:  00f0  movwf   0x70
02cb:  3003  movlw   0x03
02cc:  00f2  movwf   0x72
02cd:  3000  movlw   0x00
02ce:  00f3  movwf   0x73
02cf:  3180  movlp   0x00
02d0:  20f9  call    0x00f9
02d1:  3182  movlp   0x02
02d2:  083a  movf    0x3a, 0x0
02d3:  0770  addwf   0x70, 0x0
02d4:  0084  movwf   0x04
02d5:  083b  movf    0x3b, 0x0
02d6:  3d71  addwfc  0x71, 0x0
02d7:  0085  movwf   0x05
02d8:  3f00  moviw   .0[0]
02d9:  00aa  movwf   0x2a
02da:  3f01  moviw   .1[0]
02db:  00ab  movwf   0x2b
02dc:  3f02  moviw   .2[0]
02dd:  00ac  movwf   0x2c
02de:  083e  movf    0x3e, 0x0
02df:  00f8  movwf   0x78
02e0:  083f  movf    0x3f, 0x0
02e1:  00f9  movwf   0x79
02e2:  0840  movf    0x40, 0x0
02e3:  00fa  movwf   0x7a
02e4:  0837  movf    0x37, 0x0
02e5:  00fb  movwf   0x7b
02e6:  0838  movf    0x38, 0x0
02e7:  00fc  movwf   0x7c
02e8:  0839  movf    0x39, 0x0
02e9:  00fd  movwf   0x7d
02ea:  3185  movlp   0x05
02eb:  255a  call    0x055a
02ec:  3182  movlp   0x02
02ed:  0878  movf    0x78, 0x0
02ee:  00ad  movwf   0x2d
02ef:  0879  movf    0x79, 0x0
02f0:  00ae  movwf   0x2e
02f1:  087a  movf    0x7a, 0x0
02f2:  00af  movwf   0x2f
02f3:  3185  movlp   0x05
02f4:  25f4  call    0x05f4
02f5:  3182  movlp   0x02
02f6:  082a  movf    0x2a, 0x0
02f7:  00be  movwf   0x3e
02f8:  082b  movf    0x2b, 0x0
02f9:  00bf  movwf   0x3f
02fa:  082c  movf    0x2c, 0x0
02fb:  2abe  goto    0x02be
02fc:  083e  movf    0x3e, 0x0
02fd:  00b7  movwf   0x37
02fe:  083f  movf    0x3f, 0x0
02ff:  00b8  movwf   0x38
0300:  0840  movf    0x40, 0x0
0301:  00b9  movwf   0x39
0302:  0008  return
0303:  0873  movf    0x73, 0x0
0304:  1903  btfsc   0x03, 0x2
0305:  2b0b  goto    0x030b
0306:  0872  movf    0x72, 0x0
0307:  0471  iorwf   0x71, 0x0
0308:  0470  iorwf   0x70, 0x0
0309:  1d03  btfss   0x03, 0x2
030a:  2b1c  goto    0x031c
030b:  3000  movlw   0x00
030c:  00f0  movwf   0x70
030d:  3000  movlw   0x00
030e:  00f1  movwf   0x71
030f:  3000  movlw   0x00
0310:  00f2  movwf   0x72
0311:  0008  return
0312:  3001  movlw   0x01
0313:  00f5  movwf   0x75
0314:  0875  movf    0x75, 0x0
0315:  07f3  addwf   0x73, 0x1
0316:  3001  movlw   0x01
0317:  36f2  lsrf    0x72, 0x1
0318:  0cf1  rrf     0x71, 0x1
0319:  0cf0  rrf     0x70, 0x1
031a:  0b89  decfsz  0x09, 0x1
031b:  2b17  goto    0x0317
031c:  30fe  movlw   0xfe
031d:  0572  andwf   0x72, 0x0
031e:  1903  btfsc   0x03, 0x2
031f:  2b35  goto    0x0335
0320:  2b12  goto    0x0312
0321:  3001  movlw   0x01
0322:  00f5  movwf   0x75
0323:  0875  movf    0x75, 0x0
0324:  07f3  addwf   0x73, 0x1
0325:  3001  movlw   0x01
0326:  07f0  addwf   0x70, 0x1
0327:  3000  movlw   0x00
0328:  1803  btfsc   0x03, 0x0
0329:  3001  movlw   0x01
032a:  07f1  addwf   0x71, 0x1
032b:  3000  movlw   0x00
032c:  1803  btfsc   0x03, 0x0
032d:  3001  movlw   0x01
032e:  07f2  addwf   0x72, 0x1
032f:  3001  movlw   0x01
0330:  36f2  lsrf    0x72, 0x1
0331:  0cf1  rrf     0x71, 0x1
0332:  0cf0  rrf     0x70, 0x1
0333:  0b89  decfsz  0x09, 0x1
0334:  2b30  goto    0x0330
0335:  30ff  movlw   0xff
0336:  0572  andwf   0x72, 0x0
0337:  1903  btfsc   0x03, 0x2
0338:  2b46  goto    0x0346
0339:  2b21  goto    0x0321
033a:  3002  movlw   0x02
033b:  0273  subwf   0x73, 0x0
033c:  1c03  btfss   0x03, 0x0
033d:  2b48  goto    0x0348
033e:  3001  movlw   0x01
033f:  02f3  subwf   0x73, 0x1
0340:  3001  movlw   0x01
0341:  35f0  lslf    0x70, 0x1
0342:  0df1  rlf     0x71, 0x1
0343:  0df2  rlf     0x72, 0x1
0344:  0b89  decfsz  0x09, 0x1
0345:  2b41  goto    0x0341
0346:  1ff1  btfss   0x71, 0x7
0347:  2b3a  goto    0x033a
0348:  1873  btfsc   0x73, 0x0
0349:  2b50  goto    0x0350
034a:  30ff  movlw   0xff
034b:  05f0  andwf   0x70, 0x1
034c:  307f  movlw   0x7f
034d:  05f1  andwf   0x71, 0x1
034e:  30ff  movlw   0xff
034f:  05f2  andwf   0x72, 0x1
0350:  1003  bcf     0x03, 0x0
0351:  0cf3  rrf     0x73, 0x1
0352:  0873  movf    0x73, 0x0
0353:  00f5  movwf   0x75
0354:  01f6  clrf    0x76
0355:  01f7  clrf    0x77
0356:  3010  movlw   0x10
0357:  35f5  lslf    0x75, 0x1
0358:  0df6  rlf     0x76, 0x1
0359:  0df7  rlf     0x77, 0x1
035a:  0b89  decfsz  0x09, 0x1
035b:  2b57  goto    0x0357
035c:  0875  movf    0x75, 0x0
035d:  04f0  iorwf   0x70, 0x1
035e:  0876  movf    0x76, 0x0
035f:  04f1  iorwf   0x71, 0x1
0360:  0877  movf    0x77, 0x0
0361:  04f2  iorwf   0x72, 0x1
0362:  0874  movf    0x74, 0x0
0363:  1903  btfsc   0x03, 0x2
0364:  0008  return
0365:  17f2  bsf     0x72, 0x7
0366:  0008  return
0367:  0843  movf    0x43, 0x0
0368:  0442  iorwf   0x42, 0x0
0369:  0441  iorwf   0x41, 0x0
036a:  1d03  btfss   0x03, 0x2
036b:  2b73  goto    0x0373
036c:  3000  movlw   0x00
036d:  00c1  movwf   0x41
036e:  3000  movlw   0x00
036f:  00c2  movwf   0x42
0370:  3000  movlw   0x00
0371:  00c3  movwf   0x43
0372:  0008  return
0373:  0843  movf    0x43, 0x0
0374:  397f  andlw   0x7f
0375:  00c6  movwf   0x46
0376:  01c7  clrf    0x47
0377:  35c6  lslf    0x46, 0x1
0378:  0dc7  rlf     0x47, 0x1
0379:  0846  movf    0x46, 0x0
037a:  07c4  addwf   0x44, 0x1
037b:  0847  movf    0x47, 0x0
037c:  3dc5  addwfc  0x45, 0x1
037d:  0d42  rlf     0x42, 0x0
037e:  0d42  rlf     0x42, 0x0
037f:  3901  andlw   0x01
0380:  00c6  movwf   0x46
0381:  01c7  clrf    0x47
0382:  0846  movf    0x46, 0x0
0383:  07c4  addwf   0x44, 0x1
0384:  0847  movf    0x47, 0x0
0385:  3dc5  addwfc  0x45, 0x1
0386:  1fc5  btfss   0x45, 0x7
0387:  2b93  goto    0x0393
0388:  3022  movlw   0x22
0389:  00e3  movwf   0x63
038a:  3000  movlw   0x00
038b:  00e4  movwf   0x64
038c:  3000  movlw   0x00
038d:  00c1  movwf   0x41
038e:  3000  movlw   0x00
038f:  00c2  movwf   0x42
0390:  3000  movlw   0x00
0391:  00c3  movwf   0x43
0392:  0008  return
0393:  0845  movf    0x45, 0x0
0394:  3a80  xorlw   0x80
0395:  00c6  movwf   0x46
0396:  3081  movlw   0x81
0397:  0246  subwf   0x46, 0x0
0398:  1d03  btfss   0x03, 0x2
0399:  2b9c  goto    0x039c
039a:  3000  movlw   0x00
039b:  0244  subwf   0x44, 0x0
039c:  1c03  btfss   0x03, 0x0
039d:  2bc2  goto    0x03c2
039e:  3022  movlw   0x22
039f:  0020  movlb   0x00
03a0:  00e3  movwf   0x63
03a1:  3000  movlw   0x00
03a2:  00e4  movwf   0x64
03a3:  0841  movf    0x41, 0x0
03a4:  00f0  movwf   0x70
03a5:  0842  movf    0x42, 0x0
03a6:  00f1  movwf   0x71
03a7:  0843  movf    0x43, 0x0
03a8:  00f2  movwf   0x72
03a9:  3000  movlw   0x00
03aa:  00f3  movwf   0x73
03ab:  3000  movlw   0x00
03ac:  00f4  movwf   0x74
03ad:  3000  movlw   0x00
03ae:  00f5  movwf   0x75
03af:  3181  movlp   0x01
03b0:  216e  call    0x016e
03b1:  3183  movlp   0x03
03b2:  1803  btfsc   0x03, 0x0
03b3:  2bbb  goto    0x03bb
03b4:  30ff  movlw   0xff
03b5:  00c1  movwf   0x41
03b6:  307f  movlw   0x7f
03b7:  00c2  movwf   0x42
03b8:  30ff  movlw   0xff
03b9:  00c3  movwf   0x43
03ba:  0008  return
03bb:  30ff  movlw   0xff
03bc:  00c1  movwf   0x41
03bd:  307f  movlw   0x7f
03be:  00c2  movwf   0x42
03bf:  307f  movlw   0x7f
03c0:  00c3  movwf   0x43
03c1:  0008  return
03c2:  0020  movlb   0x00
03c3:  0845  movf    0x45, 0x0
03c4:  00c7  movwf   0x47
03c5:  0844  movf    0x44, 0x0
03c6:  00c6  movwf   0x46
03c7:  0d47  rlf     0x47, 0x0
03c8:  0cc7  rrf     0x47, 0x1
03c9:  0cc6  rrf     0x46, 0x1
03ca:  0843  movf    0x43, 0x0
03cb:  0646  xorwf   0x46, 0x0
03cc:  3980  andlw   0x80
03cd:  0646  xorwf   0x46, 0x0
03ce:  00c3  movwf   0x43
03cf:  0844  movf    0x44, 0x0
03d0:  3901  andlw   0x01
03d1:  00c6  movwf   0x46
03d2:  0cc6  rrf     0x46, 0x1
03d3:  0cc6  rrf     0x46, 0x1
03d4:  0842  movf    0x42, 0x0
03d5:  0646  xorwf   0x46, 0x0
03d6:  397f  andlw   0x7f
03d7:  0646  xorwf   0x46, 0x0
03d8:  00c2  movwf   0x42
03d9:  0008  return
03da:  0870  movf    0x70, 0x0
03db:  00f4  movwf   0x74
03dc:  0871  movf    0x71, 0x0
03dd:  00f5  movwf   0x75
03de:  0872  movf    0x72, 0x0
03df:  00f6  movwf   0x76
03e0:  1003  bcf     0x03, 0x0
03e1:  0d75  rlf     0x75, 0x0
03e2:  0d76  rlf     0x76, 0x0
03e3:  00f7  movwf   0x77
03e4:  0877  movf    0x77, 0x0
03e5:  00fd  movwf   0x7d
03e6:  087d  movf    0x7d, 0x0
03e7:  1d03  btfss   0x03, 0x2
03e8:  2bf2  goto    0x03f2
03e9:  3000  movlw   0x00
03ea:  00f3  movwf   0x73
03eb:  3000  movlw   0x00
03ec:  00f2  movwf   0x72
03ed:  3000  movlw   0x00
03ee:  00f1  movwf   0x71
03ef:  3000  movlw   0x00
03f0:  00f0  movwf   0x70
03f1:  0008  return
03f2:  0870  movf    0x70, 0x0
03f3:  00f4  movwf   0x74
03f4:  0871  movf    0x71, 0x0
03f5:  00f5  movwf   0x75
03f6:  0872  movf    0x72, 0x0
03f7:  00f6  movwf   0x76
03f8:  3017  movlw   0x17
03f9:  36f6  lsrf    0x76, 0x1
03fa:  0cf5  rrf     0x75, 0x1
03fb:  0cf4  rrf     0x74, 0x1
03fc:  0b89  decfsz  0x09, 0x1
03fd:  2bf9  goto    0x03f9
03fe:  0874  movf    0x74, 0x0
03ff:  00f7  movwf   0x77
0400:  0877  movf    0x77, 0x0
0401:  00f8  movwf   0x78
0402:  17f1  bsf     0x71, 0x7
0403:  30ff  movlw   0xff
0404:  05f0  andwf   0x70, 0x1
0405:  30ff  movlw   0xff
0406:  05f1  andwf   0x71, 0x1
0407:  3000  movlw   0x00
0408:  05f2  andwf   0x72, 0x1
0409:  0870  movf    0x70, 0x0
040a:  00f9  movwf   0x79
040b:  0871  movf    0x71, 0x0
040c:  00fa  movwf   0x7a
040d:  0872  movf    0x72, 0x0
040e:  00fb  movwf   0x7b
040f:  01fc  clrf    0x7c
0410:  308e  movlw   0x8e
0411:  02fd  subwf   0x7d, 0x1
0412:  1ffd  btfss   0x7d, 0x7
0413:  2c27  goto    0x0427
0414:  087d  movf    0x7d, 0x0
0415:  3a80  xorlw   0x80
0416:  3e8f  addlw   0x8f
0417:  1c03  btfss   0x03, 0x0
0418:  2be9  goto    0x03e9
0419:  3001  movlw   0x01
041a:  36fc  lsrf    0x7c, 0x1
041b:  0cfb  rrf     0x7b, 0x1
041c:  0cfa  rrf     0x7a, 0x1
041d:  0cf9  rrf     0x79, 0x1
041e:  0b89  decfsz  0x09, 0x1
041f:  2c1a  goto    0x041a
0420:  3001  movlw   0x01
0421:  00f4  movwf   0x74
0422:  0874  movf    0x74, 0x0
0423:  07fd  addwf   0x7d, 0x1
0424:  1903  btfsc   0x03, 0x2
0425:  2c38  goto    0x0438
0426:  2c19  goto    0x0419
0427:  3018  movlw   0x18
0428:  027d  subwf   0x7d, 0x0
0429:  1803  btfsc   0x03, 0x0
042a:  2be9  goto    0x03e9
042b:  087d  movf    0x7d, 0x0
042c:  1903  btfsc   0x03, 0x2
042d:  2c38  goto    0x0438
042e:  3001  movlw   0x01
042f:  35f9  lslf    0x79, 0x1
0430:  0dfa  rlf     0x7a, 0x1
0431:  0dfb  rlf     0x7b, 0x1
0432:  0dfc  rlf     0x7c, 0x1
0433:  0b89  decfsz  0x09, 0x1
0434:  2c2f  goto    0x042f
0435:  3001  movlw   0x01
0436:  02fd  subwf   0x7d, 0x1
0437:  2c2b  goto    0x042b
0438:  0878  movf    0x78, 0x0
0439:  1903  btfsc   0x03, 0x2
043a:  2c46  goto    0x0446
043b:  09f9  comf    0x79, 0x1
043c:  09fa  comf    0x7a, 0x1
043d:  09fb  comf    0x7b, 0x1
043e:  09fc  comf    0x7c, 0x1
043f:  0af9  incf    0x79, 0x1
0440:  1903  btfsc   0x03, 0x2
0441:  0afa  incf    0x7a, 0x1
0442:  1903  btfsc   0x03, 0x2
0443:  0afb  incf    0x7b, 0x1
0444:  1903  btfsc   0x03, 0x2
0445:  0afc  incf    0x7c, 0x1
0446:  087c  movf    0x7c, 0x0
0447:  00f3  movwf   0x73
0448:  087b  movf    0x7b, 0x0
0449:  00f2  movwf   0x72
044a:  087a  movf    0x7a, 0x0
044b:  00f1  movwf   0x71
044c:  0879  movf    0x79, 0x0
044d:  00f0  movwf   0x70
044e:  0008  return
044f:  0837  movf    0x37, 0x0
0450:  00f0  movwf   0x70
0451:  0838  movf    0x38, 0x0
0452:  00f1  movwf   0x71
0453:  0839  movf    0x39, 0x0
0454:  00f2  movwf   0x72
0455:  303e  movlw   0x3e
0456:  00ba  movwf   0x3a
0457:  083a  movf    0x3a, 0x0
0458:  00f3  movwf   0x73
0459:  3181  movlp   0x01
045a:  219b  call    0x019b
045b:  3184  movlp   0x04
045c:  1fbf  btfss   0x3f, 0x7
045d:  2c7d  goto    0x047d
045e:  0837  movf    0x37, 0x0
045f:  00f0  movwf   0x70
0460:  0838  movf    0x38, 0x0
0461:  00f1  movwf   0x71
0462:  0839  movf    0x39, 0x0
0463:  00f2  movwf   0x72
0464:  3000  movlw   0x00
0465:  00f3  movwf   0x73
0466:  3000  movlw   0x00
0467:  00f4  movwf   0x74
0468:  3000  movlw   0x00
0469:  00f5  movwf   0x75
046a:  3181  movlp   0x01
046b:  216e  call    0x016e
046c:  3184  movlp   0x04
046d:  1803  btfsc   0x03, 0x0
046e:  2c76  goto    0x0476
046f:  3000  movlw   0x00
0470:  00b7  movwf   0x37
0471:  3080  movlw   0x80
0472:  00b8  movwf   0x38
0473:  30bf  movlw   0xbf
0474:  00b9  movwf   0x39
0475:  0008  return
0476:  3000  movlw   0x00
0477:  00b7  movwf   0x37
0478:  3000  movlw   0x00
0479:  00b8  movwf   0x38
047a:  3000  movlw   0x00
047b:  00b9  movwf   0x39
047c:  0008  return
047d:  3000  movlw   0x00
047e:  023f  subwf   0x3f, 0x0
047f:  3015  movlw   0x15
0480:  1903  btfsc   0x03, 0x2
0481:  023e  subwf   0x3e, 0x0
0482:  1803  btfsc   0x03, 0x0
0483:  0008  return
0484:  0837  movf    0x37, 0x0
0485:  00f0  movwf   0x70
0486:  0838  movf    0x38, 0x0
0487:  00f1  movwf   0x71
0488:  0839  movf    0x39, 0x0
0489:  00f2  movwf   0x72
048a:  3183  movlp   0x03
048b:  23da  call    0x03da
048c:  3184  movlp   0x04
048d:  0873  movf    0x73, 0x0
048e:  00a3  movwf   0x23
048f:  0872  movf    0x72, 0x0
0490:  00a2  movwf   0x22
0491:  0871  movf    0x71, 0x0
0492:  00a1  movwf   0x21
0493:  0870  movf    0x70, 0x0
0494:  00a0  movwf   0x20
0495:  3181  movlp   0x01
0496:  21d0  call    0x01d0
0497:  3184  movlp   0x04
0498:  0820  movf    0x20, 0x0
0499:  00bb  movwf   0x3b
049a:  0821  movf    0x21, 0x0
049b:  00bc  movwf   0x3c
049c:  0822  movf    0x22, 0x0
049d:  00bd  movwf   0x3d
049e:  0837  movf    0x37, 0x0
049f:  00f0  movwf   0x70
04a0:  0838  movf    0x38, 0x0
04a1:  00f1  movwf   0x71
04a2:  0839  movf    0x39, 0x0
04a3:  00f2  movwf   0x72
04a4:  083b  movf    0x3b, 0x0
04a5:  00f3  movwf   0x73
04a6:  083c  movf    0x3c, 0x0
04a7:  00f4  movwf   0x74
04a8:  083d  movf    0x3d, 0x0
04a9:  00f5  movwf   0x75
04aa:  3181  movlp   0x01
04ab:  216e  call    0x016e
04ac:  3184  movlp   0x04
04ad:  1803  btfsc   0x03, 0x0
04ae:  2cc4  goto    0x04c4
04af:  3000  movlw   0x00
04b0:  00aa  movwf   0x2a
04b1:  3080  movlw   0x80
04b2:  00ab  movwf   0x2b
04b3:  30bf  movlw   0xbf
04b4:  00ac  movwf   0x2c
04b5:  083b  movf    0x3b, 0x0
04b6:  00ad  movwf   0x2d
04b7:  083c  movf    0x3c, 0x0
04b8:  00ae  movwf   0x2e
04b9:  083d  movf    0x3d, 0x0
04ba:  00af  movwf   0x2f
04bb:  3185  movlp   0x05
04bc:  25f4  call    0x05f4
04bd:  082a  movf    0x2a, 0x0
04be:  00b7  movwf   0x37
04bf:  082b  movf    0x2b, 0x0
04c0:  00b8  movwf   0x38
04c1:  082c  movf    0x2c, 0x0
04c2:  00b9  movwf   0x39
04c3:  0008  return
04c4:  083b  movf    0x3b, 0x0
04c5:  00b7  movwf   0x37
04c6:  083c  movf    0x3c, 0x0
04c7:  00b8  movwf   0x38
04c8:  083d  movf    0x3d, 0x0
04c9:  00b9  movwf   0x39
04ca:  0008  return
04cb:  083a  movf    0x3a, 0x0
04cc:  00bd  movwf   0x3d
04cd:  083b  movf    0x3b, 0x0
04ce:  00be  movwf   0x3e
04cf:  083c  movf    0x3c, 0x0
04d0:  00bf  movwf   0x3f
04d1:  1003  bcf     0x03, 0x0
04d2:  0d3e  rlf     0x3e, 0x0
04d3:  0d3f  rlf     0x3f, 0x0
04d4:  00c0  movwf   0x40
04d5:  0840  movf    0x40, 0x0
04d6:  00c5  movwf   0x45
04d7:  0845  movf    0x45, 0x0
04d8:  1d03  btfss   0x03, 0x2
04d9:  2ce1  goto    0x04e1
04da:  3000  movlw   0x00
04db:  00b7  movwf   0x37
04dc:  3000  movlw   0x00
04dd:  00b8  movwf   0x38
04de:  3000  movlw   0x00
04df:  00b9  movwf   0x39
04e0:  0008  return
04e1:  0837  movf    0x37, 0x0
04e2:  00bd  movwf   0x3d
04e3:  0838  movf    0x38, 0x0
04e4:  00be  movwf   0x3e
04e5:  0839  movf    0x39, 0x0
04e6:  00bf  movwf   0x3f
04e7:  1003  bcf     0x03, 0x0
04e8:  0d3e  rlf     0x3e, 0x0
04e9:  0d3f  rlf     0x3f, 0x0
04ea:  00c0  movwf   0x40
04eb:  0840  movf    0x40, 0x0
04ec:  00c6  movwf   0x46
04ed:  0846  movf    0x46, 0x0
04ee:  1d03  btfss   0x03, 0x2
04ef:  2cf7  goto    0x04f7
04f0:  3000  movlw   0x00
04f1:  00b7  movwf   0x37
04f2:  3000  movlw   0x00
04f3:  00b8  movwf   0x38
04f4:  3000  movlw   0x00
04f5:  00b9  movwf   0x39
04f6:  0008  return
04f7:  3000  movlw   0x00
04f8:  00c2  movwf   0x42
04f9:  3000  movlw   0x00
04fa:  00c3  movwf   0x43
04fb:  3000  movlw   0x00
04fc:  00c4  movwf   0x44
04fd:  3089  movlw   0x89
04fe:  0746  addwf   0x46, 0x0
04ff:  00bd  movwf   0x3d
0500:  083d  movf    0x3d, 0x0
0501:  02c5  subwf   0x45, 0x1
0502:  083c  movf    0x3c, 0x0
0503:  00bd  movwf   0x3d
0504:  083d  movf    0x3d, 0x0
0505:  00c6  movwf   0x46
0506:  0839  movf    0x39, 0x0
0507:  00bd  movwf   0x3d
0508:  083d  movf    0x3d, 0x0
0509:  06c6  xorwf   0x46, 0x1
050a:  3080  movlw   0x80
050b:  00bd  movwf   0x3d
050c:  083d  movf    0x3d, 0x0
050d:  05c6  andwf   0x46, 0x1
050e:  17bb  bsf     0x3b, 0x7
050f:  30ff  movlw   0xff
0510:  05ba  andwf   0x3a, 0x1
0511:  30ff  movlw   0xff
0512:  05bb  andwf   0x3b, 0x1
0513:  3000  movlw   0x00
0514:  05bc  andwf   0x3c, 0x1
0515:  17b8  bsf     0x38, 0x7
0516:  30ff  movlw   0xff
0517:  05b7  andwf   0x37, 0x1
0518:  30ff  movlw   0xff
0519:  05b8  andwf   0x38, 0x1
051a:  3000  movlw   0x00
051b:  05b9  andwf   0x39, 0x1
051c:  3018  movlw   0x18
051d:  00bd  movwf   0x3d
051e:  083d  movf    0x3d, 0x0
051f:  00c1  movwf   0x41
0520:  3001  movlw   0x01
0521:  35c2  lslf    0x42, 0x1
0522:  0dc3  rlf     0x43, 0x1
0523:  0dc4  rlf     0x44, 0x1
0524:  0b89  decfsz  0x09, 0x1
0525:  2d21  goto    0x0521
0526:  0839  movf    0x39, 0x0
0527:  023c  subwf   0x3c, 0x0
0528:  1d03  btfss   0x03, 0x2
0529:  2d30  goto    0x0530
052a:  0838  movf    0x38, 0x0
052b:  023b  subwf   0x3b, 0x0
052c:  1d03  btfss   0x03, 0x2
052d:  2d30  goto    0x0530
052e:  0837  movf    0x37, 0x0
052f:  023a  subwf   0x3a, 0x0
0530:  1c03  btfss   0x03, 0x0
0531:  2d39  goto    0x0539
0532:  0837  movf    0x37, 0x0
0533:  02ba  subwf   0x3a, 0x1
0534:  0838  movf    0x38, 0x0
0535:  3bbb  subwfb  0x3b, 0x1
0536:  0839  movf    0x39, 0x0
0537:  3bbc  subwfb  0x3c, 0x1
0538:  1442  bsf     0x42, 0x0
0539:  3001  movlw   0x01
053a:  35ba  lslf    0x3a, 0x1
053b:  0dbb  rlf     0x3b, 0x1
053c:  0dbc  rlf     0x3c, 0x1
053d:  0b89  decfsz  0x09, 0x1
053e:  2d3a  goto    0x053a
053f:  3001  movlw   0x01
0540:  02c1  subwf   0x41, 0x1
0541:  1d03  btfss   0x03, 0x2
0542:  2d20  goto    0x0520
0543:  0842  movf    0x42, 0x0
0544:  00f0  movwf   0x70
0545:  0843  movf    0x43, 0x0
0546:  00f1  movwf   0x71
0547:  0844  movf    0x44, 0x0
0548:  00f2  movwf   0x72
0549:  0845  movf    0x45, 0x0
054a:  00bd  movwf   0x3d
054b:  083d  movf    0x3d, 0x0
054c:  00f3  movwf   0x73
054d:  0846  movf    0x46, 0x0
054e:  00be  movwf   0x3e
054f:  083e  movf    0x3e, 0x0
0550:  00f4  movwf   0x74
0551:  3183  movlp   0x03
0552:  2303  call    0x0303
0553:  0870  movf    0x70, 0x0
0554:  00b7  movwf   0x37
0555:  0871  movf    0x71, 0x0
0556:  00b8  movwf   0x38
0557:  0872  movf    0x72, 0x0
0558:  00b9  movwf   0x39
0559:  0008  return
055a:  0878  movf    0x78, 0x0
055b:  00a0  movwf   0x20
055c:  0879  movf    0x79, 0x0
055d:  00a1  movwf   0x21
055e:  087a  movf    0x7a, 0x0
055f:  00a2  movwf   0x22
0560:  1003  bcf     0x03, 0x0
0561:  0d21  rlf     0x21, 0x0
0562:  0d22  rlf     0x22, 0x0
0563:  00a3  movwf   0x23
0564:  0823  movf    0x23, 0x0
0565:  00a4  movwf   0x24
0566:  0824  movf    0x24, 0x0
0567:  1d03  btfss   0x03, 0x2
0568:  2d70  goto    0x0570
0569:  3000  movlw   0x00
056a:  00f8  movwf   0x78
056b:  3000  movlw   0x00
056c:  00f9  movwf   0x79
056d:  3000  movlw   0x00
056e:  00fa  movwf   0x7a
056f:  0008  return
0570:  087b  movf    0x7b, 0x0
0571:  00a0  movwf   0x20
0572:  087c  movf    0x7c, 0x0
0573:  00a1  movwf   0x21
0574:  087d  movf    0x7d, 0x0
0575:  00a2  movwf   0x22
0576:  1003  bcf     0x03, 0x0
0577:  0d21  rlf     0x21, 0x0
0578:  0d22  rlf     0x22, 0x0
0579:  00a3  movwf   0x23
057a:  0823  movf    0x23, 0x0
057b:  00a9  movwf   0x29
057c:  0829  movf    0x29, 0x0
057d:  1d03  btfss   0x03, 0x2
057e:  2d86  goto    0x0586
057f:  3000  movlw   0x00
0580:  00f8  movwf   0x78
0581:  3000  movlw   0x00
0582:  00f9  movwf   0x79
0583:  3000  movlw   0x00
0584:  00fa  movwf   0x7a
0585:  0008  return
0586:  0829  movf    0x29, 0x0
0587:  3e7b  addlw   0x7b
0588:  00a0  movwf   0x20
0589:  0820  movf    0x20, 0x0
058a:  07a4  addwf   0x24, 0x1
058b:  087a  movf    0x7a, 0x0
058c:  00a0  movwf   0x20
058d:  0820  movf    0x20, 0x0
058e:  00a9  movwf   0x29
058f:  087d  movf    0x7d, 0x0
0590:  00a0  movwf   0x20
0591:  0820  movf    0x20, 0x0
0592:  06a9  xorwf   0x29, 0x1
0593:  3080  movlw   0x80
0594:  00a0  movwf   0x20
0595:  0820  movf    0x20, 0x0
0596:  05a9  andwf   0x29, 0x1
0597:  17f9  bsf     0x79, 0x7
0598:  17fc  bsf     0x7c, 0x7
0599:  30ff  movlw   0xff
059a:  05fb  andwf   0x7b, 0x1
059b:  30ff  movlw   0xff
059c:  05fc  andwf   0x7c, 0x1
059d:  3000  movlw   0x00
059e:  05fd  andwf   0x7d, 0x1
059f:  3000  movlw   0x00
05a0:  00a5  movwf   0x25
05a1:  3000  movlw   0x00
05a2:  00a6  movwf   0x26
05a3:  3000  movlw   0x00
05a4:  00a7  movwf   0x27
05a5:  3007  movlw   0x07
05a6:  00a0  movwf   0x20
05a7:  0820  movf    0x20, 0x0
05a8:  00a8  movwf   0x28
05a9:  1c78  btfss   0x78, 0x0
05aa:  2db1  goto    0x05b1
05ab:  087b  movf    0x7b, 0x0
05ac:  07a5  addwf   0x25, 0x1
05ad:  087c  movf    0x7c, 0x0
05ae:  3da6  addwfc  0x26, 0x1
05af:  087d  movf    0x7d, 0x0
05b0:  3da7  addwfc  0x27, 0x1
05b1:  3001  movlw   0x01
05b2:  36fa  lsrf    0x7a, 0x1
05b3:  0cf9  rrf     0x79, 0x1
05b4:  0cf8  rrf     0x78, 0x1
05b5:  0b89  decfsz  0x09, 0x1
05b6:  2db2  goto    0x05b2
05b7:  3001  movlw   0x01
05b8:  35fb  lslf    0x7b, 0x1
05b9:  0dfc  rlf     0x7c, 0x1
05ba:  0dfd  rlf     0x7d, 0x1
05bb:  0b89  decfsz  0x09, 0x1
05bc:  2db8  goto    0x05b8
05bd:  3001  movlw   0x01
05be:  02a8  subwf   0x28, 0x1
05bf:  1d03  btfss   0x03, 0x2
05c0:  2da9  goto    0x05a9
05c1:  3009  movlw   0x09
05c2:  00a0  movwf   0x20
05c3:  0820  movf    0x20, 0x0
05c4:  00a8  movwf   0x28
05c5:  1c78  btfss   0x78, 0x0
05c6:  2dcd  goto    0x05cd
05c7:  087b  movf    0x7b, 0x0
05c8:  07a5  addwf   0x25, 0x1
05c9:  087c  movf    0x7c, 0x0
05ca:  3da6  addwfc  0x26, 0x1
05cb:  087d  movf    0x7d, 0x0
05cc:  3da7  addwfc  0x27, 0x1
05cd:  3001  movlw   0x01
05ce:  36fa  lsrf    0x7a, 0x1
05cf:  0cf9  rrf     0x79, 0x1
05d0:  0cf8  rrf     0x78, 0x1
05d1:  0b89  decfsz  0x09, 0x1
05d2:  2dce  goto    0x05ce
05d3:  3001  movlw   0x01
05d4:  36a7  lsrf    0x27, 0x1
05d5:  0ca6  rrf     0x26, 0x1
05d6:  0ca5  rrf     0x25, 0x1
05d7:  0b89  decfsz  0x09, 0x1
05d8:  2dd4  goto    0x05d4
05d9:  3001  movlw   0x01
05da:  02a8  subwf   0x28, 0x1
05db:  1d03  btfss   0x03, 0x2
05dc:  2dc5  goto    0x05c5
05dd:  0825  movf    0x25, 0x0
05de:  00f0  movwf   0x70
05df:  0826  movf    0x26, 0x0
05e0:  00f1  movwf   0x71
05e1:  0827  movf    0x27, 0x0
05e2:  00f2  movwf   0x72
05e3:  0824  movf    0x24, 0x0
05e4:  00a0  movwf   0x20
05e5:  0820  movf    0x20, 0x0
05e6:  00f3  movwf   0x73
05e7:  0829  movf    0x29, 0x0
05e8:  00a1  movwf   0x21
05e9:  0821  movf    0x21, 0x0
05ea:  00f4  movwf   0x74
05eb:  3183  movlp   0x03
05ec:  2303  call    0x0303
05ed:  0870  movf    0x70, 0x0
05ee:  00f8  movwf   0x78
05ef:  0871  movf    0x71, 0x0
05f0:  00f9  movwf   0x79
05f1:  0872  movf    0x72, 0x0
05f2:  00fa  movwf   0x7a
05f3:  0008  return
05f4:  082a  movf    0x2a, 0x0
05f5:  00b0  movwf   0x30
05f6:  082b  movf    0x2b, 0x0
05f7:  00b1  movwf   0x31
05f8:  082c  movf    0x2c, 0x0
05f9:  00b2  movwf   0x32
05fa:  1003  bcf     0x03, 0x0
05fb:  0d31  rlf     0x31, 0x0
05fc:  0d32  rlf     0x32, 0x0
05fd:  00b3  movwf   0x33
05fe:  0833  movf    0x33, 0x0
05ff:  00b6  movwf   0x36
0600:  082d  movf    0x2d, 0x0
0601:  00b0  movwf   0x30
0602:  082e  movf    0x2e, 0x0
0603:  00b1  movwf   0x31
0604:  082f  movf    0x2f, 0x0
0605:  00b2  movwf   0x32
0606:  1003  bcf     0x03, 0x0
0607:  0d31  rlf     0x31, 0x0
0608:  0d32  rlf     0x32, 0x0
0609:  00b3  movwf   0x33
060a:  0833  movf    0x33, 0x0
060b:  00b5  movwf   0x35
060c:  0836  movf    0x36, 0x0
060d:  1903  btfsc   0x03, 0x2
060e:  2e1b  goto    0x061b
060f:  0835  movf    0x35, 0x0
0610:  0236  subwf   0x36, 0x0
0611:  1803  btfsc   0x03, 0x0
0612:  2e22  goto    0x0622
0613:  0835  movf    0x35, 0x0
0614:  00b0  movwf   0x30
0615:  0836  movf    0x36, 0x0
0616:  02b0  subwf   0x30, 0x1
0617:  3019  movlw   0x19
0618:  0230  subwf   0x30, 0x0
0619:  1c03  btfss   0x03, 0x0
061a:  2e22  goto    0x0622
061b:  082d  movf    0x2d, 0x0
061c:  00aa  movwf   0x2a
061d:  082e  movf    0x2e, 0x0
061e:  00ab  movwf   0x2b
061f:  082f  movf    0x2f, 0x0
0620:  00ac  movwf   0x2c
0621:  0008  return
0622:  0835  movf    0x35, 0x0
0623:  1903  btfsc   0x03, 0x2
0624:  0008  return
0625:  0836  movf    0x36, 0x0
0626:  0235  subwf   0x35, 0x0
0627:  1803  btfsc   0x03, 0x0
0628:  2e31  goto    0x0631
0629:  0836  movf    0x36, 0x0
062a:  00b0  movwf   0x30
062b:  0835  movf    0x35, 0x0
062c:  02b0  subwf   0x30, 0x1
062d:  3019  movlw   0x19
062e:  0230  subwf   0x30, 0x0
062f:  1803  btfsc   0x03, 0x0
0630:  0008  return
0631:  3006  movlw   0x06
0632:  00b0  movwf   0x30
0633:  0830  movf    0x30, 0x0
0634:  00b4  movwf   0x34
0635:  1bac  btfsc   0x2c, 0x7
0636:  17b4  bsf     0x34, 0x7
0637:  1baf  btfsc   0x2f, 0x7
0638:  1734  bsf     0x34, 0x6
0639:  17ab  bsf     0x2b, 0x7
063a:  30ff  movlw   0xff
063b:  05aa  andwf   0x2a, 0x1
063c:  30ff  movlw   0xff
063d:  05ab  andwf   0x2b, 0x1
063e:  3000  movlw   0x00
063f:  05ac  andwf   0x2c, 0x1
0640:  17ae  bsf     0x2e, 0x7
0641:  30ff  movlw   0xff
0642:  05ad  andwf   0x2d, 0x1
0643:  30ff  movlw   0xff
0644:  05ae  andwf   0x2e, 0x1
0645:  3000  movlw   0x00
0646:  05af  andwf   0x2f, 0x1
0647:  0835  movf    0x35, 0x0
0648:  0236  subwf   0x36, 0x0
0649:  1803  btfsc   0x03, 0x0
064a:  2e6d  goto    0x066d
064b:  3001  movlw   0x01
064c:  35ad  lslf    0x2d, 0x1
064d:  0dae  rlf     0x2e, 0x1
064e:  0daf  rlf     0x2f, 0x1
064f:  0b89  decfsz  0x09, 0x1
0650:  2e4c  goto    0x064c
0651:  3001  movlw   0x01
0652:  02b5  subwf   0x35, 0x1
0653:  0835  movf    0x35, 0x0
0654:  0636  xorwf   0x36, 0x0
0655:  1903  btfsc   0x03, 0x2
0656:  2e68  goto    0x0668
0657:  3001  movlw   0x01
0658:  02b4  subwf   0x34, 0x1
0659:  0834  movf    0x34, 0x0
065a:  3907  andlw   0x07
065b:  1903  btfsc   0x03, 0x2
065c:  2e68  goto    0x0668
065d:  2e4b  goto    0x064b
065e:  3001  movlw   0x01
065f:  36ac  lsrf    0x2c, 0x1
0660:  0cab  rrf     0x2b, 0x1
0661:  0caa  rrf     0x2a, 0x1
0662:  0b89  decfsz  0x09, 0x1
0663:  2e5f  goto    0x065f
0664:  3001  movlw   0x01
0665:  00b0  movwf   0x30
0666:  0830  movf    0x30, 0x0
0667:  07b6  addwf   0x36, 0x1
0668:  0836  movf    0x36, 0x0
0669:  0635  xorwf   0x35, 0x0
066a:  1903  btfsc   0x03, 0x2
066b:  2e92  goto    0x0692
066c:  2e5e  goto    0x065e
066d:  0836  movf    0x36, 0x0
066e:  0235  subwf   0x35, 0x0
066f:  1803  btfsc   0x03, 0x0
0670:  2e92  goto    0x0692
0671:  3001  movlw   0x01
0672:  35aa  lslf    0x2a, 0x1
0673:  0dab  rlf     0x2b, 0x1
0674:  0dac  rlf     0x2c, 0x1
0675:  0b89  decfsz  0x09, 0x1
0676:  2e72  goto    0x0672
0677:  3001  movlw   0x01
0678:  02b6  subwf   0x36, 0x1
0679:  0835  movf    0x35, 0x0
067a:  0636  xorwf   0x36, 0x0
067b:  1903  btfsc   0x03, 0x2
067c:  2e8e  goto    0x068e
067d:  3001  movlw   0x01
067e:  02b4  subwf   0x34, 0x1
067f:  0834  movf    0x34, 0x0
0680:  3907  andlw   0x07
0681:  1903  btfsc   0x03, 0x2
0682:  2e8e  goto    0x068e
0683:  2e71  goto    0x0671
0684:  3001  movlw   0x01
0685:  36af  lsrf    0x2f, 0x1
0686:  0cae  rrf     0x2e, 0x1
0687:  0cad  rrf     0x2d, 0x1
0688:  0b89  decfsz  0x09, 0x1
0689:  2e85  goto    0x0685
068a:  3001  movlw   0x01
068b:  00b0  movwf   0x30
068c:  0830  movf    0x30, 0x0
068d:  07b5  addwf   0x35, 0x1
068e:  0836  movf    0x36, 0x0
068f:  0635  xorwf   0x35, 0x0
0690:  1d03  btfss   0x03, 0x2
0691:  2e84  goto    0x0684
0692:  1fb4  btfss   0x34, 0x7
0693:  2ea4  goto    0x06a4
0694:  30ff  movlw   0xff
0695:  06aa  xorwf   0x2a, 0x1
0696:  30ff  movlw   0xff
0697:  06ab  xorwf   0x2b, 0x1
0698:  30ff  movlw   0xff
0699:  06ac  xorwf   0x2c, 0x1
069a:  3001  movlw   0x01
069b:  07aa  addwf   0x2a, 0x1
069c:  3000  movlw   0x00
069d:  1803  btfsc   0x03, 0x0
069e:  3001  movlw   0x01
069f:  07ab  addwf   0x2b, 0x1
06a0:  3000  movlw   0x00
06a1:  1803  btfsc   0x03, 0x0
06a2:  3001  movlw   0x01
06a3:  07ac  addwf   0x2c, 0x1
06a4:  1f34  btfss   0x34, 0x6
06a5:  2eb6  goto    0x06b6
06a6:  30ff  movlw   0xff
06a7:  06ad  xorwf   0x2d, 0x1
06a8:  30ff  movlw   0xff
06a9:  06ae  xorwf   0x2e, 0x1
06aa:  30ff  movlw   0xff
06ab:  06af  xorwf   0x2f, 0x1
06ac:  3001  movlw   0x01
06ad:  07ad  addwf   0x2d, 0x1
06ae:  3000  movlw   0x00
06af:  1803  btfsc   0x03, 0x0
06b0:  3001  movlw   0x01
06b1:  07ae  addwf   0x2e, 0x1
06b2:  3000  movlw   0x00
06b3:  1803  btfsc   0x03, 0x0
06b4:  3001  movlw   0x01
06b5:  07af  addwf   0x2f, 0x1
06b6:  01b4  clrf    0x34
06b7:  082a  movf    0x2a, 0x0
06b8:  07ad  addwf   0x2d, 0x1
06b9:  082b  movf    0x2b, 0x0
06ba:  3dae  addwfc  0x2e, 0x1
06bb:  082c  movf    0x2c, 0x0
06bc:  3daf  addwfc  0x2f, 0x1
06bd:  1faf  btfss   0x2f, 0x7
06be:  2ed1  goto    0x06d1
06bf:  30ff  movlw   0xff
06c0:  06ad  xorwf   0x2d, 0x1
06c1:  30ff  movlw   0xff
06c2:  06ae  xorwf   0x2e, 0x1
06c3:  30ff  movlw   0xff
06c4:  06af  xorwf   0x2f, 0x1
06c5:  3001  movlw   0x01
06c6:  07ad  addwf   0x2d, 0x1
06c7:  3000  movlw   0x00
06c8:  1803  btfsc   0x03, 0x0
06c9:  3001  movlw   0x01
06ca:  07ae  addwf   0x2e, 0x1
06cb:  3000  movlw   0x00
06cc:  1803  btfsc   0x03, 0x0
06cd:  3001  movlw   0x01
06ce:  07af  addwf   0x2f, 0x1
06cf:  01b4  clrf    0x34
06d0:  0ab4  incf    0x34, 0x1
06d1:  082d  movf    0x2d, 0x0
06d2:  00f0  movwf   0x70
06d3:  082e  movf    0x2e, 0x0
06d4:  00f1  movwf   0x71
06d5:  082f  movf    0x2f, 0x0
06d6:  00f2  movwf   0x72
06d7:  0836  movf    0x36, 0x0
06d8:  00b0  movwf   0x30
06d9:  0830  movf    0x30, 0x0
06da:  00f3  movwf   0x73
06db:  0834  movf    0x34, 0x0
06dc:  00b1  movwf   0x31
06dd:  0831  movf    0x31, 0x0
06de:  00f4  movwf   0x74
06df:  3183  movlp   0x03
06e0:  2303  call    0x0303
06e1:  0870  movf    0x70, 0x0
06e2:  00aa  movwf   0x2a
06e3:  0871  movf    0x71, 0x0
06e4:  00ab  movwf   0x2b
06e5:  0872  movf    0x72, 0x0
06e6:  00ac  movwf   0x2c
06e7:  0008  return
06e8:  084a  movf    0x4a, 0x0
06e9:  0449  iorwf   0x49, 0x0
06ea:  0448  iorwf   0x48, 0x0
06eb:  1d03  btfss   0x03, 0x2
06ec:  2ef4  goto    0x06f4
06ed:  3000  movlw   0x00
06ee:  00c8  movwf   0x48
06ef:  3080  movlw   0x80
06f0:  00c9  movwf   0x49
06f1:  303f  movlw   0x3f
06f2:  00ca  movwf   0x4a
06f3:  0008  return
06f4:  3072  movlw   0x72
06f5:  00f0  movwf   0x70
06f6:  3031  movlw   0x31
06f7:  00f1  movwf   0x71
06f8:  3044  movlw   0x44
06f9:  00f2  movwf   0x72
06fa:  0848  movf    0x48, 0x0
06fb:  00f3  movwf   0x73
06fc:  0849  movf    0x49, 0x0
06fd:  00f4  movwf   0x74
06fe:  084a  movf    0x4a, 0x0
06ff:  00f5  movwf   0x75
0700:  3181  movlp   0x01
0701:  216e  call    0x016e
0702:  3186  movlp   0x06
0703:  1803  btfsc   0x03, 0x0
0704:  2f10  goto    0x0710
0705:  3022  movlw   0x22
0706:  00e3  movwf   0x63
0707:  3000  movlw   0x00
0708:  00e4  movwf   0x64
0709:  30ff  movlw   0xff
070a:  00c8  movwf   0x48
070b:  307f  movlw   0x7f
070c:  00c9  movwf   0x49
070d:  307f  movlw   0x7f
070e:  00ca  movwf   0x4a
070f:  0008  return
0710:  0848  movf    0x48, 0x0
0711:  00f0  movwf   0x70
0712:  0849  movf    0x49, 0x0
0713:  00f1  movwf   0x71
0714:  084a  movf    0x4a, 0x0
0715:  00f2  movwf   0x72
0716:  3049  movlw   0x49
0717:  00f3  movwf   0x73
0718:  303a  movlw   0x3a
0719:  00f4  movwf   0x74
071a:  30c4  movlw   0xc4
071b:  00f5  movwf   0x75
071c:  3181  movlp   0x01
071d:  216e  call    0x016e
071e:  3186  movlp   0x06
071f:  1803  btfsc   0x03, 0x0
0720:  2f2c  goto    0x072c
0721:  3022  movlw   0x22
0722:  00e3  movwf   0x63
0723:  3000  movlw   0x00
0724:  00e4  movwf   0x64
0725:  3000  movlw   0x00
0726:  00c8  movwf   0x48
0727:  3000  movlw   0x00
0728:  00c9  movwf   0x49
0729:  3000  movlw   0x00
072a:  00ca  movwf   0x4a
072b:  0008  return
072c:  0848  movf    0x48, 0x0
072d:  00f0  movwf   0x70
072e:  0849  movf    0x49, 0x0
072f:  00f1  movwf   0x71
0730:  084a  movf    0x4a, 0x0
0731:  00f2  movwf   0x72
0732:  3000  movlw   0x00
0733:  00f3  movwf   0x73
0734:  3000  movlw   0x00
0735:  00f4  movwf   0x74
0736:  3000  movlw   0x00
0737:  00f5  movwf   0x75
0738:  3181  movlp   0x01
0739:  216e  call    0x016e
073a:  3186  movlp   0x06
073b:  1803  btfsc   0x03, 0x0
073c:  2f3f  goto    0x073f
073d:  3001  movlw   0x01
073e:  2f40  goto    0x0740
073f:  3000  movlw   0x00
0740:  00cb  movwf   0x4b
0741:  084b  movf    0x4b, 0x0
0742:  00d1  movwf   0x51
0743:  0851  movf    0x51, 0x0
0744:  1903  btfsc   0x03, 0x2
0745:  2f55  goto    0x0755
0746:  0848  movf    0x48, 0x0
0747:  00f0  movwf   0x70
0748:  0849  movf    0x49, 0x0
0749:  00f1  movwf   0x71
074a:  084a  movf    0x4a, 0x0
074b:  00f2  movwf   0x72
074c:  3180  movlp   0x00
074d:  20e0  call    0x00e0
074e:  3186  movlp   0x06
074f:  0870  movf    0x70, 0x0
0750:  00c8  movwf   0x48
0751:  0871  movf    0x71, 0x0
0752:  00c9  movwf   0x49
0753:  0872  movf    0x72, 0x0
0754:  00ca  movwf   0x4a
0755:  30aa  movlw   0xaa
0756:  00f8  movwf   0x78
0757:  30b8  movlw   0xb8
0758:  00f9  movwf   0x79
0759:  303f  movlw   0x3f
075a:  00fa  movwf   0x7a
075b:  0848  movf    0x48, 0x0
075c:  00fb  movwf   0x7b
075d:  0849  movf    0x49, 0x0
075e:  00fc  movwf   0x7c
075f:  084a  movf    0x4a, 0x0
0760:  00fd  movwf   0x7d
0761:  3185  movlp   0x05
0762:  255a  call    0x055a
0763:  3186  movlp   0x06
0764:  0878  movf    0x78, 0x0
0765:  00c8  movwf   0x48
0766:  0879  movf    0x79, 0x0
0767:  00c9  movwf   0x49
0768:  087a  movf    0x7a, 0x0
0769:  00ca  movwf   0x4a
076a:  0848  movf    0x48, 0x0
076b:  00b7  movwf   0x37
076c:  0849  movf    0x49, 0x0
076d:  00b8  movwf   0x38
076e:  084a  movf    0x4a, 0x0
076f:  00b9  movwf   0x39
0770:  3184  movlp   0x04
0771:  244f  call    0x044f
0772:  3186  movlp   0x06
0773:  0837  movf    0x37, 0x0
0774:  00cc  movwf   0x4c
0775:  0838  movf    0x38, 0x0
0776:  00cd  movwf   0x4d
0777:  0839  movf    0x39, 0x0
0778:  00ce  movwf   0x4e
0779:  084c  movf    0x4c, 0x0
077a:  00f0  movwf   0x70
077b:  084d  movf    0x4d, 0x0
077c:  00f1  movwf   0x71
077d:  084e  movf    0x4e, 0x0
077e:  00f2  movwf   0x72
077f:  3183  movlp   0x03
0780:  23da  call    0x03da
0781:  3186  movlp   0x06
0782:  0871  movf    0x71, 0x0
0783:  00d0  movwf   0x50
0784:  0870  movf    0x70, 0x0
0785:  00cf  movwf   0x4f
0786:  0850  movf    0x50, 0x0
0787:  00f9  movwf   0x79
0788:  084f  movf    0x4f, 0x0
0789:  00f8  movwf   0x78
078a:  3181  movlp   0x01
078b:  214e  call    0x014e
078c:  3186  movlp   0x06
078d:  0878  movf    0x78, 0x0
078e:  00b7  movwf   0x37
078f:  0879  movf    0x79, 0x0
0790:  00b8  movwf   0x38
0791:  087a  movf    0x7a, 0x0
0792:  00b9  movwf   0x39
0793:  0848  movf    0x48, 0x0
0794:  00ba  movwf   0x3a
0795:  0849  movf    0x49, 0x0
0796:  00bb  movwf   0x3b
0797:  084a  movf    0x4a, 0x0
0798:  00bc  movwf   0x3c
0799:  3181  movlp   0x01
079a:  2114  call    0x0114
079b:  3186  movlp   0x06
079c:  0837  movf    0x37, 0x0
079d:  00c8  movwf   0x48
079e:  0838  movf    0x38, 0x0
079f:  00c9  movwf   0x49
07a0:  0839  movf    0x39, 0x0
07a1:  00ca  movwf   0x4a
07a2:  0848  movf    0x48, 0x0
07a3:  00b7  movwf   0x37
07a4:  0849  movf    0x49, 0x0
07a5:  00b8  movwf   0x38
07a6:  084a  movf    0x4a, 0x0
07a7:  00b9  movwf   0x39
07a8:  3000  movlw   0x00
07a9:  00ba  movwf   0x3a
07aa:  3088  movlw   0x88
07ab:  00bb  movwf   0x3b
07ac:  3009  movlw   0x09
07ad:  00bc  movwf   0x3c
07ae:  3000  movlw   0x00
07af:  00bd  movwf   0x3d
07b0:  3182  movlp   0x02
07b1:  22a8  call    0x02a8
07b2:  3186  movlp   0x06
07b3:  0837  movf    0x37, 0x0
07b4:  00c1  movwf   0x41
07b5:  0838  movf    0x38, 0x0
07b6:  00c2  movwf   0x42
07b7:  0839  movf    0x39, 0x0
07b8:  00c3  movwf   0x43
07b9:  0850  movf    0x50, 0x0
07ba:  00c5  movwf   0x45
07bb:  084f  movf    0x4f, 0x0
07bc:  00c4  movwf   0x44
07bd:  3183  movlp   0x03
07be:  2367  call    0x0367
07bf:  3186  movlp   0x06
07c0:  0841  movf    0x41, 0x0
07c1:  00c8  movwf   0x48
07c2:  0842  movf    0x42, 0x0
07c3:  00c9  movwf   0x49
07c4:  0843  movf    0x43, 0x0
07c5:  00ca  movwf   0x4a
07c6:  0851  movf    0x51, 0x0
07c7:  1903  btfsc   0x03, 0x2
07c8:  0008  return
07c9:  0a48  incf    0x48, 0x0
07ca:  307f  movlw   0x7f
07cb:  1903  btfsc   0x03, 0x2
07cc:  0649  xorwf   0x49, 0x0
07cd:  307f  movlw   0x7f
07ce:  1903  btfsc   0x03, 0x2
07cf:  064a  xorwf   0x4a, 0x0
07d0:  1d03  btfss   0x03, 0x2
07d1:  2fda  goto    0x07da
07d2:  3000  movlw   0x00
07d3:  0020  movlb   0x00
07d4:  00c8  movwf   0x48
07d5:  3000  movlw   0x00
07d6:  00c9  movwf   0x49
07d7:  3000  movlw   0x00
07d8:  00ca  movwf   0x4a
07d9:  0008  return
07da:  0020  movlb   0x00
07db:  0848  movf    0x48, 0x0
07dc:  00b7  movwf   0x37
07dd:  0849  movf    0x49, 0x0
07de:  00b8  movwf   0x38
07df:  084a  movf    0x4a, 0x0
07e0:  00b9  movwf   0x39
07e1:  3000  movlw   0x00
07e2:  00ba  movwf   0x3a
07e3:  3080  movlw   0x80
07e4:  00bb  movwf   0x3b
07e5:  303f  movlw   0x3f
07e6:  00bc  movwf   0x3c
07e7:  3184  movlp   0x04
07e8:  24cb  call    0x04cb
07e9:  0837  movf    0x37, 0x0
07ea:  00c8  movwf   0x48
07eb:  0838  movf    0x38, 0x0
07ec:  00c9  movwf   0x49
07ed:  0839  movf    0x39, 0x0
07ee:  00ca  movwf   0x4a
07ef:  0008  return
07f0:  3030  movlw   0x30
07f1:  0084  movwf   0x04
07f2:  3081  movlw   0x81
07f3:  0085  movwf   0x05
07f4:  3020  movlw   0x20
07f5:  0086  movwf   0x06
07f6:  3001  movlw   0x01
07f7:  0087  movwf   0x07
07f8:  301e  movlw   0x1e
07f9:  3180  movlp   0x00
07fa:  20da  call    0x00da
07fb:  01e3  clrf    0x63
07fc:  01e4  clrf    0x64
07fd:  0020  movlb   0x00
07fe:  3182  movlp   0x02
07ff:  2a53  goto    0x0253
0800:  3400  retlw   0x00
0801:  3480  retlw   0x80
0802:  343f  retlw   0x3f
0803:  3472  retlw   0x72
0804:  3431  retlw   0x31
0805:  343f  retlw   0x3f
0806:  34fe  retlw   0xfe
0807:  3475  retlw   0x75
0808:  343e  retlw   0x3e
0809:  3458  retlw   0x58
080a:  3463  retlw   0x63
080b:  343d  retlw   0x3d
080c:  3495  retlw   0x95
080d:  341d  retlw   0x1d
080e:  343c  retlw   0x3c
080f:  34c5  retlw   0xc5
0810:  34ae  retlw   0xae
0811:  343a  retlw   0x3a
0812:  3479  retlw   0x79
0813:  3421  retlw   0x21
0814:  3439  retlw   0x39
0815:  3494  retlw   0x94
0816:  3480  retlw   0x80
0817:  3437  retlw   0x37
0818:  3493  retlw   0x93
0819:  34a7  retlw   0xa7
081a:  3435  retlw   0x35
081b:  3456  retlw   0x56
081c:  3415  retlw   0x15
081d:  3434  retlw   0x34
