10 CLS
90 KEY OFF
100 CLS
110 LOCATE 12,1:INPUT "Pick a number between -32768 and 32767: ",X
120 RANDOMIZE X
125 CLS
130 LOCATE 12,1:INPUT "Enter amount you wish to invest: ",AMOUNT
140 CNT = 0
150 START = AMOUNT
200 '   Sub ask
210 PW=50+INT(50*RND)
220 CLS
230 LOCATE 10,1:PRINT "You now have $";AMOUNT
240 LOCATE 12,1:PRINT "You chance of winning is";PW;"%"
250 LOCATE 14,1:INPUT"How much do you want to bet? ",BET$
260 IF MID$(BET$,1,1)="E" OR MID$(BET$,1,1)="e" THEN GOSUB 400:END
270 IF MID$(BET$,1,1)="R" OR MID$(BET$,1,1)="r" THEN GOSUB 400:GOTO 220
275 IF VAL(BET$)>AMOUNT THEN GOTO 220
280 IF RND*100<PW THEN AMOUNT=AMOUNT+INT(VAL(BET$)) ELSE AMOUNT=AMOUNT-INT(VAL(BET$))
290 IF AMOUNT<=0 THEN CLS:LOCATE 12,1:PRINT CHR$(7)+"Sorry chum, you are all out of money!":END
295 CNT = CNT + 1
300 GOTO 200
400 '   sub report
405 IF CNT = 0 THEN RETURN
410 CLS
420 LOCATE 1,24:PRINT "I N V E S T M E N T   R E P O R T"
430 LOCATE 9,1:PRINT "Starting amount:";START
440 LOCATE 11,1:PRINT "Bets made:";CNT
450 LOCATE 13,1:PRINT "Current amount:";AMOUNT
460 LOCATE 15,1:PRINT "Rate of return per bet:";INT(((AMOUNT/START)^(1/CNT)-1)*1000+.5)/10;"%"
470 LOCATE 23,28:PRINT "Press any key to continue"
480 PSE$=INKEY$
490 IF PSE$="" THEN 480
500 RETURN
