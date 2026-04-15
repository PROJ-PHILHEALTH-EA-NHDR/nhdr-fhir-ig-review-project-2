## {{page-title}}

The National Health Data Repository Framework (NHDR) is a comprehensive architecture developed to manage, integrate, and govern health data across the Philippines, supporting the Universal Health Care (UHC) Act. It outlines the necessary legal, technical, and operational components to build a unified, secure, and interoperable health data system. This framework aims to ensure seamless data submission, sharing, and access for health-related entities such as public and private healthcare providers, government agencies, and insurance companies. Key principles include data protection, privacy, compliance with national standards, and improving accessibility to healthcare data for both providers and patients.

### Key Elements of the Framework:

1. **Legal Foundation**: The NHDR is mandated under the Universal Health Care Act (RA 11223) and its implementing rules and regulations (IRR). It legally obligates all health-related entities to submit various forms of health data, ensuring that information is centralized in a national repository. This repository will be used for health policy planning, decision-making, and performance monitoring, requiring strict adherence to legal and ethical standards, including the Data Privacy Act of 2012.

2. **Vision and Objectives**: The NHDR envisions a unified data system that transforms how health data is collected, processed, and utilized. Its objectives are to address inefficiencies in data generation, ensure real-time access to health data, improve health system performance, and support national health programs such as disease monitoring and universal health coverage. The NHDR will act as the single source of truth for health data, driving evidence-informed decision-making.

3. **Data Management and Sources**: Health and health-related data are broad categories that include administrative, medical, pharmaceutical, and health financing data. Sources range from national health institutions, insurance providers, and government agencies to private healthcare facilities. The goal is to eliminate redundant data collection and ensure that the NHDR becomes a streamlined and singular point of submission for all health data.

4. **Architectural Components**: The NHDR comprises three main architectural components: the **data storage** component for secure data housing, the **compute services** component for processing data and managing user accounts, and the **client services** component, which includes applications and services for data access and interaction. These components work together to facilitate data submission, secure data sharing, and system interoperability.

5. **Interoperability and Standards**: Central to the NHDR’s success is the establishment of national health data standards that ensure interoperability between different healthcare systems. This allows for seamless data exchange across health entities, enabling an integrated national digital health ecosystem. Standards compliance will be regularly validated to ensure consistent and accurate data reporting.

6. **Building Blocks for NHDR**: The framework identifies several key building blocks, including leadership and governance, legislation and policy compliance, investment strategies for sustainability, standards for interoperability, and human resources. These are crucial for creating an environment where the NHDR can thrive and deliver on its objectives.

7. **Governance and Compliance**: PhilHealth is tasked with overseeing the NHDR, acting as the central data controller responsible for compliance with laws related to data protection, privacy, and data submission. Governance also involves coordination between the Department of Health (DOH), PhilHealth, and the Department of Information and Communications Technology (DICT) to ensure that data is collected and used ethically.

8. **Health and Health-Related Data**: The NHDR requires the submission of a wide range of health-related data, including clinical records, health financing information, public health data, and more. These data sources will be used to generate insights for national health programs, disease monitoring, resource planning, and policy development. By centralizing this information, the NHDR aims to improve decision-making processes across the health sector.

9. **Phased Implementation**: The NHDR will be implemented in phases, starting with setting national standards and building the NHDR model. The first phase focuses on developing electronic medical record (EMR) standards, followed by scaling up the NHDR system to integrate various health data systems and applications. The framework also includes risk management and monitoring strategies to ensure smooth implementation.

10. **Outcomes and Benefits**: The NHDR is expected to lead to significant improvements in healthcare delivery. For patients, this means better access to health information and more coordinated care. For healthcare providers, the NHDR will improve data access at the point of care, facilitating better decision-making. For policymakers, the system will provide reliable data for health planning, disease control, and resource allocation. Ultimately, the NHDR aims to strengthen the Philippine health system and support the achievement of universal health coverage.

In summary, the NHDR Framework is a transformative initiative aimed at improving the way health data is managed, accessed, and used in the Philippines. By integrating multiple data sources and ensuring interoperability, the framework aims to enhance the overall efficiency of the health system, contribute to better health outcomes, and promote the goals of Universal Health Care.

