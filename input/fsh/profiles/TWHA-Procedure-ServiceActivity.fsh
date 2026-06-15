Profile: TWHAProcedureServiceActivityProfile
Parent: Procedure
Id: TWHA-Procedure-ServiceActivity
Title: "臨場服務執行活動項目 Profile"
Description: "用於記錄醫護人員在臨場健康服務中實際辦理之活動項目（對應附表八之臨場健康服務執行情形），繼承自 TW Core Procedure。"
* ^experimental = false
* status = #completed
* code from VS_ServiceActivityType (required)
* subject only Reference(Group or TWHAPatientProfile)
* extension contains ExtEmployerInfo named employerInfo 1..1
