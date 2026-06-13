Profile: OHEServiceRequestProfile
Parent: TWCoreServiceRequest
Id: OHE-ServiceRequest
Title: "勞工健檢追蹤檢查要求 Profile"
Description: "針對第三級或需要追蹤之勞工，醫師開立之追蹤檢查或現場評估排程要求，繼承自 TW Core ServiceRequest。"
* subject only Reference(OHEPatientProfile)
* requester only Reference(OHEPractitionerProfile or OHEOrganizationFacilityProfile)
