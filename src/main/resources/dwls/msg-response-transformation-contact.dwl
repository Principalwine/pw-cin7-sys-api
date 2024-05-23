%dw 2.0
output application/json
---
{
    "success": true,
    "data": {
        "ID": payload.CustomerList[0].ID,
        "LastModifiedOn": payload.CustomerList[0].LastModifiedOn
    }
}
