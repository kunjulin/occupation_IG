Profile: OHEQuestionnaireResponseProfile
Parent: TWCoreQuestionnaireResponse
Id: OHE-QuestionnaireResponse
Title: "自覺症狀問卷回覆 Profile"
Description: "用於記錄勞工所填寫之自覺症狀問卷結果，必須關聯至受檢勞工，繼承自 TW Core QuestionnaireResponse。"
* ^experimental = false
* status = #completed
* subject 1..1
* subject only Reference(OHEPatientProfile)
* source only Reference(OHEPatientProfile)
* author only Reference(OHEPatientProfile or OHEPractitionerProfile)
