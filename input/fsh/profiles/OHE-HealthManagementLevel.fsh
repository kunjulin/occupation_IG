Profile: OHEHealthManagementLevelProfile
Parent: Observation
Id: OHE-HealthManagementLevel
Title: "勞工健康管理分級 Observation Profile"
Description: "用於以獨立 Observation 資源記錄受檢勞工健康檢查後，經醫師總評判定之健康管理分級（1-4級）。"
* ^experimental = false
* status = #final
* code = SCT#371607000 "Classification of health status (finding)"
* subject only Reference(OHEPatientProfile)
* value[x] only CodeableConcept
* valueCodeableConcept from VS_HealthMgmtLevel (required)
