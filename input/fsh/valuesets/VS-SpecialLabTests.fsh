ValueSet: VS_SpecialLabTests
Id: VS-SpecialLabTests
Title: "特殊健康檢查及體格檢查實驗室項目值集"
Description: "包含特殊健康檢查與體格檢查之實驗室與生理功能檢驗項目，對應至 LOINC 代碼。此值集完全涵蓋 12 大類特別危害健康作業類別之法規要求項目。"
* ^experimental = false

// 1. 高溫作業 (high-temp)
* LNC#11524-6 "EKG study"
* LNC#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* LNC#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* LNC#5810-7 "Specific gravity of Urine"

// 2. 噪音作業 (noise)
* LNC#89024-4 "Hearing threshold 500 Hz Ear-L"

// 3. 游離輻射作業 (radiation)
* LNC#789-8 "Erythrocytes [#/volume] in Blood"
* LNC#6690-2 "WBC [#/volume] in Blood"
* LNC#777-3 "Platelets [#/volume] in Blood"
* LNC#718-7 "Hemoglobin [Mass/volume] in Blood"
* LNC#4544-3 "Hematocrit [Volume Fraction] of Blood"
* LNC#770-8 "Neutrophils [Fraction] of WBC"
* LNC#736-9 "Lymphocytes [Fraction] of WBC"

// 4. 異常氣壓作業 (abnormal-pressure)
* LNC#11524-6 "EKG study"
* LNC#24579-5 "XR Bones.long Survey"
* LNC#19868-9 "FEV1 Vol Respiratory Spirometry"
* LNC#19876-2 "FVC Vol Respiratory Spirometry"
* LNC#19926-5 "FEV1% or FEV1/FVC (%)"

// 5. 鉛作業 (lead)
* LNC#5671-3 "Lead [Mass/volume] in Blood"
* LNC#5676-2 "Lead [Mass/volume] in Urine"
* LNC#11212-8 "Coproporphyrin [Mass/volume] in Urine"
* LNC#11215-1 "Aminolevulinic acid [Mass/volume] in Urine"
* LNC#789-8 "Erythrocytes [#/volume] in Blood"
* LNC#4544-3 "Hematocrit [Volume Fraction] of Blood"
* LNC#718-7 "Hemoglobin [Mass/volume] in Blood"

// 6. 四烷基鉛作業 (tetraalkyl-lead)
* LNC#5676-2 "Lead [Mass/volume] in Urine"
* LNC#11212-8 "Coproporphyrin [Mass/volume] in Urine"
* LNC#11215-1 "Aminolevulinic acid [Mass/volume] in Urine"

// 7. 粉塵作業 (dust)
* LNC#36643-5 "XR Chest 2V"
* LNC#19868-9 "FEV1 Vol Respiratory Spirometry"
* LNC#19876-2 "FVC Vol Respiratory Spirometry"
* LNC#19926-5 "FEV1% or FEV1/FVC (%)"

// 8. 有機溶劑作業 (organic-solvent)
* LNC#6709-0 "Hippurate [Mass/volume] in Urine"
* LNC#2725-0 "p-Methylhippurate [Mass/volume] in Urine"
* LNC#13000-5 "Mandelate [Mass/volume] in Urine"
* LNC#3041-1 "Trichloroacetate [Mass/volume] in Urine"
* LNC#31170-4 "2,5-Hexanedione [Mass/volume] in Urine"
* LNC#2758-1 "Phenol [Mass/volume] in Urine"
* LNC#12543-5 "Methylformamide [Mass/volume] in Urine"
* LNC#12533-6 "TTCA [Mass/volume] in Urine"

// 9. 特定化學物質作業 (specific-chemical)
* LNC#5586-3 "Arsenic [Mass/volume] in Urine"
* LNC#5609-3 "Cadmium [Mass/volume] in Blood"
* LNC#5611-9 "Cadmium [Mass/volume] in Urine"
* LNC#5623-4 "Chromium [Mass/volume] in Urine"
* LNC#14099-6 "Nickel [Mass/volume] in Urine"
* LNC#5685-3 "Mercury [Mass/volume] in Blood"
* LNC#5689-5 "Mercury [Mass/volume] in Urine"
* LNC#72665-3 "trans,trans-Muconic acid [Mass/volume] in Urine"
* LNC#10913-2 "4,4'-Methylenebis(2-chloroaniline) [Mass/volume] in Urine"
* LNC#5653-1 "Formaldehyde [Mass/volume] in Urine"
* LNC#10909-0 "Benzidine [Mass/volume] in Urine"
* LNC#5681-2 "Manganese [Mass/volume] in Blood"
* LNC#42221-2 "Manganese [Mass/volume] in Urine"
* LNC#34304-6 "Fluoride [Mass/volume] in Urine"

// 10. 黃磷作業 (yellow-phosphorus)
* LNC#2777-1 "Phosphate [Mass/volume] in Serum or Plasma"
* LNC#24829-4 "XR Mandible Views"
* LNC#1920-8 "AST [Enzymatic activity/volume] in Serum or Plasma"
* LNC#1742-6 "ALT [Enzymatic activity/volume] in Serum or Plasma"
* LNC#1975-2 "Bilirubin [Mass/volume] in Serum or Plasma"
* LNC#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* LNC#3094-0 "BUN [Mass/volume] in Serum or Plasma"

// 11. 聯吡啶或巴拉刈作業 (paraquat)
* LNC#9827-7 "Paraquat [Mass/volume] in Urine"
* LNC#1920-8 "AST [Enzymatic activity/volume] in Serum or Plasma"
* LNC#1742-6 "ALT [Enzymatic activity/volume] in Serum or Plasma"
* LNC#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* LNC#3094-0 "BUN [Mass/volume] in Serum or Plasma"
* LNC#36643-5 "XR Chest 2V"
* LNC#19868-9 "FEV1 Vol Respiratory Spirometry"
* LNC#19876-2 "FVC Vol Respiratory Spirometry"
* LNC#19926-5 "FEV1% or FEV1/FVC (%)"

// 12. 其他指定作業 (other)
* LNC#60090-8 "Indium [Mass/volume] in Serum or Plasma"
* LNC#5665-5 "Indium [Mass/volume] in Blood"
* LNC#5627-5 "Cobalt [Mass/volume] in Serum or Plasma"
* LNC#5625-9 "Cobalt [Mass/volume] in Blood"
* LNC#1984-4 "Bromide [Mass/volume] in Serum or Plasma"
* LNC#1985-1 "Bromide [Mass/volume] in Urine"
* LNC#1709-5 "Acetylcholinesterase [Enzymatic activity/volume] in Red Blood Cells"
* LNC#2098-2 "Cholinesterase [Enzymatic activity/volume] in Serum or Plasma"
