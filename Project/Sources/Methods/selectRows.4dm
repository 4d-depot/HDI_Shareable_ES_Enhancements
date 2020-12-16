//%attributes = {}

#DECLARE ($LBName : Text; $selection : Object; $rank : Integer)

If (btnTrace)
	TRACE:C157
End if 

LISTBOX SELECT ROWS:C1715(*; $LBName; $selection; lk replace selection:K53:1)

OBJECT SET SCROLL POSITION:C906(*; $LBName; $rank)
