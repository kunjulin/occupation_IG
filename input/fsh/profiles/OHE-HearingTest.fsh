Profile: OHEHearingTestProfile
Parent: TWCoreClinicalResult
Id: OHE-HearingTest
Title: "聽力檢查 Profile"
Description: "用於記錄勞工左右耳之聽力狀態及純音聽力測試結果，繼承自 TW Core Observation Clinical Result。"
* ^experimental = false
* status = #final
* code = LNC#89024-4 "Audiometry panel"
* subject only Reference(OHEPatientProfile)
* performer only Reference(OHEPractitionerProfile)
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    leftEarHearing 0..1 and
    rightEarHearing 0..1
* component[leftEarHearing].code = LNC#89023-6 "Audiology Left ear"
* component[leftEarHearing].value[x] only CodeableConcept or Quantity
* component[rightEarHearing].code = LNC#89022-8 "Audiology Right ear"
* component[rightEarHearing].value[x] only CodeableConcept or Quantity
