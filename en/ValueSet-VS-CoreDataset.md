# 健康檢查核心項目值集 - 臺灣健康檢查資料交換實作指引 (Taiwan Health Assessment Implementation Guide, TWHA IG) v0.1.0

## ValueSet: 健康檢查核心項目值集 

 
包含一般健康檢查及體格檢查之核心檢驗與實驗室項目，對應至 LOINC 代碼。 

 **References** 

* [一般健檢實驗室檢驗 Profile](StructureDefinition-TWHA-LabResult-General.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "VS-CoreDataset",
  "url" : "https://twcore.mohw.gov.tw/ig/twha/ValueSet/VS-CoreDataset",
  "version" : "0.1.0",
  "name" : "VS_CoreDataset",
  "title" : "健康檢查核心項目值集",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-23T20:31:18+08:00",
  "publisher" : "衛生福利部次世代數位醫療平臺專案辦公室 & 長庚醫療財團法人長庚紀念醫院",
  "contact" : [{
    "name" : "衛生福利部次世代數位醫療平臺專案辦公室 & 長庚醫療財團法人長庚紀念醫院",
    "telecom" : [{
      "system" : "url",
      "value" : "https://twcore.mohw.gov.tw/twregistry/"
    }]
  },
  {
    "name" : "衛生福利部次世代數位醫療平臺專案辦公室",
    "telecom" : [{
      "system" : "url",
      "value" : "https://twcore.mohw.gov.tw/twregistry/"
    }]
  }],
  "description" : "包含一般健康檢查及體格檢查之核心檢驗與實驗室項目，對應至 LOINC 代碼。",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "718-7",
        "display" : "Hemoglobin [Mass/volume] in Blood"
      },
      {
        "code" : "4544-3",
        "display" : "Hematocrit [Volume Fraction] of Blood"
      },
      {
        "code" : "789-8",
        "display" : "Erythrocytes [#/volume] in Blood"
      },
      {
        "code" : "6690-2",
        "display" : "Leukocytes [#/volume] in Blood"
      },
      {
        "code" : "804-5",
        "display" : "WBC [#/volume] in Blood by Manual count"
      },
      {
        "code" : "26464-8",
        "display" : "WBC [#/volume] in Blood"
      },
      {
        "code" : "777-3",
        "display" : "Platelets [#/volume] in Blood"
      },
      {
        "code" : "26515-7",
        "display" : "Platelets [#/volume] in Blood by Automated count"
      },
      {
        "code" : "787-2",
        "display" : "MCV [Entitic volume] by Automated count"
      },
      {
        "code" : "30428-7",
        "display" : "MCV [Entitic volume] by calculation"
      },
      {
        "code" : "785-6",
        "display" : "MCH [Entitic mass] by Automated count"
      },
      {
        "code" : "28539-5",
        "display" : "MCH [Entitic mass] by Automated count"
      },
      {
        "code" : "786-4",
        "display" : "MCHC [Mass/volume] by Automated count"
      },
      {
        "code" : "788-0",
        "display" : "Erythrocyte distribution width [Ratio] by Automated count"
      },
      {
        "code" : "770-8",
        "display" : "Neutrophils/100 leukocytes in Blood by Automated count"
      },
      {
        "code" : "26508-2",
        "display" : "Neutrophils/100 leukocytes in Blood by Manual count"
      },
      {
        "code" : "736-9",
        "display" : "Lymphocytes/100 leukocytes in Blood by Automated count"
      },
      {
        "code" : "5905-5",
        "display" : "Monocytes/100 leukocytes in Blood by Automated count"
      },
      {
        "code" : "713-8",
        "display" : "Eosinophils/100 leukocytes in Blood by Automated count"
      },
      {
        "code" : "706-2",
        "display" : "Basophils/100 leukocytes in Blood by Automated count"
      },
      {
        "code" : "751-8",
        "display" : "Neutrophils [#/volume] in Blood by Automated count"
      },
      {
        "code" : "731-0",
        "display" : "Lymphocytes [#/volume] in Blood by Automated count"
      },
      {
        "code" : "1558-6",
        "display" : "Fasting Glucose [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2339-0",
        "display" : "Glucose [Mass/volume] in Blood"
      },
      {
        "code" : "4548-4",
        "display" : "Hemoglobin A1c/Hemoglobin.total in Blood"
      },
      {
        "code" : "59261-8",
        "display" : "Hemoglobin A1c/Hemoglobin.total in Blood by IFCC protocol"
      },
      {
        "code" : "20448-7",
        "display" : "Insulin [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "47214-2",
        "display" : "Homeostasis model assessment"
      },
      {
        "code" : "2160-0",
        "display" : "Creatinine [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "38483-4",
        "display" : "Creatinine [Mass/volume] in Blood"
      },
      {
        "code" : "3094-0",
        "display" : "Urea nitrogen [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "33914-3",
        "display" : "Glomerular filtration rate/1.73 sq M.predicted by MDRD equation"
      },
      {
        "code" : "88293-6",
        "display" : "Glomerular filtration rate/1.73 sq M.predicted by Creatinine-based formula (CKD-EPI 2021)"
      },
      {
        "code" : "33863-2",
        "display" : "Cystatin C [Mass/volume] in Serum, Plasma or Blood"
      },
      {
        "code" : "3084-1",
        "display" : "Uric acid [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "49154-8",
        "display" : "Uric acid [Mass/volume] in Blood"
      },
      {
        "code" : "17861-6",
        "display" : "Calcium [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2777-1",
        "display" : "Phosphate [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "30522-7",
        "display" : "C reactive protein [Mass/volume] in Serum or Plasma by High sensitivity method"
      },
      {
        "code" : "2428-1",
        "display" : "Homocysteine [Moles/volume] in Serum or Plasma"
      },
      {
        "code" : "1920-8",
        "display" : "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
      },
      {
        "code" : "14409-7",
        "display" : "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma by UV with P5P"
      },
      {
        "code" : "1742-6",
        "display" : "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
      },
      {
        "code" : "14390-9",
        "display" : "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma by UV with P5P"
      },
      {
        "code" : "6768-6",
        "display" : "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
      },
      {
        "code" : "1783-0",
        "display" : "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
      },
      {
        "code" : "2324-2",
        "display" : "Gamma glutamyltransferase [Enzymatic activity/volume] in Serum or Plasma"
      },
      {
        "code" : "1975-2",
        "display" : "Bilirubin.total [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "1968-7",
        "display" : "Bilirubin.direct [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "1751-7",
        "display" : "Albumin [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2885-2",
        "display" : "Protein [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "10834-0",
        "display" : "Globulin [Mass/volume] in Serum or Plasma by calculation"
      },
      {
        "code" : "1759-0",
        "display" : "Albumin/Globulin [Mass Ratio] in Serum or Plasma"
      },
      {
        "code" : "2532-0",
        "display" : "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"
      },
      {
        "code" : "1798-8",
        "display" : "Amylase [Enzymatic activity/volume] in Serum or Plasma"
      },
      {
        "code" : "3040-3",
        "display" : "Lipase [Enzymatic activity/volume] in Serum or Plasma"
      },
      {
        "code" : "2093-3",
        "display" : "Cholesterol [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "35200-5",
        "display" : "Cholesterol [Mass/volume] in Blood"
      },
      {
        "code" : "2571-8",
        "display" : "Triglyceride [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "3043-7",
        "display" : "Triglyceride [Mass/volume] in Blood"
      },
      {
        "code" : "2085-9",
        "display" : "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "3048-6",
        "display" : "Cholesterol in HDL [Mass/volume] in Blood"
      },
      {
        "code" : "13457-7",
        "display" : "Cholesterol in LDL [Mass/volume] in Serum or Plasma by calculation"
      },
      {
        "code" : "18262-6",
        "display" : "Cholesterol in LDL [Mass/volume] in Serum or Plasma by Direct assay"
      },
      {
        "code" : "46986-6",
        "display" : "Cholesterol in VLDL [Mass/volume] in Serum or Plasma by calculation"
      },
      {
        "code" : "9830-1",
        "display" : "Cholesterol/Cholesterol in HDL [Mass Ratio] in Serum or Plasma"
      },
      {
        "code" : "11580-8",
        "display" : "Thyrotropin [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "3016-3",
        "display" : "Thyrotropin [Units/volume] in Serum or Plasma by 3rd IS"
      },
      {
        "code" : "3024-7",
        "display" : "Thyroxine (T4) free [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "3051-0",
        "display" : "Triiodothyronine (T3) free [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "3026-2",
        "display" : "Thyroxine (T4) total [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "3053-6",
        "display" : "Triiodothyronine (T3) total [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "8099-4",
        "display" : "Thyroid peroxidase Ab [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "62292-8",
        "display" : "25-hydroxyvitamin D3 [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2132-9",
        "display" : "Cobalamin (Vitamin B12) [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2284-8",
        "display" : "Folate [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "19177-5",
        "display" : "Alpha-1-fetoprotein [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2039-6",
        "display" : "Carcinoembryonic Ag [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2857-1",
        "display" : "Prostate specific Ag [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "19199-9",
        "display" : "Prostate specific Ag [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "10886-0",
        "display" : "Prostate specific Ag.free [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "97149-9",
        "display" : "[-2]pro-prostate specific antigen [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "97150-7",
        "display" : "Prostate Health Index in Serum or Plasma"
      },
      {
        "code" : "10334-1",
        "display" : "Cancer Ag 125 [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "83085-1",
        "display" : "Cancer Ag 125 [Units/volume] in Serum or Plasma by Immunoassay"
      },
      {
        "code" : "24108-3",
        "display" : "Cancer Ag 19-9 [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "83083-6",
        "display" : "Cancer Ag 15-3 [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "9679-2",
        "display" : "Squamous cell carcinoma Ag [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "9633-9",
        "display" : "Epstein Barr virus VCA IgA Ab [Presence] in Serum"
      },
      {
        "code" : "5196-1",
        "display" : "Hepatitis B virus surface Ag [Presence] in Serum"
      },
      {
        "code" : "22326-3",
        "display" : "Hepatitis B virus surface Ag [Presence] in Serum or Plasma"
      },
      {
        "code" : "22322-2",
        "display" : "Hepatitis B virus surface Ab [Units/volume] in Serum"
      },
      {
        "code" : "13955-0",
        "display" : "Hepatitis C virus Ab [Presence] in Serum or Plasma"
      },
      {
        "code" : "47365-2",
        "display" : "Hepatitis C virus Ab [Presence] in Blood"
      },
      {
        "code" : "20507-0",
        "display" : "Reagin Ab [Presence] in Serum by RPR"
      },
      {
        "code" : "24110-9",
        "display" : "Treponema pallidum Ab [Presence] in Serum by Immunoassay"
      },
      {
        "code" : "56888-1",
        "display" : "HIV 1 and 2 Ag and Ab panel [Presence] in Serum or Plasma"
      },
      {
        "code" : "5176-3",
        "display" : "Helicobacter pylori IgG Ab [Presence] in Serum"
      },
      {
        "code" : "17780-8",
        "display" : "Helicobacter pylori Ag [Presence] in Stool"
      },
      {
        "code" : "29771-3",
        "display" : "Hemoglobin.occult [Mass/volume] in Stool by Immunochemical method"
      },
      {
        "code" : "21440-3",
        "display" : "Human papilloma virus 16+18+31+33+35+45+51+52+56 DNA [Presence] in Cervix by Probe"
      },
      {
        "code" : "5803-2",
        "display" : "pH of Urine by Test strip"
      },
      {
        "code" : "5804-0",
        "display" : "Protein [Presence] in Urine by Test strip"
      },
      {
        "code" : "2888-6",
        "display" : "Protein [Mass/volume] in Urine"
      },
      {
        "code" : "5792-7",
        "display" : "Glucose [Presence] in Urine by Test strip"
      },
      {
        "code" : "5794-3",
        "display" : "Hemoglobin [Presence] in Urine by Test strip"
      },
      {
        "code" : "5797-6",
        "display" : "Ketones [Presence] in Urine by Test strip"
      },
      {
        "code" : "5802-4",
        "display" : "Nitrite [Presence] in Urine by Test strip"
      },
      {
        "code" : "5770-3",
        "display" : "Bilirubin [Presence] in Urine by Test strip"
      },
      {
        "code" : "13658-0",
        "display" : "Urobilinogen [Presence] in Urine by Test strip"
      },
      {
        "code" : "5810-7",
        "display" : "Specific gravity of Urine"
      },
      {
        "code" : "5799-2",
        "display" : "Leukocyte esterase [Presence] in Urine by Test strip"
      },
      {
        "code" : "13945-1",
        "display" : "Erythrocytes [#/area] in Urine sediment by Microscopy high power field"
      },
      {
        "code" : "5821-4",
        "display" : "Leukocytes [#/area] in Urine sediment by Microscopy high power field"
      },
      {
        "code" : "11277-1",
        "display" : "Epithelial cells.squamous [#/area] in Urine sediment by Microscopy high power field"
      },
      {
        "code" : "5796-8",
        "display" : "Hyaline casts [#/area] in Urine sediment by Microscopy low power field"
      },
      {
        "code" : "25145-4",
        "display" : "Bacteria [Presence] in Urine sediment by Light microscopy"
      },
      {
        "code" : "10835-7",
        "display" : "Lipoprotein A [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "1869-7",
        "display" : "Apolipoprotein A-I [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "1884-6",
        "display" : "Apolipoprotein B [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "33762-6",
        "display" : "Natriuretic peptide.proB-type N-terminal [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "42254-3",
        "display" : "Nuclear Ab [Presence] in Serum by Immunofluorescence"
      },
      {
        "code" : "11572-5",
        "display" : "Rheumatoid factor [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "1988-5",
        "display" : "C reactive protein [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "13705-9",
        "display" : "Albumin/Creatinine [Mass Ratio] in Urine"
      },
      {
        "code" : "14957-5",
        "display" : "Microalbumin [Mass/volume] in Urine"
      },
      {
        "code" : "2161-8",
        "display" : "Creatinine [Mass/volume] in Urine"
      },
      {
        "code" : "4588-0",
        "display" : "Hemoglobin H/Hemoglobin.total in Blood"
      },
      {
        "code" : "25390-6",
        "display" : "CYFRA 21-1 [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "19876-2",
        "display" : "Forced vital capacity [Volume] in Airways by Spirometry"
      },
      {
        "code" : "19868-9",
        "display" : "Forced expiratory volume in 1 second"
      },
      {
        "code" : "19926-5",
        "display" : "Forced expiratory volume in 1 second/Forced vital capacity [Volume Ratio] in Airways by Spirometry"
      },
      {
        "code" : "79880-1",
        "display" : "Vision test panel"
      },
      {
        "code" : "89015-2",
        "display" : "Pure tone threshold audiometry panel"
      }]
    }]
  }
}

```
