'This sends txt via the sendkeys statement to what txtarea has focus at the time
'Repeatedly until the variable 'mynum' is reached

set a = createobject("wscript.shell")

mytxt=inputbox("Send what text?","Type some text","ok cats!")
mynum=inputbox("How many times to send the text?","message number","5") 
myspeed=inputbox("how fast to send messages.In milisecs!","delay","200") 
mywait=inputbox("Time to wait proir to sending the  msg in secs","Wait?","5")

msgbox("You have " & mywait & " secs to put focus on your target text area!")
 wscript.sleep (mywait*1000) 
for i=1 to mynum 		'count down from mynum variable
		a.sendkeys ("{ENTER}")   'presses the enter key to send your text you may change it to the apropriate key that sends the msg in your chat
	wscript.sleep (myspeed)   'sleeps OR waits the amount of Milseconds you typed in the Mywait prompt
next
msgbox ("finished!, thankyou for useing this program")
