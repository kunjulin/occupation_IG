Extension: ExtFitnessForWork
Id: ext-fitness-for-work
Title: "適性配工建議項目擴充"
Description: "用於 CarePlan 中標註具體的適性配工或變更作業場所等建議項目。"
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* value[x] only CodeableConcept
* valueCodeableConcept from VS_FitnessForWork (required)
