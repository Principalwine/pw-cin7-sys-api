%dw 2.0
output application/json
---
{
	"type": "httpRequest",
	"httpRequest": {
		"protocol": Mule::p('endSystem.CIN7.protocol') as String,
		"method": "PUT",
		"host": Mule::p('endSystem.CIN7.host') as String,
		"url": Mule::p('operation.CREATE-CONTACT.path') as String,
		"queryParams": {
		},
		"uriParams": {
		},
		"headers": {
			"Content-Type": "application/json",
			"api-auth-accountid": Mule::p('secure::cin7.id'),
  			"api-auth-applicationkey": Mule::p('secure::cin7.key')
//			"api-auth-accountid": "ea424301-eea8-44ca-abbf-e7b08d79b32b",
//			"api-auth-applicationKey": "985d4b11-1578-f7ea-e7bc-bad553a8d542"
		},
	},
	"operation": "CREATE-CONTACT",
	"dwl": Mule::p("operation.CREATE-CONTACT.dwl") as String,
	"requestBody": payload
}