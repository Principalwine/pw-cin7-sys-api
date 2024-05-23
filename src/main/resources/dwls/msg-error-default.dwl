%dw 2.0
output application/json
---
{
	"success": false,
	apiName: app.name,
	version: Mule::p("api.version"),
	correlationId: correlationId,
	timestamp: now(),
	"errorDetails": [error.description]
}
