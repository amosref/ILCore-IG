# IL Core Diagnosis Role CodeSystem
Additional diagnosis role codes used with diagnosis role elements in IL Core clinical contexts.

## Canonical
[http://fhir.health.gov.il/cs/il-core-diagnosis-role](http://fhir.health.gov.il/cs/il-core-diagnosis-role)

## See also
- [IL Core Diagnosis Role ValueSet](./ValueSet-il-core-diagnosis-role.doc.md)

## Diagnosis roles
This code system adds IL Core diagnosis roles (primary and secondary) used alongside HL7 diagnosis roles. It is intended for diagnosis role elements such as `Encounter.diagnosis.use`, `EpisodeOfCare.diagnosis.role`, and other compatible contexts.

## Codes
- `primary-diagnosis` Primary diagnosis for the relevant clinical context.
- `secondary-diagnosis` Secondary diagnosis for the relevant clinical context.
