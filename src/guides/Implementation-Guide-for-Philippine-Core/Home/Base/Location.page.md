---
canonical: https://example.org/fhir/StructureDefinition/PH_Location
expand: 2
---

# {{page-title}}

Details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated.


## Scope and Usage

A Location includes both incidental locations (a place which is used for healthcare without prior designation or authorization) and dedicated, formally appointed locations. Locations may be private, public, mobile or fixed and scale from small freezers to full hospital buildings or parking garages.

Examples of Locations are:

- Building, ward, corridor, room or bed
- Mobile Clinic
- Freezer, incubator
- Vehicle or lift
- Home, shed, or a garage
- Road, parking place, a park
- Ambulance (generic)
- Ambulance (specific)
- Patient's Home (generic)
- Jurisdiction

These locations are not intended to cover locations on a patient where something occurred (i.e. a patient's broken leg), but can happily cover the location where the patient broke the leg (the playground)

## Resource content

These are different views on this resource:

<tabs>
<tab title="Overview">
	This is the tree view:
	{{tree, buttons}}
</tab>
<tab title="Detailed view">
	This is the detailed view:
	{{dict}}
</tab>
<tab title="XML">
	This is the resource in XML:
	{{xml}}
</tab>
<tab title="JSON">	
	This is the resource in JSON:
	{{json}}
</tab>
<tab title="Link">
	{{link}}
</tab>
</tabs>

## Extensions

## Default Search Parameters for Location Resource

| **Search Parameter**      | **Type**       | **Description**                                                                 |
|---------------------------|----------------|---------------------------------------------------------------------------------|
| **_id**                   | Token          | Logical ID of the resource.                                                    |
| **_lastUpdated**           | Date/DateTime  | When the resource was last updated.                                            |
| **address**               | String         | A portion of the location’s address.                                           |
| **address-city**          | String         | A city specified in an address.                                                |
| **address-country**       | String         | A country specified in an address.                                             |
| **address-postalcode**    | String         | A postal code specified in an address.                                         |
| **address-state**         | String         | A state specified in an address.                                               |
| **address-use**           | Token          | A use code for an address (e.g., home, work).                                  |
| **endpoint**              | Reference      | Technical endpoints providing services at this location.                       |
| **identifier**            | Token          | An identifier for the location.                                                |
| **name**                  | String         | A portion of the location’s name.                                              |
| **near**                  | Special        | The geo-coordinates to find locations near a specific point.                   |
| **near-distance**         | Quantity       | A distance from the geo-coordinates specified in `near`.                       |
| **organization**          | Reference      | The organization responsible for this location.                                |
| **partof**                | Reference      | The parent location of the specified location.                                 |
| **status**                | Token          | The operational status of the location (e.g., active, suspended).              |
| **type**                  | Token          | The type of location (e.g., hospital, clinic).                                 |

---

## Notes
- These parameters are case-sensitive as per FHIR's rules.
- Additional custom search parameters may be defined depending on the implementation.
- Some parameters allow modifiers (e.g., `:exact`, `:contains`) for more advanced queries.
- Replace `[base]` with your FHIR server's base URL when constructing API calls.
