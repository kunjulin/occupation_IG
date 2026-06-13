Extension: ExtCessationDuration
Id: ext-cessation-duration
Title: "戒除時間（戒菸/戒檳榔月數）擴充"
Description: "記錄受檢者已戒菸或已戒檳榔的月數。"
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only integer
