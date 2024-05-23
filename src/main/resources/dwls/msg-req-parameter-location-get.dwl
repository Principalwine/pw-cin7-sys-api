%dw 2.0
output application/json
---
{
	"type": "httpRequest",
	"httpRequest": {
		"protocol": Mule::p('endSystem.CIN7.protocol') as String,
		"method": "GET",
		"host": Mule::p('endSystem.CIN7.host') as String,
		"url": Mule::p('operation.GET-LOCATION.path') as String,
		"queryParams": {
			"Name": attributes.queryParams.Name
		},
		"uriParams": {
		},
		"headers": {
			"Content-Type": "application/json",
			"api-auth-accountid": Mule::p('secure::cin7.id'),
  			"api-auth-applicationkey": Mule::p('secure::cin7.key')
		},
	},
	"operation": "GET-LOCATION",
	//"dwl": Mule::p("operation.GET-LOCATION.dwl") as String,
	"requestBody": null
}