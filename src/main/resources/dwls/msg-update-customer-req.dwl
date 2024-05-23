%dw 2.0
output application/json
---
{
    "Name": payload."Name",
    "Currency": payload."Currency",
    "PaymentTerm": payload."PaymentTerm",
    "Discount": payload."Discount",
    "TaxRule": payload."TaxRule",
    "Carrier": payload."Carrier",
    "SalesRepresentative": payload."SalesRepresentative",
    "Location": payload."Location",
    "Comments": payload."Comments",
    "AccountReceivable": payload."AccountReceivable",
    "RevenueAccount": payload."RevenueAccount",
    "PriceTier": payload."PriceTier",
    "TaxNumber": payload."TaxNumber",
    "AdditionalAttribute1": payload."AdditionalAttribute1",
    "AdditionalAttribute2": payload."AdditionalAttribute2",
    "AdditionalAttribute3": payload."AdditionalAttribute3",
    "AdditionalAttribute4": payload."AdditionalAttribute4",
    "AdditionalAttribute5": payload."AdditionalAttribute5",
    "AdditionalAttribute6": payload."AdditionalAttribute6",
    "AdditionalAttribute7": payload."AdditionalAttribute7",
    "AdditionalAttribute8": payload."AdditionalAttribute8",
    "AdditionalAttribute9": payload."AdditionalAttribute9",
    "AdditionalAttribute10": payload."AdditionalAttribute10",
    "AttributeSet": payload."AttributeSet",
    "Tags": payload."Tags",
    "Status": payload."Status",
    "IsOnCreditHold": payload."IsOnCreditHold",
    "Addresses": payload.Addresses default [] map(obj, index) -> {
	  
		"ID": obj."ID",
		"CustomerID": obj."CustomerID",
		"Line1": obj."Line1",
		"Line2": obj."Line2",
		"City": obj."City",
		"State": obj."State",
		"Postcode": obj."Postcode",
		"Country": obj."Country",
		"Type": obj."Type",
		"DefaultForType": obj."DefaultForType"
	  	
    },
    
    "Contacts": payload.Contacts default [] map(object, index) -> {
    	
	    "ID": object."ID",
	    "CustomerID": object."CustomerID",
	    "Name": object."Name",
	    "JobTitle": object."JobTitle",
	    "Phone": object."Phone",
	    "MobilePhone": object."MobilePhone",
	    "Fax": object."Fax",
	    "Email": object."Email",
	    "Website": object."Website",
	    "Default": object."Default",
	    "Comment": object."Comment",
	    "IncludeInEmail": object."IncludeInEmail"
	    
	 }
}