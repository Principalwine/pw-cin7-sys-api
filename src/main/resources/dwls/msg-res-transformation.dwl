%dw 2.0
output application/json
---
{
    "success": true,
    "data": (if(vars.requestPayload.operation == "CREATE-CONTACT" or vars.requestPayload.operation == "UPDATE-CONTACT")
	    (payload.CustomerList[0].Contacts map(obj, index) ->{
	    	"ID": obj.ID,
	    	"Name": obj.Name,
	        "LastModifiedOn": payload.CustomerList[0].LastModifiedOn
	        
	    })
	        
	    
    else if(vars.requestPayload.operation == "CREATE-CUSTOMER" or vars.requestPayload.operation == "UPDATE-CUSTOMER"){
    	
	        "ID": payload.CustomerList[0].ID,
	        "LastModifiedOn": payload.CustomerList[0].LastModifiedOn,
	        "SalesRepresentative": payload.CustomerList[0].SalesRepresentative
	    
    }else	payload)
}
