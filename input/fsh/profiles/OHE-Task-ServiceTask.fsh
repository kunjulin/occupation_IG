Profile: OHETaskServiceTaskProfile
Parent: Task
Id: OHE-Task-ServiceTask
Title: "臨場健康服務建議與改善任務 Profile"
Description: "用於記錄臨場服務中針對發現問題所提出之改善建議措施，以及追蹤前次改善事項之落實情形（對應附表八）。"
* ^experimental = false
* status from http://hl7.org/fhir/ValueSet/task-status (required)
* intent = #plan
* code = SCT#315640000 "Occupational health counseling (procedure)"
* requester only Reference(OHEPractitionerProfile)
* owner only Reference(TWCoreOrganization) // 主管或改善單位
* focus only Reference(OHEObservationServiceFindingProfile) // 指向發現的問題/風險
* extension contains ExtEmployerInfo named employerInfo 1..1
