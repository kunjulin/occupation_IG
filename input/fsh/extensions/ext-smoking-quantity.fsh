Extension: ExtSmokingQuantity
Id: ext-smoking-quantity
Title: "吸菸量及菸齡擴充"
Description: "記錄每日吸菸支數與吸菸年數。"
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* extension contains
    dailyAmount 1..1 and
    durationYears 1..1
* extension[dailyAmount].value[x] only integer
* extension[durationYears].value[x] only integer
