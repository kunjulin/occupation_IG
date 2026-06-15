# 使用情境 (Use Cases)

本實作指引旨在支援職業健康管理與臨場健康服務的數位化轉型，定義了以下 **7 大核心使用情境**：

---

## Use Case 1: 一般體格檢查資料交換 (New Employee Physical Exam)

*   **情境背景**：當雇主僱用新進勞工時，依法必須實施一般體格檢查（項目規範如附表九）。
*   **資料對象**：新進勞工（王大同）。
*   **交換流程**：
    1. 勞工前往特約健檢醫院（長庚醫院）受檢。
    2. 醫院端系統生成符合 `TWHA-Bundle` (type=document) 的健檢結果，其中以 `TWHA-Composition` 封裝基本資料、理學檢查與一般實驗室檢驗（Hb, WBC, 尿蛋白, 尿潛血）。
    3. 醫院系統透過安全 API 將結果傳輸至事業單位（雇主公司）之職安衛系統或職場健康服務管理平台。
*   **優勢**：取代紙本郵寄與手動登打，縮短錄取報到審查流程。
*   **實體資料範例與架構說明**：
    本指引提供了一個完整的實體資料交換範例 [健檢紀錄完整封裝 Bundle 範例 (UC-001)](Bundle-UC-001.html)，其內含一個臨床文件 `TWHACompositionProfile` (一般健檢報告) 以及對應附表九法定項目的所有實體 `Observation` 資源，包括：
    *   **人口學與行政資訊**：受檢勞工 ([example-worker](Patient-example-worker.html))、就醫/體檢事件 ([example-encounter-general](Encounter-example-encounter-general.html))、健檢醫療機構 ([example-hospital](Organization-example-hospital.html))。
    *   **生理功能檢查**：身高體重與血壓 ([obs-height](Observation-obs-height.html), [obs-weight](Observation-obs-weight.html), [obs-bloodpressure](Observation-obs-bloodpressure.html))、視力圖 ([obs-vision](Observation-obs-vision.html))、聽力圖 ([obs-hearing](Observation-obs-hearing.html))。
    *   **物理與生理系統檢查**：醫師進行的各系統理學檢查結果 ([obs-physical](Observation-obs-physical.html))。
    *   **一般實驗室檢驗項目**：空腹血糖 ([obs-lab-glucose](Observation-obs-lab-glucose.html))。
    *   **健康習慣問卷調查**：吸菸習慣 ([obs-smoking](Observation-obs-smoking.html))、嚼檳榔習慣 ([obs-betelnut](Observation-obs-betelnut.html))、睡眠評估 ([obs-sleep](Observation-obs-sleep.html)) 及自覺症狀問卷結果 ([example-symptoms-response](QuestionnaireResponse-example-symptoms-response.html))。
    *   **既往病史登錄**：高血壓史 ([example-past-condition](Condition-example-past-condition.html))。
    *   **醫師總評判定**：醫師做出的健康管理分級與總評意見 ([example-clinical-impression](ClinicalImpression-example-clinical-impression.html))。

---

## Use Case 2: 一般健康檢查資料交換 (On-the-Job Regular Exam)

*   **情境背景**：雇主對在職勞工，應依年齡與週期實施定期一般健康檢查（65歲以上每年、40-64歲每三年、40歲以下每五年一次）。
*   **資料對象**：全體在職勞工。
*   **交換流程**：與 Use Case 1 類似，但包含更完整的生化檢查項目（血糖、ALT、肌酸酐、總膽固醇、三酸甘油酯、HDL-C、LDL-C 等）及檢查週期擴充 `ext-exam-interval`（設定為 3 或 5 年）。
*   **優勢**：自動追蹤勞工歷年健檢趨勢，實施職場慢性病群體健康管理。

---

## Use Case 3: 特殊作業健康檢查 (Hazardous Worker Special Exam)

