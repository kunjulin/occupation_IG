# 臺灣勞工職業健康體格及健康檢查實作指引 (Taiwan Occupational Health Examination IG)

## 1. 導言 (Introduction)

歡迎使用**臺灣勞工職業健康體格及健康檢查實作指引 (Taiwan Occupational Health Examination Implementation Guide, TWTWHAIG)**。本實作指引由衛生福利部委託長庚紀念醫院規劃研製，旨在利用 **HL7 FHIR (Fast Healthcare Interoperability Resources)** 國際標準，推動臺灣勞工健康檢查結果與臨場健康服務紀錄之資料交換標準化。

本實作指引遵循衛生福利部資訊處最新之資訊安全與技術治理規範，**與國家最新核心標準「臺灣核心實作指引 (TW Core IG v1.0.0)」對齊與繼承**，並依據勞動部**《勞工健康保護規則》**進行本地化資料欄位與術語映射，以確保臨床端、事業單位與政府主管機關（勞動部職業安全衛生署、衛福部）間的健康管理資料流無縫對接。

---

## 2. 法規背景與業務範圍 (Regulatory Context & Scope)

依據中華民國《職業安全衛生法》第 20 條與《勞工健康保護規則》，本指引之業務範圍與核心資料模型對應以下四個法定關鍵附表：

```
《勞工健康保護規則》法定附表架構：
 ├── 附表八   --> 勞工健康服務執行紀錄表 (臨場健康服務活動、危害發現與改善建議)
 ├── 附表九   --> 一般體格檢查、健康檢查項目表 (一般健檢法定實施項目之基礎基準)
 ├── 附表十   --> 特殊體格檢查、健康檢查項目表 (特殊危害作業法定實施項目之基礎基準，如噪音、鉛、粉塵)
 └── 附表十一 --> 勞工一般體格及健康檢查紀錄 (健檢結果填報、既往病史、自覺症狀、理學檢查與分級配工)
```

1. **附表八：勞工健康服務執行紀錄表**
   * **業務範圍**：醫護團隊（臨場健康服務醫護人員）前往事業單位提供臨場健康服務之執行紀錄。包含作業場所危害因子發現（例如粉塵、噪音暴露）、辦理之健康服務活動項目（例如健康教育、個別面談）、改善建議以及適性配工後續追蹤。
2. **附表九：一般體格檢查、健康檢查項目表**
   * **業務範圍**：規範一般健檢實施的法定基準項目（如身高、體重、血壓、尿蛋白等），作為附表十一實體健檢紀錄之檢驗項目約束依據。
3. **附表十：特殊體格檢查、健康檢查項目表**
   * **業務範圍**：規範特別危害健康作業（本指引第一版優先聚焦於 **噪音作業、鉛作業、粉塵作業** 等三大危害）之特殊健檢項目基準，例如肺功能檢查 (PFT)、心電圖 (ECG) 及特定化學物質之尿液/血液檢驗項目。
4. **附表十一：勞工一般體格及健康檢查紀錄**
   * **業務範圍**：登載勞工基本資料、作業經歷、生活習慣（吸菸、嚼檳榔、飲酒、睡眠）、既往病史、自覺症狀問卷、身體各系統理學檢查、實驗室檢驗（尿液、血液、生化項目）、醫師分級判定（第一級至第四級健康管理分級機制）以及適性配工建議（工作場所變更、職務調整或工時縮短）。

---

## 3. 技術框架與繼承關係 (Technical Framework & Inheritance)

本指引基於 **FHIR R4 (4.0.1)** 版本開發，所有核心 Profiles 均遵循 `TW Core IG v1.0.0` 國家核心實作指引之規範進行擴充與繼承，以達最佳互操作性。

### 核心業務附表與 FHIR Profile 映射暨繼承對照表

