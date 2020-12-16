

OBJECT SET ENABLED:C1123(*; "AddPartButton"; False:C215)

Case of 
	: (Form event code:C388=On Selection Change:K2:29)
		
		If (btnTrace)
			TRACE:C157
		End if 
		
		OBJECT SET ENABLED:C1123(*; "AddPartButton"; Form:C1466.selectedProduct#Null:C1517)
		OBJECT SET VISIBLE:C603(*; "PartsNature@"; Form:C1466.selectedProduct#Null:C1517)
End case 