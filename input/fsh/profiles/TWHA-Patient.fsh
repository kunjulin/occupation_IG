Profile: TWHAPatientProfile
Parent: TWCorePatient
Id: TWHA-Patient
Title: "受檢勞工 Profile"
Description: "本 Profile 用於描述接受體格或健康檢查之勞工，繼承自 TW Core Patient，並擴充記錄其所屬事業單位、受僱日期與所屬部門。"
* extension contains ExtEmployerInfo named employerInfo 0..1
* extension contains ExtEmploymentDate named employmentDate 0..1
* extension contains ExtDepartment named department 0..1
