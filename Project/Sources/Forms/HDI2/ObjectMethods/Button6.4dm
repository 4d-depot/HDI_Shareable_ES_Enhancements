
var $status : Object
var $rank : Integer

If (btnTrace)
	TRACE:C157
End if 


$status:=Form:C1466.product.save()

Form:C1466.products.add(Form:C1466.product)

Form:C1466.productSelection:=ds:C1482.Products.newSelection()
Form:C1466.productSelection.add(Form:C1466.product)
$rank:=Form:C1466.product.indexOf(Form:C1466.products)+1

Form:C1466.products:=Form:C1466.products

Form:C1466.product:=ds:C1482.Products.new()
Form:C1466.product.isNew:=True:C214

Form:C1466.indexProduct:=Form:C1466.indexProduct+1
If (Form:C1466.indexProduct>=Form:C1466.productSuggestions.length)
	Form:C1466.indexProduct:=0
End if 

Form:C1466.product.name:=Form:C1466.productSuggestions[Form:C1466.indexProduct].name
Form:C1466.product.price:=Form:C1466.productSuggestions[Form:C1466.indexProduct].price

CALL FORM:C1391(Current form window:C827; "selectRows"; "LBProducts"; Form:C1466.productSelection; $rank)