The **Architectural Components** of the NHDR are designed to create a robust infrastructure that ensures the efficient collection, processing, sharing, and storage of health data. The architecture is composed of three primary layers:

1. **Data Storage Component**: This is the physical repository for health and health-related data, ensuring secure and reliable storage of information. It serves as the foundation for the NHDR, supporting other components with structured and unstructured data storage solutions.

2. **Compute Services Component**: This layer is responsible for the computational functions required for data management, access, and analysis. It includes:
   - **Application Management**: Manages the lifecycle of systems, from development to implementation and maintenance.
   - **Business Intelligence and Analytics**: Provides tools for data analysis and decision-making by identifying trends and patterns from large datasets.
   - **Security Management**: Enforces data security across all levels, ensuring compliance with national data protection regulations.
   - **User Account Management**: Controls access rights based on user roles and ensures compliance with data governance policies.
   - **Data Warehouse Management**: Houses historical data and transforms it into usable formats for decision-makers, using Online Analytical Processing (OLAP) to analyze large datasets.
   - **Operational Database Management**: Designed for real-time data submission and processing using Online Transactional Processing (OLTP) systems.
   - **Network/Connectivity Management**: Ensures that the system is well-connected to support data sharing and accessibility.

3. **Client Services Component**: This is the user-facing layer, providing interfaces for data submission, retrieval, and analytics. Key features include:
   - **Dataset Submission**: Allows health entities to submit their data securely.
   - **Business Intelligence and Analytics**: Offers users tools for generating actionable insights from the NHDR.
   - **Data Access Request**: Facilitates authorized access to health data for various stakeholders, including healthcare providers, patients, and researchers.
   - **eHealth Services and Applications**: Includes systems for managing health services, such as electronic prescriptions and alerts monitoring.
   - **Open Data**: Provides publicly accessible datasets, supporting research and policy-making.

### Standards and Interoperability:
The **Standards and Interoperability** component is crucial to ensure that health data can be shared seamlessly across different systems and institutions. This includes the adoption of **national health data standards** for both data formats and terminology, enabling the exchange of accurate and consistent information. These standards cover everything from data codes to formats for electronic medical records (EMR), prescriptions, and laboratory results. Interoperability ensures that all systems, regardless of vendor or origin, can communicate effectively with one another, reducing redundancy and improving data quality.

The **Interoperability Layer** is essential for ensuring that health systems across the country can communicate with each other, facilitating the exchange of information among public and private healthcare providers. This layer enables data sharing in real-time, ensuring that all health-related entities comply with established standards, such as those set forth by the Department of Health (DOH), PhilHealth, and other relevant stakeholders.

### Standards Compliance and Validation:
Ensuring conformance to health data standards is critical for maintaining data integrity and interoperability. The framework includes mechanisms for standards conformance and interoperability validation, where systems and datasets are checked for compliance with national health data standards. This validation process ensures that health information systems can exchange data accurately and reliably across all health service providers and insurers in the Philippines. It also ensures adherence to international standards and best practices, making the Philippine health information ecosystem more robust and efficient.


The **Philippine Core Data for Interoperability (PHCDI)** serves as the foundation the development of a national FHIR Implementation Guide within the Philippines. Each release of the PCDI reflects changes in health data standards, local needs, and feedback from the Philippine healthcare community. As with other national standards, these updates are part of an evolving framework designed to ensure interoperability and enhance the exchange of critical health information across systems. The **PHCDI** draws from global best practices, such as those established by HL7® and the international FHIR® community, while tailoring solutions to meet the specific needs of the Philippine healthcare ecosystem.

The development of **PHCDI** benefits from testing and guidance by experts in healthcare data interoperability, with input from various stakeholders, including local health organizations, policy experts, and technical implementers. This collaboration lays the groundwork for establishing profile design, interactions, and requirements that enable access to patient data while ensuring alignment with existing standards and regulatory frameworks. Under the leadership of the Department of Health and in collaboration with national health information systems, the content will continue to evolve in future versions to meet the changing needs of healthcare in the Philippines.

