//%attributes = {}


var $notDropped : Object
var $text : Text
var $coll : Collection


$notDropped:=ds:C1482.Parts.all().drop()
$notDropped:=ds:C1482.Products.all().drop()

TRUNCATE TABLE:C1051([Parts:4])
SET DATABASE PARAMETER:C642([Parts:4]; Table sequence number:K37:31; 0)

TRUNCATE TABLE:C1051([Products:3])
SET DATABASE PARAMETER:C642([Products:3]; Table sequence number:K37:31; 0)


$text:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"parts.json")
$coll:=JSON Parse:C1218($text)
ds:C1482.Parts.fromCollection($coll)

$text:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"products.json")
$coll:=JSON Parse:C1218($text)
ds:C1482.Products.fromCollection($coll)