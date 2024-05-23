%dw 2.0
import * from dw::util::Values
import * from dw::Runtime
fun readError (isJson) = if(isJson) read(payload.errorDescription,"application/json") else payload.errorDescription
output application/json
---
payload update "errorDescription" with readError(try(() -> read(payload.errorDescription,"application/json")).success)