本指引依據各附表之業務特性與主體（Subject）類型，明智地設計其繼承父類別。對於涉及非病人主體（如機構、群組）之行政記錄，保留繼承 base FHIR 以防過度約束：

| 業務附表 | 核心業務功能區塊 | TWHA Profile 名稱 | FHIR 核心資源 | 繼承之父類別 (Parent Profile) | 設計與繼承考量說明 |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **附表十一** (一般健檢)<br>**附表九/十** (健檢項目) | 勞工個人基本資料 | `TWHAPatientProfile` | Patient | `TWCorePatient` | 繼承 TW Core 以適應臺灣身分證/居留證格式。 |
| | 實施檢查之醫師/護理師 | `TWHAPractitionerProfile` | Practitioner | `TWCorePractitioner` | 繼承 TW Core 以規範醫事人員證書字號編碼。 |
| | 受檢者所屬雇主（公司） | `TWHAOrganizationEmployerProfile` | Organization | `TWCoreOrganizationCo` | **細化繼承**：繼承公司法人 Profile，強制要求統一編號系統 (UBN)。 |
| | 實施健檢之醫療機構 | `TWHAOrganizationFacilityProfile` | Organization | `TWCoreOrganizationHosp` | **細化繼承**：繼承醫療機構 Profile，強制要求醫事機構代碼。 |
| | 勞工健檢事件上下文 | `TWHAEncounterProfile` | Encounter | `TWCoreEncounter` | 關聯就醫與健康檢查事件上下文。 |
| | 一般生命徵象檢查 | `TWHAVitalSignsProfile` | Observation | `TWCoreVitalSigns` | 繼承生命徵象基準 Profile，對齊血壓/心跳/體溫。 |
| | 吸菸習慣調查 | `TWHASocialHistorySmokingProfile` | Observation | `TWCoreSmokingStatus` | 繼承吸菸狀態 Profile，整合本地 CS 與標準 SNOMED 碼。 |
| | 職業別登載 | `TWHAOccupationProfile` | Observation | `TWCoreOccupation` | 繼承職業別 Profile，符合勞工特有職業登載。 |
| | 生理與理學檢查 (聽力/視力/理學) | `TWHAHearingTestProfile`<br>`TWHAVisionTestProfile`<br>`TWHAPhysicalExamProfile` | Observation | `TWCoreClinicalResult` | 繼承臨床結果 Profile，用於表示聽力圖、視力值及各系統理學檢查。 |
| | 肺功能檢查 (PFT) | `TWHAPulmonaryFunctionProfile` | Observation | `TWCoreClinicalResult` | 依據附表十特殊健檢項目，以臨床結果表示 FEV1/FVC 等 LOINC 值。 |
| | 心電圖檢查 (ECG) | `TWHAECGProfile` | Observation | `TWCoreECG` | **v1.0.0 升級**：改繼承 v1.0.0 新增之心電圖專用 Profile。 |
| | 實驗室檢驗（一般及特殊） | `TWHALabResultGeneralProfile`<br>`TWHALabResultSpecialProfile` | Observation | `TWCoreLabResult` | 繼承實驗室結果 Profile，對齊尿液、血液生化之 LOINC 檢驗碼。 |
| | 既往病史登載 | `TWHAConditionProfile` | Condition | `TWCoreCondition` | 繼承病情診斷 Profile，對齊 ICD-10-CM 本地化編碼。 |
| | 醫師總評與分級判定 | `TWHAClinicalImpressionProfile` | ClinicalImpression | `ClinicalImpression` (base FHIR) | TW Core 無對應 Profile，繼承 base FHIR。 |
| | 適性配工建議計畫 | `TWHACarePlanProfile` | CarePlan | `TWCoreCarePlan` | 繼承照護計畫，用於記錄限制工作或變更場所等配工措施。 |
| | 勞動部報告代碼與後續追蹤 | `TWHAServiceRequestProfile` | ServiceRequest | `TWCoreServiceRequest` | 繼承服務請求，用於記錄通報勞動部之追蹤與複查。 |
| | 自覺症狀問卷調查結果 | `TWHAQuestionnaireResponseProfile` | QuestionnaireResponse | `TWCoreQuestionnaireResponse` | 繼承問卷回應，要求包含必要之填寫時間 (authored) 欄位。 |
| | 健檢報告封裝文件核心 | `TWHACompositionProfile` | Composition | `TWCoreComposition` | 繼承臨床文件架構，定義健檢報告之 section 結構。 |
| | 報告打包傳輸封包 | `TWHABundleProfile` | Bundle | `Bundle` (base FHIR) | TW Core Bundle 約束過度嚴格，故保留 base FHIR 確保交換彈性。 |
| **附表八** (臨場服務) | 臨場健康服務紀錄表文件核心 | `TWHACompositionServiceRecordProfile` | Composition | `Composition` (base FHIR) | **設計抉擇**：由於臨場服務之 subject 為 **`Organization`** (雇主)，非 clinical 病人，故保留 base 避免 TW Core 對 Patient 的強制約束。 |
| | 臨場服務就醫/服務事件 | `TWHAEncounterServiceProfile` | Encounter | `TWCoreEncounter` | 記錄臨場服務之訪談事件。 |
| | 臨場服務執行活動紀錄 | `TWHAProcedureServiceActivityProfile` | Procedure | `Procedure` (base FHIR) | **設計抉擇**：由於臨場服務活動之對象可為全體員工群組 (**`Group`**)，故保留 base 避免 TW Core 對 Patient 的限制。 |
| | 現場作業環境危害發現 | `TWHAObservationServiceFindingProfile` | Observation | `Observation` (base FHIR) | 用於記錄環境中之危害因子（如噪音值、粉塵濃度等）。 |
| | 改善建議與追蹤改善任務 | `TWHATaskServiceTaskProfile` | Task | `Task` (base FHIR) | 記錄指派給企業雇主之改善任務，TW Core 無此 Profile。 |