*   **情境背景**：從事噪音、鉛、粉塵等特別危害健康作業勞工，應於從事該作業前實施特殊體格檢查，並於在職期間每年實施特殊健康檢查。
*   **作業聚焦**：第一版優先聚焦於 **噪音作業**、**鉛作業** 與 **粉塵作業**。
*   **交換流程**：
    - 噪音作業：封裝純音聽力圖數據（`TWHA-HearingTest`）。
    - 鉛作業：封裝血中鉛濃度（`TWHA-LabResult-Special`）與紅血球、比容值等指標。
    - 粉塵作業：封裝胸部 X 光報告（`TWHA-ImagingStudy` / `TWHA-DiagnosticReport`）與肺功能數值（FEV1, FVC）。
*   **優勢**：臨床與現場暴露數據精確對應，利於早期防範职业病。

---

## Use Case 4: 臨場健康服務紀錄申報 (Workplace On-site Service Logging)

*   **情境背景**：特約醫護人員（職醫、職護）至事業單位進行臨場健康服務時，應依「附表八」項目完整記錄服務活動。
*   **資料對象**：事業單位、工作場所部門、全體勞工暴露特性。
*   **交換流程**：
    1. 職醫/職護完成臨場巡視、諮詢與健康指導。
    2. 填寫臨場紀錄並產出 `TWHA-Composition-ServiceRecord`（包含 `TWHA-Encounter-Service` 服務事件與 `TWHA-Procedure-ServiceActivity` 辦理事項）。
    3. 系統自動產出「發現問題」與「改善建議」的 `Observation-ServiceFinding` 與 `Task-ServiceTask`。
    4. 資料加密保存於事業單位，並可匯出為標準 JSON 上傳至職安署職場健康服務管理系統。
*   **優勢**：標準化臨場服務足跡，簡化勞動檢查備查作業。

---

## Use Case 5: 醫師總評與健康管理分級 (Physician Grading 1-4)

*   **情境背景**：體檢判定醫師應於檢查後，依勞工健檢結果進行綜合總評，並判定健康管理分級。
*   **分級機制**：第一級（正常/無關）、第二級（異常但與工作無關）、第三級（不確定相關性，需追蹤或現場評估）、第四級（與工作相關，危害顯著）。
*   **資料表現**：
    - 在 `TWHA-ClinicalImpression` 中以 `ext-health-mgmt-level` 記錄判定分級，於 `summary` 記錄醫師意見。
*   **優勢**：提供結構化的分級指標，觸發後續的臨床或行政處置。

---

## Use Case 6: 適性配工與追蹤執行 (Fitness-for-Work & Follow-up)

*   **情境背景**：針對第四級個案進行工作調整，或針對第三級個案進行追蹤檢查。
*   **交換流程**：
    - 當分級為 `level-4`：職安衛系統自動生成 `TWHA-CarePlan`（適性配工計畫），其中包含 `ext-fitness-for-work`（工作調整建議：變更場所、工作或縮短工時）並由雇主執行。
    - 當分級為 `level-3`：醫事系統自動生成 `TWHA-ServiceRequest`（追蹤檢查要求），排程三個月內重檢或現場評估。
*   **優勢**：實現自動化個案追蹤與管理閉環，防止勞工病情惡化。

---

## Use Case 7: 勞工健康檢查結果自動化申報 (Automation Reporting to Government)

*   **情境背景**：醫療機構與事業單位依法需將勞工健檢結果與分級統計通報至勞動部職業安全衛生署。
*   **交換流程**：
    - 健檢機構與事業單位系統透過 API 呼叫，傳輸符合本指引標準的 `TWHA-Bundle` (含 `ext-labor-report-code` 通報代碼) 至政府通報伺服器，由伺服器自動解析、存檔並產出統計報表。
*   **優勢**：一鍵通報，降低申報錯誤率，協助政府精確掌握全國職業病流行病學特徵。