The **PHCDI Implementation Guide** is based on FHIR Version R4, defining the minimum constraints required to create the **PHCDI Profiles**. It specifies the elements, extensions, vocabularies, and value sets that SHALL be present and details how they should be used in real-world implementations. Moreover, it outlines the minimum FHIR RESTful interactions necessary for PHCDI Profiles to access patient data, helping to establish a "floor" of standards that promotes interoperability and broad adoption. This foundational approach enables further standards development tailored to specific use cases in the Philippine healthcare environment.

There are two main approaches for implementing **PHCDI**:

1. **Profile-Only Support**: Systems may implement only the PHCDI Profiles to represent clinical information.
2. **Profile + Interaction Support**: Systems may implement both the PHCDI Profile content structure and the corresponding RESTful interactions defined for each resource.

For more details on these implementation approaches, the **Conformance Requirements** section of the guide provides in-depth guidance.

### Background
The initial requirements for **PHCDI** were modeled after global FHIR initiatives, such as the U.S. Core Data for Interoperability (USCDI) and the Argonaut Project, but were tailored to the specific needs of the Philippine healthcare system. These requirements were designed to ensure that national healthcare data exchange is both secure and efficient, enabling broad access to patient records in compliance with Philippine regulations.

PHCDI DEVELOPMENT TIMELINE

- 1st -3rd Quarter of 2022-Initial Formulation of the Master Reference Data
- 4 th Quarter of 2022 – combination of all data indicators based on the available forms
and Joint Administrative Order (JAO) between DOH and PhilHealth about mandatory
datasets.
- May 30-31, 2023 – NHDR Team attended the Basic training on FHIR led by UP SiLab.
- August 30, 2023 – NHDR Team attended Advanced training on FHIR led by UP SiLab.
- 3rd Quarter of 2023 – Initial mapping activity (Claims Form 1-4, Konsulta, Disease
Surveillance).
- 4 th Quarter of 2023 to January 2024 - Conducted the Review of Claims Form FHIR
Mapping Activity with UP SiLab
- January 10, 2024 – FHIR Alignment of Claims Form 1 – 4 with PhilHealth Internals
(ITMD, IPPSD, PMT-Claims, PMT-PCPN, PMT-PC, ISMD, PMO-PIMS)
- 1 st Quarter of 2024 – Mapping Review and Finalization of Philippine FHIR Profile with
the EA-NHDR Team.
- April 2024 – Conducted FHIR EHR Workshop with DOH (Presentation of Philippine
FHIR Profile and finalization of mandatory data sets for the 1 st release)
- May 28, 2024 – Endorsement of PHCDI release 01 to the Stakeholders.
- 4 th Quarter of 2024 – Launching of PHCDI


### Minimum Expectations for FHIR Resources: 
PHCDI sets out the minimum requirements for the use of FHIR resources. This includes defining the core data elements that must be supported by healthcare systems to ensure conformance and interoperability. By setting these minimum expectations, PH CDI helps to standardize the way health data is recorded, updated, searched, and retrieved.

## Components of PHCDI
### Data Model
The data model specified by PHCDI defines the structure and relationships of the core digital health and administrative information that healthcare systems must handle. Key components include:

#### Patient Demographics: 
Basic information about patients, such as name, age, gender, and contact details.
#### Clinical Data: 
Information related to patient diagnoses, treatments, lab results, and medications.
#### Administrative Data: 
Details about healthcare providers, facilities, and administrative transactions.

### RESTful API Interactions
PHCDI outlines the RESTful API interactions necessary for systems to communicate effectively. RESTful APIs use standard HTTP methods (GET, POST, PUT, DELETE) to perform operations on resources. The interactions defined by PH CDI include:

#### Record: 
Systems must be able to create and store new records of core digital health and administrative information.

#### Update: 
Systems must support the updating of existing records to reflect new or corrected information.

#### Search: 
Systems must provide functionality to search for records based on various criteria, such as patient name, diagnosis, or treatment date.
#### Retrieve: 
Systems must be able to retrieve records and present the information in a standardized format.


## PHCDI and Its Basis on Philippine Base Representations

The PHCDI is built upon the foundation of Philippine Base representations, which serve as the fundamental templates for defining specific FHIR profiles. These profiles specify the FHIR resources that health information systems in the Philippines must support. The development of these profiles involves:

