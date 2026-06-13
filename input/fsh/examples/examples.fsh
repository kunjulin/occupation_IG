// ==========================================
// 1. 基礎資源範例（病人、組織、醫事人員）
// ==========================================

Instance: example-worker
InstanceOf: OHEPatientProfile
Title: "受檢勞工範例 - 王大同"
Description: "一名在電子公司化學處理課工作的勞工王大同之基本資料與雇主資訊。"
* identifier[0].use = #official
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
* identifier[0].system = "https://www.cgmh.org.tw/tw/patient-id"
* identifier[0].value = "MR-98765"
* name[0].use = #official
* name[0].text = "王大同"
* gender = #male
* birthDate = "1985-05-15"
* active = true
* extension[employerInfo].valueReference = Reference(example-employer)
* extension[employmentDate].valueDate = "2020-03-01"
* extension[department].valueString = "化學處理課"

Instance: example-employer
InstanceOf: OHEOrganizationEmployerProfile
Title: "雇主事業單位範例 - 大同電子"
Description: "受檢勞工王大同所屬之事業單位組織資料。"
* identifier[0].use = #official
* identifier[0].system = "https://gcis.nat.gov.tw"
* identifier[0].value = "12345678" // 統一編號
* name = "大同電子股份有限公司"

Instance: example-hospital
InstanceOf: OHEOrganizationFacilityProfile
Title: "實施健檢之醫療機構範例 - 長庚醫院"
Description: "實施體格檢查及健康檢查之長庚紀念醫院。"
* identifier[0].use = #official
* identifier[0].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw"
* identifier[0].value = "1101110010" // 醫院代碼
* name = "長庚醫療財團法人長庚紀念醫院"

Instance: example-doctor
InstanceOf: OHEPractitionerProfile
Title: "執業醫護人員範例 - 林職醫"
Description: "實施勞工體格及健康檢查評估並判定分級之林職醫師。"
* identifier[0].use = #official
* identifier[0].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/practitioner-license-tw"
* identifier[0].value = "MD-88888" // 醫師證書代碼
* name[0].use = #official
* name[0].text = "林職醫"

// ==========================================
// 2. 檢查事件範例（Encounter）
// ==========================================

Instance: example-encounter-general
InstanceOf: OHEEncounterProfile
Title: "健檢就醫事件範例 - 一般定期健康檢查"
Description: "受檢勞工王大同於115年6月12日進行的一般定期健康檢查事件。"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(example-worker)
* period.start = "2026-06-12T08:00:00+08:00"
* period.end = "2026-06-12T11:30:00+08:00"
* participant[0].individual = Reference(example-doctor)
* serviceProvider = Reference(example-hospital)
* extension[examType].valueCodeableConcept = CS_ExamType#general-health "一般健康檢查"
* extension[examInterval].valueQuantity = 3 'a' "years"
* extension[department].valueString = "化學處理課"

// ==========================================
// 3. 生理特徵與物理檢查結果（Observation）
// ==========================================

Instance: obs-height
InstanceOf: OHEVitalSignsProfile
Title: "身高測量結果範例"
Description: "受檢勞工王大同的身高測量結果 (175 cm)。"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LNC#8302-2 "Body height"
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T08:15:00+08:00"
* valueQuantity = 175 'cm' "cm"

Instance: obs-weight
InstanceOf: OHEVitalSignsProfile
Title: "體重測量結果範例"
Description: "受檢勞工王大同的體重測量結果 (70 kg)。"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LNC#29463-7 "Body weight"
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T08:15:00+08:00"
* valueQuantity = 70 'kg' "kg"

Instance: obs-waist
InstanceOf: OHEVitalSignsProfile
Title: "腰圍測量結果範例"
Description: "受檢勞工王大同的腰圍測量結果 (82 cm)。"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LNC#56086-2 "Waist Circumference"
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T08:15:00+08:00"
* valueQuantity = 82 'cm' "cm"

