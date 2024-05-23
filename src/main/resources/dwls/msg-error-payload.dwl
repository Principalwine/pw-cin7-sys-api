%dw 2.0
output application/json
---
{
    "errorCode": payload[0].ErrorCode default 500,
    "description": payload[0].Exception,
    "message": "Error occured while processing the request in cin7-sys-api"
}