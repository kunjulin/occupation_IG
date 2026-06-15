Invariant: twha-obs-1
Description: "Observation 必須包含測量值 (value) 或資料缺失原因 (dataAbsentReason) 或分項測量值 (component)"
Expression: "value.exists() or dataAbsentReason.exists() or component.exists()"
Severity: #error