*   **代碼與術語標準**：實驗室檢驗完全採用 **LOINC** 標準代碼；嚼檳榔等生活習慣代碼採用 **SNOMED CT** 標準（如 `698188003` Chews betel quid）；疾病史與不適作業疾病採用 **ICD-10-CM** 本地化編碼。

---

## 4. 指引閱讀指引 (How to Read this IG)

本指引網頁架構包含以下主題區段，請點選連結進行詳細閱讀：

*   [背景與法規依據 (Background)](background.html)：詳述職安法、勞工健康保護規則之條文背景與資料保存年限要求。
*   [使用情境 (Use Cases)](usecases.html)：描述本 IG 於醫療機構、事業單位、勞工及主管機關間之 7 大核心使用情境。
*   [資料模型與映射 (Data Model)](datamodel.html)：說明表單欄位至 FHIR Resources 的完整對應關係。
*   [一般檢查項目 (General Exam)](general-exam.html)：附表九與附表十一之一般體檢/健康檢查 FHIR 實作細節。
*   [特殊檢查項目 (Special Exam)](special-exam.html)：噪音、鉛、粉塵作業特殊檢查之 LOINC 映射與實作。
*   [臨場健康服務紀錄 (Service Record)](service-record.html)：附表八臨場健康服務（臨場服務）之 FHIR 建模與 Procedure/Task 設計。
*   [健康管理分級與配工 (Health Management & Fitness for Work)](health-management.html)：醫師分級判定（一～四級）及適性配工計畫。
*   [術語與代碼系統 (Terminology)](terminology.html)：定義本 IG 使用之 CodeSystems 與 ValueSets。
*   [安全與個資保護 (Security)](security.html)：健檢敏感個資之去識別化、加密傳輸與存取控制規範。
*   [下載專區 (Downloads)](downloads.html)：提供 FSH 原始碼、JSON Schema 以及完整範例下載。
