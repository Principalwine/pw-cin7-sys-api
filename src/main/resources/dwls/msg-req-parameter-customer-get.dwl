%dw 2.0
output application/json
---
{
	"type": "httpRequest",
	"httpRequest": {
		"protocol": Mule::p('endSystem.CIN7.protocol') as String,
		"method": "GET",
		"host": Mule::p('endSystem.CIN7.host') as String,
		"url": Mule::p('operation.GET-CUSTOMER.path') as String,
		"queryParams": {
			"Page": attributes.queryParams.Page,
			"Limit": attributes.queryParams.Limit,
			("ID": attributes.queryParams.ID) if(!isEmpty(attributes.queryParams.ID)),
			("Name": attributes.queryParams.Name) if(!isEmpty(attributes.queryParams.Name))
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
	"operation": "GET-CUSTOMER",
	//"dwl": Mule::p("operation.CREATE-CUSTOMER.dwl") as String,
	//"requestBody": payload
}