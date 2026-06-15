Profile: TWHABundleDocumentProfile
Parent: Bundle
Id: TWHA-Bundle-Document
Title: "健康檢查報告交換封包 (Document Bundle) Profile"
Description: "用於健檢報告交換的 Document Bundle，其第一個 entry 必須為 Composition，且型態 (type) 必須為 document。"
* type = #document
* entry 1..*
* entry.resource 1..1

Profile: TWHABundleTransactionProfile
Parent: Bundle
Id: TWHA-Bundle-Transaction
Title: "健康檢查資料上傳封包 (Transaction Bundle) Profile"
Description: "用於健檢系統或醫療院所向主管機關平台進行批次上傳/新增資料之 Transaction Bundle，其型態 (type) 必須為 transaction，且 entry 必須包含 HTTP 請求方法資訊。"
* type = #transaction
* entry 1..*
* entry.request 1..1
* entry.request.method from http://hl7.org/fhir/ValueSet/http-verb (required)
* entry.resource 1..1
