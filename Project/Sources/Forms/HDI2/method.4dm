
var btnTrace : Boolean

btnTrace:=False:C215

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		
		ARRAY TEXT:C222(_TabTitles; 0)
		ARRAY TEXT:C222(_Descriptions; 0)
		ARRAY TEXT:C222(_TabLineCode; 0)
		
		READ ONLY:C145([INFO:1])
		QUERY:C277([INFO:1]; [INFO:1]PageNumber:4<=9)
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		SELECTION TO ARRAY:C260([INFO:1]TabTitle:3; _TabTitles; [INFO:1]Description:2; _Descriptions)
		
		QUERY:C277([INFO:1]; [INFO:1]PageNumber:4>=10)
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		SELECTION TO ARRAY:C260([INFO:1]Description:2; _TabLineCode)
		
		Form:C1466.productSuggestions:=New collection:C1472()
		Form:C1466.productSuggestions.push(New object:C1471("name"; "Black pencil"; "price"; 5))
		Form:C1466.productSuggestions.push(New object:C1471("name"; "Note book"; "price"; 10))
		Form:C1466.productSuggestions.push(New object:C1471("name"; "Eraser"; "price"; 3))
		
		Form:C1466.partSuggestions:=New collection:C1472()
		Form:C1466.partSuggestions.push(New object:C1471("name"; "Paper bag (free)"))
		Form:C1466.partSuggestions.push(New object:C1471("name"; "Plastic bag (free)"))
		Form:C1466.partSuggestions.push(New object:C1471("name"; "Fabric bag (free)"))
		
		
		viewTrace
		manageTexts
		
		RW
		
	: (Form event code:C388=On Page Change:K2:54)
		
		//Page 3
		Form:C1466.all:=ds:C1482.Products.all().copy()
		Form:C1466.products:=Form:C1466.all
		
		Form:C1466.product:=ds:C1482.Products.new()
		Form:C1466.product.isNew:=True:C214
		Form:C1466.indexProduct:=0
		Form:C1466.product.name:=Form:C1466.productSuggestions[Form:C1466.indexProduct].name
		Form:C1466.product.price:=Form:C1466.productSuggestions[Form:C1466.indexProduct].price
		
		Form:C1466.name:="Search by name"
		
		Form:C1466.part:=ds:C1482.Parts.new()
		Form:C1466.indexPart:=0
		Form:C1466.part.name:=Form:C1466.partSuggestions[Form:C1466.indexPart].name
		Form:C1466.part.price:=Form:C1466.partSuggestions[Form:C1466.indexPart].price
		
		
		CALL FORM:C1391(Current form window:C827; "selectRows"; "LBProducts"; ds:C1482.Products.newSelection().add(ds:C1482.Products.all().first()); 1)
		OBJECT SET VISIBLE:C603(*; "GeneratedCatalog@"; False:C215)
		
		viewTrace
		manageTexts
		
		
End case 

