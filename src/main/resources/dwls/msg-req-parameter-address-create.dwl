%dw 2.0
output application/json
---
{
	"type": "httpRequest",
	"httpRequest": {
		"protocol": Mule::p('endSystem.CIN7.protocol') as String,
		"method": "PUT",
		"host": Mule::p('endSystem.CIN7.host') as String,
		"url": Mule::p('operation.CREATE-ADDRESS.path') as String,
		"queryParams": {
		},
		"uriParams": {
		},
		"headers": {
			"Content-Type": "application/json",
			"api-auth-accountid": Mule::p('secure::cin7.id'),
  			"api-auth-applicationkey": Mule::p('secure::cin7.key')
		},
	},
	"operation": "CREATE-ADDRESS",
	//"dwl": Mule::p("operation.UPDATE-CUSTOMER.dwl") as String,
	"requestBody": payload
}