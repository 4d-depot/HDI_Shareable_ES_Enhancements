//%attributes = {}


#DECLARE ($products : cs:C1710.ProductsSelection)

If (btnTrace)
	TRACE:C157
End if 

Form:C1466.catalog:=$products

OBJECT SET VISIBLE:C603(*; "GeneratedCatalog@"; True:C214)