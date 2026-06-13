Profile: OHEECGProfile
Parent: TWCoreECG
Id: OHE-ECG
Title: "心電圖檢查 Profile"
Description: "用於記錄勞工心電圖檢查結果，通常於高溫作業特殊健檢中實施，繼承自 TW Core Observation ECG（v1.0.0 新增之心電圖專用 Profile）。"
* ^experimental = false
* status = #final
* code = LNC#11524-6 "EKG Study"
* subject only Reference(OHEPatientProfile)
* performer only Reference(OHEPractitionerProfile)
* value[x] only CodeableConcept
