# 特殊體格及健康檢查 (Special Physical & Health Examination)

特殊體格及健康檢查適用於從事特別危害健康作業之勞工。本指引第一版**優先聚焦於以下三種最常見之特別危害健康作業項目**：

---

## 1. 噪音作業 (Noise Operations)

*   **適用對象**：連續八小時工作期間之均權音量達八十五分貝以上之作業勞工。
*   **核心檢查項目**：
    - **耳道檢查**：以理學檢查 `OHE-PhysicalExam` 記錄（外耳及鼓膜狀態）。
    - **純音聽力測試 (Audiometry)**：使用 `OHE-HearingTest` Profile 記錄。聽力計量測項目代碼為 LOINC `89024-4` (Audiometry panel)。
    - **細項要求**：必須進行雙耳在 500Hz、1000Hz、2000Hz、3000Hz、4000Hz、6000Hz 及 8000Hz 等頻率下之氣導聽閾測量（以 `component` 記錄各頻率之聽力損失值，單位：分貝，`dB`）。

---

## 2. 鉛作業 (Lead Operations)

*   **適用對象**：從事製造、處置或使用鉛及其化合物之作業勞工。
*   **核心檢查項目**：
    - **血中鉛含量 (Blood Lead)**：採用 `OHE-LabResult-Special` Profile，代碼為 LOINC `5671-3` (Lead [Mass/volume] in Blood)，單位：`ug/dL`。
    - **紅血球數 (RBC Count)**：代碼為 LOINC `789-8`，單位：`10*6/uL`。
    - **血球比容值 (Hematocrit)**：代碼為 LOINC `4544-3`，單位：`%`。
    - **既往病史與自覺症狀**：重點篩檢有無貧血、鉛絞痛、周邊神經病變等症狀。

---

## 3. 粉塵作業 (Dust Operations)

*   **適用對象**：從事粉塵危害預防標準所定義之粉塵作業勞工。
*   **核心檢查項目**：
    - **胸部 X 光檢查 (Chest X-ray)**：採用 `OHE-ImagingStudy` 記錄影像元數據，並以 `OHE-DiagnosticReport` 記錄 X 光大片攝影診斷報告（LOINC `36643-5`），評估是否有塵肺症（Pneumoconiosis）表現及分期。
    - **肺功能檢查 (Spirometry)**：採用 `OHE-PulmonaryFunction` Profile。記錄第一秒用力呼氣量 FEV1 (LOINC `19868-9`)、用力肺活量 FVC (LOINC `19876-2`) 及 FEV1/FVC 比值 (LOINC `19911-7`)，以評估是否有阻塞性或限制性肺功能障礙。
