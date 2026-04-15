ValueSet: ObservationMethod
Id: ObservationMethod
Title: "Observation Method Value Set"
Description: "A value set representing observation methods such as modes of transportation."
* ^url = "http://example.org/fhir/ValueSet/ObservationMethod"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "Your Organization Name"
* $ObservationMethodCodeSystem#Airline "Airline"
* $ObservationMethodCodeSystem#SeaVessel "Sea vessel"
* $ObservationMethodCodeSystem#BusLine "Bus line"
* $ObservationMethodCodeSystem#Train "Train"