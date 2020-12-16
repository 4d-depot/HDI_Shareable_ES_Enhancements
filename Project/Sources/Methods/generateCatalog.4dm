//%attributes = {"invisible":true}


#DECLARE ($products : cs:C1710.ProductsSelection)

If (btnTrace)
	TRACE:C157
End if 


If (Not:C34(OB Is shared:C1759($products)))
	$products:=$products.copy(ck shared:K85:29)
	Form:C1466.message:="(The entity selection has been copied as shareable)"
Else 
	Form:C1466.message:="(The entity selection is already shareable)"
End if 

CALL WORKER:C1389("worker"; "buildCatalog"; $products; Current form window:C827)

