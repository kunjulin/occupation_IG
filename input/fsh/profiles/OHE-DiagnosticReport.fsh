Profile: OHEDiagnosticReportProfile
Parent: TWCoreDiagnosticReport
Id: OHE-DiagnosticReport
Title: "勞工健檢診斷報告 Profile"
Description: "本 Profile 用於彙整勞工體格及健康檢查結果之診斷報告，繼承自 TW Core DiagnosticReport。"
* subject only Reference(OHEPatientProfile)
* performer only Reference(OHEPractitionerProfile or OHEOrganizationFacilityProfile)
* encounter only Reference(OHEEncounterProfile)
* imagingStudy only Reference(TWCoreImagingStudy)
