Profile: TWHAEncounterServiceProfile
Parent: TWCoreEncounter
Id: TWHA-Encounter-Service
Title: "臨場健康服務事件 Profile"
Description: "本 Profile 用於描述醫護團隊到事業單位提供臨場健康服務之就醫/諮詢事件（對應附表八）。"
* extension contains ExtEmployerInfo named employerInfo 1..1
* extension contains ExtDepartment named department 0..1
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#FLD
* participant.individual only Reference(TWHAPractitionerProfile)
* serviceProvider only Reference(TWHAOrganizationFacilityProfile)
