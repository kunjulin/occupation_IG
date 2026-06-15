# 成人預防保健 (Adult Preventive Care)

成人預防保健服務由衛生福利部國民健康署提供，旨在提供中年國民早期的健康風險評估與慢性病篩檢。本指引依據成人預防保健服務之規定，設計對應之 FHIR 交換標準，並將自填問卷與臨床檢查項目收錄於 [健康檢查核心項目值集](ValueSet-VS-CoreDataset.html) 中。

---

## 1. 服務對象與頻率

*   **40歲至64歲**：每3年估算一次。
*   **65歲以上**：每年估算一次。
*   **罹患小兒麻痺且年在35歲以上者**：每年估算一次。
*   **55歲以上原住民**：每年估算一次。

---

## 2. 核心檢查與評估項目

成人預防保健資料交換模型主要由以下三個部分組成：

### 2.1 個人與家族史自填問卷 (Questionnaire & QuestionnaireResponse)
採用 `TWHA-QuestionnaireResponse-HT` Profile，記錄受檢者自填的健康行為、生活習慣與既往病史：
*   **吸菸習慣** (Smoking status)
*   **飲酒習慣** (Drinking status)
*   **嚼檳榔習慣** (Betel nut chewing status)
*   **規律運動** (Regular exercise)
*   **個人既往病史**（高血壓、糖尿病、高血脂症、心血管疾病）
*   **直系親屬家族史**（腦中風、心臟病、糖尿病）

### 2.2 身體與理學檢查 (Observation)
*   **身高與體重**：用於計算 BMI。
*   **腰圍 (Waist Circumference)**：評估代謝症候群風險。
*   **血壓測量**：收縮壓與舒張壓。

### 2.3 實驗室檢驗項目 (Observation - Core Dataset)
包含各項重要生化指標：
*   **尿蛋白 (Urine Protein)**
*   **空腹血糖 (Fasting Glucose)**：LOINC `1558-6`
*   **總膽固醇 (Total Cholesterol)**：LOINC `2093-3`
*   **三酸甘油酯 (Triglyceride)**：LOINC `2571-8`
*   **高密度脂蛋白膽固醇 (HDL-C)**：LOINC `2085-9`
*   **低密度脂蛋白膽固醇 (LDL-C)**：LOINC `13457-7`
*   **腎絲球過濾率 (eGFR)**：以肌酸酐估算之腎功能指標。

---

## 3. 封包包裝範例 (Exchange Package)

當醫療院所向國健署平台申報或與其他機構交換成人預防保健資料時，須將上述病人基本資料、就醫事件、問卷回覆以及生理與檢驗數據包裝於 `TWHA-Bundle-Document` 格式中。

完整範例請參閱 [UC-005 成人預防保健檢查報告封包範例](Bundle-UC-005.html)。
