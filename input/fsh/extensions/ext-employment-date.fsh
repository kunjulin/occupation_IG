Extension: ExtEmploymentDate
Id: ext-employment-date
Title: "受僱日期擴充"
Description: "記錄受檢勞工於事業單位之受僱日期。"
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only date
