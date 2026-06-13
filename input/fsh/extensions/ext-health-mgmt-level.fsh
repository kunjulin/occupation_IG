Extension: ExtHealthMgmtLevel
Id: ext-health-mgmt-level
Title: "健康管理分級擴充"
Description: "記錄醫師針對勞工健康狀況判定之健康管理分級（1-4級）。"
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "ClinicalImpression"
* ^context[1].type = #element
* ^context[1].expression = "Observation"
* value[x] only CodeableConcept
* valueCodeableConcept from VS_HealthMgmtLevel (required)
