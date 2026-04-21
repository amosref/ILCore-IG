Profile: ILCoreLocationNursingUnit
Parent: ILCoreLocation
Id: il-core-location-nursing-unit
Title: "ILCore Location Nursing Unit Profile"
Description: "Israel Core constraints for nursing unit locations"

* ^url = $ILLocationNursingUnit
* insert ConformanceMetadata
* ^status = #draft

* type 1..1
// * type = $il-core-hospital-nursing-unit#il-core-hospital-nursing-unit "Hospital nursing unit" //delete once CS is removed
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "system"
* type ^slicing.rules = #open
* type contains hospital-unit 1..1 and nursing-unit 1..1
* type[nursing-unit].system = $il-core-location-physical-type (exactly)
* type[nursing-unit].code = #hospital-nursing-unit (exactly)
* type[nursing-unit].display = "Hospital nursing unit" (exactly)
* type[hospital-unit].system = "http://hl7.org/fhir/ValueSet/location-physical-type" (exactly)
* type[hospital-unit].code = #HU (exactly)
* type[hospital-unit].display = "Hospital unit" (exactly)
* type ^short = "Hospital nursing unit"
* type ^definition = "Fixed to the IL Core hospital nursing unit code."
* mode = #kind
