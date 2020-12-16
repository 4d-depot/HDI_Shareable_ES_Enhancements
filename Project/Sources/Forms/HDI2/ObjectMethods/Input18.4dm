

If (btnTrace)
	TRACE:C157
End if 


Case of 
		
	: (Form event code:C388=On Clicked:K2:4)
		Form:C1466.name:=""
		
	: (Form event code:C388=On After Keystroke:K2:26)
		Form:C1466.search:="@"+Get edited text:C655+"@"
		Form:C1466.products:=Form:C1466.all.query("name = :1"; Form:C1466.search)
End case 