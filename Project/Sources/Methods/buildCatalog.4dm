//%attributes = {}



#DECLARE ($products : cs:C1710.ProductsSelection; $window : Integer)

If (btnTrace)
	TRACE:C157
End if 

//
// ... Generate here the catalog for $products
//

CALL FORM:C1391($window; "workerHasFinished"; $products)