Instance: obs-bloodpressure
InstanceOf: TWCoreBloodPressure
Title: "血壓測量結果範例"
Description: "受檢勞工王大同的血壓測量結果 (120/80 mmHg)，繼承自 TW Core Blood Pressure。"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LNC#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T08:15:00+08:00"
* component[0].code = LNC#8480-6 "Systolic blood pressure"
* component[0].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[1].code = LNC#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 80 'mm[Hg]' "mmHg"

Instance: obs-vision
InstanceOf: OHEVisionTestProfile
Title: "視力及辨色力檢查結果範例"
Description: "受檢勞工王大同的視力（裸視左/右 1.0）及辨色力（正常）檢查結果。"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = LNC#79880-1 "Vision test panel"
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T08:20:00+08:00"
* performer = Reference(example-doctor)
* component[leftEyeVision].code = LNC#70936-0 "Visual acuity Left eye"
* component[leftEyeVision].valueQuantity = 1.0 '1'
* component[rightEyeVision].code = LNC#70935-2 "Visual acuity Right eye"
* component[rightEyeVision].valueQuantity = 1.0 '1'
* component[colorVision].code = LNC#48024-3 "Color vision Test"
* component[colorVision].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ObservationValue#N "Normal"

Instance: obs-hearing
InstanceOf: OHEHearingTestProfile
Title: "聽力檢查結果範例"
Description: "受檢勞工王大同的聽力（左耳正常、右耳正常）檢查結果。"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = LNC#89024-4 "Audiometry panel"
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T08:25:00+08:00"
* performer = Reference(example-doctor)
* component[leftEarHearing].code = LNC#89023-6 "Audiology Left ear"
* component[leftEarHearing].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ObservationValue#N "Normal"
* component[rightEarHearing].code = LNC#89022-8 "Audiology Right ear"
* component[rightEarHearing].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ObservationValue#N "Normal"

Instance: obs-physical
InstanceOf: OHEPhysicalExamProfile
Title: "理學檢查結果範例"
Description: "受檢勞工王大同各系統理學檢查結果（正常）。"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = LNC#29545-1 "Physical findings Narrative"
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(example-doctor)
* component[0].code = CS_PhysicalExamSystems#head-neck "頭頸部"
* component[0].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ObservationValue#N "Normal"
* component[1].code = CS_PhysicalExamSystems#respiratory "呼吸系統"
* component[1].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ObservationValue#N "Normal"

Instance: obs-pulmonary
InstanceOf: OHEPulmonaryFunctionProfile
Title: "肺功能檢查結果範例"
Description: "受檢勞工王大同的肺功能檢查結果（FVC = 4.2 L, FEV1 = 3.5 L, FEV1/FVC = 83.3%）。"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = LNC#19876-2 "Forced vital capacity [Volume] in Airways by Spirometry"
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T08:45:00+08:00"
* performer = Reference(example-doctor)
* valueQuantity = 4.2 'L' "L"
* component[fev1].valueQuantity = 3.5 'L' "L"
* component[ratio].valueQuantity = 83.3 '%' "%"

// ==========================================
// 4. 生活習慣與自覺症狀（Observation & QR）
// ==========================================

Instance: obs-smoking
InstanceOf: OHESocialHistorySmokingProfile
Title: "吸菸狀態與菸量範例"
Description: "受檢勞工王大同的吸菸史（從未吸菸）。"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = LNC#72166-2 "Tobacco smoking status"
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T08:05:00+08:00"
* valueCodeableConcept.coding[0] = http://snomed.info/sct#266919005 "Never smoked tobacco"
* valueCodeableConcept.coding[1] = CS_SmokingStatus#0-never "從未吸菸"

Instance: obs-betelnut
InstanceOf: OHESocialHistoryBetelNutProfile
Title: "嚼檳榔狀態與量化資料範例"
Description: "受檢勞工王大同的嚼檳榔習慣，每日嚼食 5 顆，嚼檳 10 年，目前已戒除 1 年（12個月）。"
* status = #final
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T08:05:00+08:00"
* component[amount].valueCodeableConcept = TWCRSFBetNutChewAmountCS#05 "每日5顆"
* component[year].valueCodeableConcept = TWCRSFBetNutChewYearCS#10 "嚼檳榔10年"
* component[quit].valueCodeableConcept = TWCRSFBetNutChewQuitCS#01 "戒嚼檳榔1年"

