Profile: ILCoreLocationNursingUnit
Parent: ILCoreLocation
Id: il-core-location-nursing-unit
Title: "ILCore Location Nursing Unit Profile"
Description: "Israel Core constraints for nursing unit locations"

* ^url = $ILLocationNursingUnit
* insert ConformanceMetadata
* ^status = #draft

* type 2..2
* type ^slicing.discriminator.type = #pattern
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open
* type contains
    nursing-unit 1..1 and
    hospital-unit 1..1
* type[nursing-unit] = $il-core-location-physical-type#hospital-nursing-unit "Hospital nursing unit"
* type[nursing-unit] ^short = "Hospital nursing unit"
* type[nursing-unit] ^definition = "Identifies the Location resource as a hospital nursing unit."
* type[hospital-unit] = $v3-RoleCode#HU "Hospital Unit"
* type[hospital-unit] ^short = "Hospital unit"
* type[hospital-unit] ^definition = "Provides the HL7 v3 RoleCode Hospital Unit classification to satisfy the extensible Location.type semantics."
