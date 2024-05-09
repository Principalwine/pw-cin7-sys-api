%dw 2.0
output application/json
---
{
	errorCode: error.muleMessage.typedAttributes.statusCode default 500,
	errorDescription: error.muleMessage.typedAttributes.reasonPhrase default error.description,
	message: vars.errorContext default "Error occured while processing the request in sage-sys-api"
}