Instance: obs-sleep
InstanceOf: OHESocialHistorySleepProfile
Title: "睡眠狀況測量範例"
Description: "受檢勞工王大同的平均每日睡眠時間 (7 小時)。"
* status = #final
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T08:05:00+08:00"
* valueQuantity = 7 'h' "hours"

Instance: example-questionnaire
InstanceOf: OHEQuestionnaireProfile
Title: "自覺症狀問卷定義範例"
Description: "自覺症狀調查問卷結構定義。"
* url = "https://twcore.mohw.gov.tw/ig/ohe/Questionnaire/example-questionnaire"
* status = #active
* item[0].linkId = "q1"
* item[0].text = "您過去三個月內，是否經常感到呼吸困難或氣喘？"
* item[0].type = #boolean
* item[1].linkId = "q2"
* item[1].text = "您過去三個月內，是否經常感到胸痛或胸悶？"
* item[1].type = #boolean

Instance: example-symptoms-response
InstanceOf: OHEQuestionnaireResponseProfile
Title: "自覺症狀問卷回覆範例"
Description: "受檢勞工王大同的自覺症狀問卷填寫結果。"
* status = #completed
* authored = "2024-03-01T09:00:00Z"
* questionnaire = "https://twcore.mohw.gov.tw/ig/ohe/Questionnaire/example-questionnaire"
* subject = Reference(example-worker)
* source = Reference(example-worker)
* author = Reference(example-worker)
* item[0].linkId = "q1"
* item[0].answer[0].valueBoolean = false
* item[1].linkId = "q2"
* item[1].answer[0].valueBoolean = false

// ==========================================
// 5. 實驗室與檢驗項目（Observation & Condition）
// ==========================================

Instance: obs-lab-glucose
InstanceOf: OHELabResultGeneralProfile
Title: "實驗室檢驗範例 - 空腹血糖"
Description: "受檢勞工王大同的空腹血糖檢驗結果 (95 mg/dL)。"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = LNC#1558-6 "Fasting Glucose (mass/volume) in Serum or Plasma"
* subject = Reference(example-worker)
* effectiveDateTime = "2026-06-12T09:00:00+08:00"
* valueQuantity = 95 'mg/dL' "mg/dL"
* referenceRange[0].low = 70 'mg/dL' "mg/dL"
* referenceRange[0].high = 100 'mg/dL' "mg/dL"

Instance: example-past-condition
InstanceOf: OHEConditionProfile
Title: "既往病史範例 - 高血壓"
Description: "受檢勞工王大同的高血壓既往病史。"
* category = http://terminology.hl7.org/CodeSystem/condition-category#medical-history
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code = ICD10CM#I10 "Essential (primary) hypertension"
* subject = Reference(example-worker)

// ==========================================
// 6. 總評分級與適性配工（Impression）
// ==========================================

Instance: example-clinical-impression
InstanceOf: OHEClinicalImpressionProfile
Title: "醫師臨床總評與分級範例"
Description: "林職醫師針對王大同的健康檢查結果進行之總評，判定為第一級健康管理（正常）。"
* status = #completed
* subject = Reference(example-worker)
* assessor = Reference(example-doctor)
* summary = "本次定期健康檢查結果大致正常，既往高血壓控制良好。建議持續維持健康生活習慣，定期監測血壓。"
* extension[healthMgmtLevel].valueCodeableConcept = CS_HealthMgmtLevel#level-1 "第一級管理"

// ==========================================
// 7. 臨場健康服務紀錄範例（附表八）
// ==========================================

Instance: example-encounter-service
InstanceOf: OHEEncounterServiceProfile
Title: "臨場健康服務事件範例"
Description: "林職醫師與護理師於115年6月10日前往大同電子股份有限公司進行現場臨場服務。"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#FLD "field"
* period.start = "2026-06-10T09:00:00+08:00"
* period.end = "2026-06-10T12:00:00+08:00"
* participant[0].individual = Reference(example-doctor)
* serviceProvider = Reference(example-hospital)
* extension[employerInfo].valueReference = Reference(example-employer)
* extension[department].valueString = "化學製造現場"