### Identifying Essential Elements: 
Key data elements that must be included in each FHIR resource are defined. This ensures that critical information is captured consistently across all systems.

### Defining Extensions: 
Extensions allow for the inclusion of additional information that is not part of the standard FHIR specification. The Philippine Core identifies necessary extensions to accommodate local needs and contexts.

### Establishing Vocabularies and Value Sets: 
Standardized vocabularies and value sets are crucial for ensuring consistent data entry and interpretation. The Philippine Core specifies the vocabularies and value sets that must be used.


## Promoting Interoperability and Adoption

The Philippine Core aims to foster widespread interoperability and adoption of FHIR standards through:

- Common Implementation: By providing a standardized approach to implementing FHIR, the Philippine Core ensures that different systems can interoperate seamlessly.

- Building on Existing Standards: The Philippine Core is designed to be extensible and adaptable, allowing it to be built on top of other standards development efforts tailored to specific use cases.

## Usage
Philippine Core is particularly useful in defining:

- A Testable Level of System Conformance: Philippine Core sets clear and measurable standards that systems must meet to be considered conformant. This ensures that any system claiming to comply with Philippine Core can be rigorously tested and validated against these standards, promoting reliability and consistency across implementations.

- Assumed Support by Client Applications: By adhering to Philippine Core, client applications can assume a baseline level of functionality and data representation. This means that developers can build applications with the confidence that essential capabilities and data structures will be uniformly supported across different systems.

- As the Basis of Downstream Implementation Guides: Philippine Core serves as a foundational framework upon which more specialized implementation guides can be built. These downstream guides can address specific use cases, sectors, or regions within the Philippines, all while maintaining compatibility with the core standards established by Philippine Core.

- Assuming capabilities defined in Philippine Core are implemented allows specifications, applications, and business logic to be developed generally with confidence that systems can readily supply this capability. This fosters a robust ecosystem where interoperability and seamless data exchange are achievable goals, enhancing the overall efficiency and effectiveness of digital health solutions.

- This document is a working specification that may be directly implemented by FHIR®© system producers. It provides a practical and actionable guide for developers and system integrators, ensuring that the core principles and standards of Philippine Core are embedded in their systems from the outset.

- FHIR®© Connectathon Events: These events are key to the verification of the guide as being suitable for implementation. During connectathon events, developers and implementers come together to test and validate their systems against the Philippine Core specifications. These collaborative events are crucial for identifying potential issues, refining the standards, and ensuring that the implementation guide is practical and effective in real-world scenarios. This implementation guide will be used as the basis for Philippine connectathon events, driving continuous improvement and fostering a community of practice around FHIR®© standards in the Philippines.

## PHCDI Core Actors
The following actors are part of the Philippine Core Implementation Guide (IG):

### Philippine Core Requestor
An application that initiates a data access request to retrieve patient data. The Philippine Core Requestor is the client in a client-server interaction. The terms “requester,” “client,” and “app” are used interchangeably throughout this guide and are not meant to limit this actor to patient and provider apps. Payers and other users can use the same technology. Consider these terms as shorthand notation for a “user application.”

### Philippine Core Responder
A system that responds to the data access request by providing patient data. The Philippine Core Responder is the server in a client-server interaction. The terms “server,” “Philippine Core FHIR server,” “FHIR server,” and “EHR” are used interchangeably throughout this guide and are not meant to limit this actor to electronic health record systems. Health Information Exchanges (HIEs), care coordination platforms, population health systems, etc., can use the same technology. Consider these terms as shorthand notation for an “interoperable healthcare platform.”

By defining these actors, Philippine Core ensures clear roles and responsibilities within the FHIR ecosystem, promoting a standardized approach to data exchange and system interactions across various healthcare and administrative systems. This standardization supports robust interoperability and seamless integration, enhancing the overall efficiency and effectiveness of digital health solutions in the Philippines.

The MIME type for FHIR resources in this project is application/fhir+json; charset=utf-8.

It is assumed that the reader of this specification has the following knowledge:

- An overall understanding of the FHIR standard
- An overall knowledge of RESTful API architecture
- A basic understanding of National Health Data Repository