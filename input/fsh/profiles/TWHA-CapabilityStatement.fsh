Instance: TWHA-CapabilityStatement
InstanceOf: CapabilityStatement
Title: "健康檢查資料交換平台服務宣告"
Description: "本實體用於宣告健康檢查資料交換平台支援的交互作用規範，主要採用 POST [base]/Bundle ($submit) 或直接交易封包 (transaction) 進行健檢資料之上傳與交換。"
* status = #active
* date = "2026-06-15"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml
* description = "本實體用於宣告健康檢查資料交換平台支援的交互作用規範，主要採用 POST [base]/Bundle ($submit) 或直接交易封包 (transaction) 進行健檢資料之上傳與交換。"
* rest[0].mode = #server
* rest[0].security.description = "採用 OAuth 2.0 與 TLS 1.3 安全傳輸協定"
* rest[0].resource[0].type = #Bundle
* rest[0].resource[0].interaction[0].code = #create
* rest[0].resource[0].interaction[1].code = #read
* rest[0].resource[0].operation[0].name = "submit"
* rest[0].resource[0].operation[0].definition = "https://twcore.mohw.gov.tw/ig/twha/OperationDefinition/Bundle-submit"
* rest[0].resource[0].profile = "https://twcore.mohw.gov.tw/ig/twha/StructureDefinition/TWHA-Bundle-Transaction"

Instance: Bundle-submit
InstanceOf: OperationDefinition
Title: "Submit Bundle Operation"
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/twha/OperationDefinition/Bundle-submit"
* name = "Submit"
* status = #active
* kind = #operation
* code = #submit
* resource[0] = #Bundle
* system = false
* type = true
* instance = false
* parameter[0].name = #content
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].type = #Bundle
