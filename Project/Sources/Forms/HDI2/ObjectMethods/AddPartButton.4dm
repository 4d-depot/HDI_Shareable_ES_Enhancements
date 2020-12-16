
If (btnTrace)
	TRACE:C157
End if 

var $status : Object
var $rank : Integer

Form:C1466.part.product:=Form:C1466.selectedProduct
$status:=Form:C1466.part.save()

Form:C1466.selectedProduct.parts.add(Form:C1466.part)

Form:C1466.partSelection:=ds:C1482.Parts.newSelection()
Form:C1466.partSelection.add(Form:C1466.part)
$rank:=Form:C1466.part.indexOf(Form:C1466.selectedProduct.parts)+1

Form:C1466.selectedProduct.reload()

Form:C1466.part:=ds:C1482.Parts.new()

Form:C1466.indexPart:=Form:C1466.indexPart+1
If (Form:C1466.indexPart>=Form:C1466.partSuggestions.length)
	Form:C1466.indexPart:=0
End if 

Form:C1466.part.name:=Form:C1466.partSuggestions[Form:C1466.indexPart].name
Form:C1466.part.price:=Form:C1466.partSuggestions[Form:C1466.indexPart].price

CALL FORM:C1391(Current form window:C827; "selectRows"; "LBParts"; Form:C1466.partSelection; $rank)
