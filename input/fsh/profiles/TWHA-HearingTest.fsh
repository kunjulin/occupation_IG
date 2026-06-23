Profile: TWHAHearingTestProfile
Parent: TWCoreClinicalResult
Id: TWHA-HearingTest
Title: "聽力檢查 Profile"
Description: "用於記錄勞工純音聽力測試結果，依左右耳及頻率（500/1000/2000/4000 Hz）分切片記錄。繼承自 TW Core Observation Clinical Result。v3 修正：Panel code 改為 89015-2；component 由耳別切片改為頻率×耳別切片（共 8 個）。"
* ^experimental = false
* status = #final
// v3 修正：正確的純音聽力 Panel code
// 89015-2 = "Pure tone threshold audiometry panel" (正確)
// 原 89024-4 = "Hearing threshold Ear-left 500 Hz" (單一頻率代碼，不應作為 Panel)
* code = LNC#89015-2 "Pure tone threshold audiometry panel"
* subject only Reference(TWHAPatientProfile)
* performer only Reference(TWHAPractitionerProfile)
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    leftEar500  0..1 and
    leftEar1000 0..1 and
    leftEar2000 0..1 and
    leftEar4000 0..1 and
    rightEar500  0..1 and
    rightEar1000 0..1 and
    rightEar2000 0..1 and
    rightEar4000 0..1

// 左耳各頻率閾值 (Left ear thresholds)
* component[leftEar500].code  = LNC#89024-4 "Hearing threshold Ear-left 500 Hz [dB]"
* component[leftEar500].value[x] only Quantity
* component[leftEar500].valueQuantity.unit = "dB"
* component[leftEar500].valueQuantity.system = "http://unitsofmeasure.org"
* component[leftEar500].valueQuantity.code = #dB

* component[leftEar1000].code  = LNC#89016-0 "Hearing threshold Ear-left 1000 Hz [dB]"
* component[leftEar1000].value[x] only Quantity
* component[leftEar1000].valueQuantity.unit = "dB"
* component[leftEar1000].valueQuantity.system = "http://unitsofmeasure.org"
* component[leftEar1000].valueQuantity.code = #dB

* component[leftEar2000].code  = LNC#89017-8 "Hearing threshold Ear-left 2000 Hz [dB]"
* component[leftEar2000].value[x] only Quantity
* component[leftEar2000].valueQuantity.unit = "dB"
* component[leftEar2000].valueQuantity.system = "http://unitsofmeasure.org"
* component[leftEar2000].valueQuantity.code = #dB

* component[leftEar4000].code  = LNC#89018-6 "Hearing threshold Ear-left 4000 Hz [dB]"
* component[leftEar4000].value[x] only Quantity
* component[leftEar4000].valueQuantity.unit = "dB"
* component[leftEar4000].valueQuantity.system = "http://unitsofmeasure.org"
* component[leftEar4000].valueQuantity.code = #dB

// 右耳各頻率閾值 (Right ear thresholds)
* component[rightEar500].code  = LNC#89028-5 "Hearing threshold Ear-right 500 Hz [dB]"
* component[rightEar500].value[x] only Quantity
* component[rightEar500].valueQuantity.unit = "dB"
* component[rightEar500].valueQuantity.system = "http://unitsofmeasure.org"
* component[rightEar500].valueQuantity.code = #dB

* component[rightEar1000].code = LNC#89020-2 "Hearing threshold Ear-right 1000 Hz [dB]"
* component[rightEar1000].value[x] only Quantity
* component[rightEar1000].valueQuantity.unit = "dB"
* component[rightEar1000].valueQuantity.system = "http://unitsofmeasure.org"
* component[rightEar1000].valueQuantity.code = #dB

* component[rightEar2000].code = LNC#89019-4 "Hearing threshold Ear-right 2000 Hz [dB]"
* component[rightEar2000].value[x] only Quantity
* component[rightEar2000].valueQuantity.unit = "dB"
* component[rightEar2000].valueQuantity.system = "http://unitsofmeasure.org"
* component[rightEar2000].valueQuantity.code = #dB

* component[rightEar4000].code = LNC#89022-8 "Hearing threshold Ear-right 4000 Hz [dB]"
* component[rightEar4000].value[x] only Quantity
* component[rightEar4000].valueQuantity.unit = "dB"
* component[rightEar4000].valueQuantity.system = "http://unitsofmeasure.org"
* component[rightEar4000].valueQuantity.code = #dB

* obeys twha-obs-1