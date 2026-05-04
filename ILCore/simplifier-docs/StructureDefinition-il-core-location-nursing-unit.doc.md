# ILCore Location Nursing Unit
ILCore profile for nursing unit locations.

## Canonical
[http://fhir.health.gov.il/StructureDefinition/il-core-location-nursing-unit](http://fhir.health.gov.il/StructureDefinition/il-core-location-nursing-unit)

## Guidance
- Use for nursing unit locations referenced from inpatient encounters.
- Inherits ILCore Location constraints.
- `type` is sliced and fixed to two required codings:
  - `type[nursing-unit] = il-core-location-physical-type#hospital-nursing-unit`
  - `type[hospital-unit] = v3-RoleCode#HU`
- This profile identifies the referenced Location resource as a nursing unit by `Location.type`.
- This is distinct from the Encounter-level marker: `Encounter.location.physicalType` identifies the nursing-unit slice within the Encounter.
