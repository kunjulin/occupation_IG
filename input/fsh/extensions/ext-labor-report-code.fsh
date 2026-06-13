Extension: ExtLaborReportCode
Id: ext-labor-report-code
Title: "勞動部通報報告代碼擴充"
Description: "標註此檢查結果通報至勞動部時所採用之報告大類代碼。"
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[1].type = #element
* ^context[1].expression = "Encounter"
* ^context[2].type = #element
* ^context[2].expression = "Bundle"
* value[x] only CodeableConcept
* valueCodeableConcept from VS_LaborReportCode (required)
