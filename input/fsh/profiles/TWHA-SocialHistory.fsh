Profile: TWHASocialHistorySmokingProfile
Parent: TWCoreSmokingStatus
Id: TWHA-SocialHistory-Smoking
Title: "吸菸歷史與狀態 Profile"
Description: "用於記錄勞工之吸菸狀態與吸菸量、戒菸時間等資訊，繼承自 TW Core Observation Smoking Status。"
* ^experimental = false
* subject only Reference(TWHAPatientProfile)
* performer only Reference(TWHAPractitionerProfile)
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    localSmokingStatus 0..1
* valueCodeableConcept.coding[localSmokingStatus].system = "https://twcore.mohw.gov.tw/ig/twha/CodeSystem/CS-SmokingStatus"
* valueCodeableConcept.coding[localSmokingStatus] from VS_SmokingStatus (required)
* extension contains ExtSmokingQuantity named smokingQuantity 0..1
* extension contains ExtCessationDuration named cessationDuration 0..1

* obeys twha-obs-1
Profile: TWHASocialHistoryBetelNutProfile
Parent: Observation
Id: TWHA-SocialHistory-BetelNut
Title: "嚼檳榔歷史與狀態 Profile"
Description: "用於記錄勞工之嚼檳榔習慣與量化資料。本 Profile 基於 Observation 資源，採用與臺灣癌症登記短表實作指引 (TWCR_SF) 相同之元件架構及值集，以便進行跨系統之整合介接。"
* ^experimental = false
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = TWCRSFObsBehCS#BetelNutChewing "嚼檳榔行為"
* subject only Reference(TWHAPatientProfile)
* performer only Reference(TWHAPractitionerProfile)
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component contains
    amount 1..1 and
    year 1..1 and
    quit 1..1
* component[amount].code = TWCRSFBetNutChewBehCS#amount "每日嚼檳榔量，以 ”顆” 計算"
* component[amount].value[x] only CodeableConcept
* component[amount].valueCodeableConcept from TWCRSFBetNutChewAmountVS (required)
* component[year].code = TWCRSFBetNutChewBehCS#year "嚼檳榔年"
* component[year].value[x] only CodeableConcept
* component[year].valueCodeableConcept from TWCRSFBetNutChewYearVS (required)
* component[quit].code = TWCRSFBetNutChewBehCS#quit "戒嚼檳榔年"
* component[quit].value[x] only CodeableConcept
* component[quit].valueCodeableConcept from TWCRSFBetNutChewQuitVS (required)

* obeys twha-obs-1
Profile: TWHASocialHistoryAlcoholProfile
Parent: Observation
Id: TWHA-SocialHistory-Alcohol
Title: "飲酒歷史與狀態 Profile"
Description: "用於記錄勞工之飲酒習慣歷史與狀態。"
* ^experimental = false
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = LNC#11331-6 "History of Alcohol use"
* subject only Reference(TWHAPatientProfile)
* performer only Reference(TWHAPractitionerProfile)
* value[x] only CodeableConcept

* obeys twha-obs-1
Profile: TWHASocialHistorySleepProfile
Parent: Observation
Id: TWHA-SocialHistory-Sleep
Title: "睡眠狀況 Profile"
Description: "用於記錄勞工之平均每日睡眠時間（以小時計）。"
* ^experimental = false
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = LNC#93832-4 "Sleep duration"
* subject only Reference(TWHAPatientProfile)
* performer only Reference(TWHAPractitionerProfile)
* value[x] only Quantity
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #h
* valueQuantity.unit = "hours"

* obeys twha-obs-1