Instance: example-group-workers
InstanceOf: Group
Title: "服務對象勞工群組範例"
Description: "大同電子現場化學製造部門之作業勞工群組。"
* type = #person
* actual = true
* name = "大同電子化學製造課全體勞工"

Instance: example-procedure-activity
InstanceOf: OHEProcedureServiceActivityProfile
Title: "臨場服務執行活動項目範例"
Description: "在臨場服務中辦理「健康檢查結果分析」的執行紀錄。"
* status = #completed
* code = CS_ServiceActivityType#exam-analysis "健康檢查結果分析"
* subject = Reference(example-group-workers)
* extension[employerInfo].valueReference = Reference(example-employer)

Instance: example-service-finding
InstanceOf: OHEObservationServiceFindingProfile
Title: "臨場服務現場發現問題範例"
Description: "臨場服務中發現作業現場危害因子及問題。"
* status = #final
* code = SCT#278486003 "Occupational health hazard (finding)"
* focus = Reference(example-employer)
* valueString = "發現部分現場勞動條件局部排氣裝置風速異常降低，且現場作業人員於正己烷暴露區域未確實配戴防護面罩。"

Instance: example-service-task
InstanceOf: OHETaskServiceTaskProfile
Title: "臨場服務建議改善措施與追蹤任務範例"
Description: "林職醫師針對現場發現問題提出之改善建議，交由雇主大同電子執行改善。"
* status = #requested
* intent = #plan
* requester = Reference(example-doctor)
* owner = Reference(example-employer)
* focus = Reference(example-service-finding)
* description = "大同電子應於兩週內委託專業廠商維修化學製造現場之局部排氣系統，並落實每日作業前防護具配戴檢查機制。"
* extension[employerInfo].valueReference = Reference(example-employer)

// ==========================================
// 8. 附表八與附表十一之文件組成與打包（Composition & Bundle）
// ==========================================

Instance: example-composition-general
InstanceOf: OHECompositionProfile
Title: "一般健檢報告組成文件範例"
Description: "整合王大同一般健康檢查所有關聯項目的 Composition 臨床文件範例。"
* status = #final
* subject = Reference(example-worker)
* author = Reference(example-doctor)
* date = "2026-06-12T11:45:00+08:00"
* section[demographics].code = http://loinc.org#51847-2
* section[demographics].title = "基本資料與行政資訊"
* section[demographics].entry[0] = Reference(example-worker)
* section[demographics].entry[1] = Reference(example-encounter-general)
* section[pastHistory].code = http://loinc.org#11348-0
* section[pastHistory].title = "既往病史"
* section[pastHistory].entry[0] = Reference(example-past-condition)
* section[habits].code = http://loinc.org#11338-1
* section[habits].title = "生活習慣"
* section[habits].entry[0] = Reference(obs-smoking)
* section[habits].entry[1] = Reference(obs-betelnut)
* section[habits].entry[2] = Reference(obs-sleep)
* section[symptoms].code = http://loinc.org#29554-3
* section[symptoms].title = "自覺症狀"
* section[symptoms].entry[0] = Reference(example-symptoms-response)
* section[physicalExams].code = http://loinc.org#29545-1
* section[physicalExams].title = "理學檢查"
* section[physicalExams].entry[0] = Reference(obs-height)
* section[physicalExams].entry[1] = Reference(obs-weight)
* section[physicalExams].entry[2] = Reference(obs-waist)
* section[physicalExams].entry[3] = Reference(obs-bloodpressure)
* section[physicalExams].entry[4] = Reference(obs-vision)
* section[physicalExams].entry[5] = Reference(obs-hearing)
* section[physicalExams].entry[6] = Reference(obs-physical)
* section[labExams].code = http://loinc.org#30954-2
* section[labExams].title = "檢驗與影像檢查"
* section[labExams].entry[0] = Reference(obs-lab-glucose)
* section[labExams].entry[1] = Reference(obs-pulmonary)
* section[assessment].code = http://loinc.org#51848-0
* section[assessment].title = "醫師總評、分級與建議"
* section[assessment].entry[0] = Reference(example-clinical-impression)

Instance: example-composition-service
InstanceOf: OHECompositionServiceRecordProfile
Title: "臨場服務紀錄組成文件範例"
Description: "整合大同電子 115年6月份臨場服務紀錄（附表八）的 Composition 臨床文件範例。"
* status = #final
* subject = Reference(example-employer)
* author = Reference(example-doctor)
* date = "2026-06-10T14:00:00+08:00"
* section[workplace].code = http://loinc.org#51847-2
* section[workplace].title = "作業場所概況"
* section[workplace].entry[0] = Reference(example-encounter-service)
* section[activities].code = http://loinc.org#97726-4
* section[activities].title = "臨場服務執行情形"
* section[activities].entry[0] = Reference(example-procedure-activity)
* section[findings].code = http://loinc.org#29554-3
* section[findings].title = "現場發現問題"
* section[findings].entry[0] = Reference(example-service-finding)
* section[recommendations].code = http://loinc.org#51898-5
* section[recommendations].title = "改善建議與追蹤"
* section[recommendations].entry[0] = Reference(example-service-task)

Instance: example-complete-bundle
InstanceOf: OHEBundleProfile
Title: "健檢紀錄完整封裝 Bundle 範例"
Description: "包含 Composition 及所有關聯檢查資源（Patient、Observations、Conditions等）的 Document Bundle 打包範例。"
* type = #document
* timestamp = "2026-06-12T12:00:00+08:00"
* entry[0].fullUrl = "http://example.org/fhir/Composition/example-composition-general"
* entry[0].resource = example-composition-general
* entry[1].fullUrl = "http://example.org/fhir/Patient/example-worker"
* entry[1].resource = example-worker
* entry[2].fullUrl = "http://example.org/fhir/Encounter/example-encounter-general"
* entry[2].resource = example-encounter-general
* entry[3].fullUrl = "http://example.org/fhir/Observation/obs-height"
* entry[3].resource = obs-height
* entry[4].fullUrl = "http://example.org/fhir/Observation/obs-weight"
* entry[4].resource = obs-weight
* entry[5].fullUrl = "http://example.org/fhir/Observation/obs-waist"
* entry[5].resource = obs-waist
* entry[6].fullUrl = "http://example.org/fhir/Observation/obs-bloodpressure"
* entry[6].resource = obs-bloodpressure
* entry[7].fullUrl = "http://example.org/fhir/Observation/obs-vision"
* entry[7].resource = obs-vision
* entry[8].fullUrl = "http://example.org/fhir/Observation/obs-hearing"
* entry[8].resource = obs-hearing
* entry[9].fullUrl = "http://example.org/fhir/Observation/obs-physical"
* entry[9].resource = obs-physical
* entry[10].fullUrl = "http://example.org/fhir/Observation/obs-smoking"
* entry[10].resource = obs-smoking
* entry[11].fullUrl = "http://example.org/fhir/Observation/obs-betelnut"
* entry[11].resource = obs-betelnut
* entry[12].fullUrl = "http://example.org/fhir/Observation/obs-sleep"
* entry[12].resource = obs-sleep
* entry[13].fullUrl = "http://example.org/fhir/QuestionnaireResponse/example-symptoms-response"
* entry[13].resource = example-symptoms-response
* entry[14].fullUrl = "http://example.org/fhir/Observation/obs-lab-glucose"
* entry[14].resource = obs-lab-glucose
* entry[15].fullUrl = "http://example.org/fhir/Condition/example-past-condition"
* entry[15].resource = example-past-condition
* entry[16].fullUrl = "http://example.org/fhir/ClinicalImpression/example-clinical-impression"
* entry[16].resource = example-clinical-impression
* entry[17].fullUrl = "http://example.org/fhir/Observation/obs-pulmonary"
* entry[17].resource = obs-pulmonary
