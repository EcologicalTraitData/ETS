# Ecological Traitdata Standard
Florian D. Schneider, Nadja K. Simons, Caterina Penone, Andreas Ostrowski  
12 Mai 2017  


**This is the documentation of the Ecological Traitdata Standard (ETS), version 0.4** 

This defined vocabulary aims at providing all essential columns for raw data of functional trait measurements for ecological research. Most terms relate to terms from the Darwin Core Standard and it's Extensions (terms of DWC are referenced thus in field 'Refines'; the full Darwin Core Standard can be found here: http://rs.tdwg.org/dwc/terms/index.htm)

The glossary of terms is ordered into a **core section** with essential columns for trait data, extensions which are allowing to provide additional layers of information, as well as a vocabulary for **metadata** information of particular importance for trait data. A final section provides defined terms for **lists of trait definitions**, also termed a Trait Thesaurus. 

## Extensions:

We provide three extensions of the vocabulary, that allow for additional information on the trait measurement. 

- the `Occurrence` extension contains information on the level of individual specimens, such as date and location and method of sampling and preservation, or physiological specifications of the phenotype, such as sex, life stage or age. 
- the `MeasurementOrFact` extension takes information at the level of single measurements or reported values, such as the original literature from where the value is cited, the method of measurement or statistical method of aggregation. 
- The `BiodiversityExploratories` extension provides columns for localisation for trait data from the Biodiversity Exploratories sites (www.biodiversity-exploratories.de). 

## Structure of trait data:

The traitdata standard implies that the trait data should be stored in a long table format containing one measurement per row described by the column terms provided in the core section. (see our Methods paper for further considerations on data structure and format). 

There are two ways of integrating the information provided by the extensions: 

- **within the same data file**: additional columns are provided to describe the properties concerning the measurement or the occurrence of the specimen. The output file may be stored as a csv or txt table or an excel spreadsheet.  
- **in separate data files**: the main file refers to additional data files in the fields `measurementID` or `occurrenceID`. This is usually the case if the occurrences are externally documented, for instance as specimens from a museum. This also applies if the data are stored as an Excel spreadsheet or as a Darwin Core Archive (as proposed for TraitBank).   

The R package 'traitdataform' (https://www.github.com/fdschneider/traitdataform) provides tools to transfer heterogeneous datasets into a longtable format and to create standardized taxa and trait columns, based on public ontologies. 

This list of terms will also be available as 

- a csv/txt/xlsx table file which will be provided for download on BExIS including full documentation in the metadata (for manual use, this may be uploaded to BExIs as soon it's ready), and
- a machine readable glossary of terms compliant with semantic web standards (OWL format) and accessible via an API (hosted on GFBio Terminology Server). 
 

## defined terms:

[**Traitdata**](http://ecologicaltraitdata.github.io/TraitDataStandard/#core-traitdata-columns )  
[`scientificName`](http://ecologicaltraitdata.github.io/TraitDataStandard/#scientificname)   |  [`traitName`](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitname)   |  [`traitID`](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitid)   |  [`traitValue`](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitvalue)   |  [`traitUnit`](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitunit)   |  [`scientificNameStd`](http://ecologicaltraitdata.github.io/TraitDataStandard/#scientificnamestd)   |  [`traitNameStd`](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitnamestd)   |  [`traitValueStd`](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitvaluestd)   |  [`traitUnitStd`](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitunitstd)   |  [`taxonRank`](http://ecologicaltraitdata.github.io/TraitDataStandard/#taxonrank)   |  [`kingdom`](http://ecologicaltraitdata.github.io/TraitDataStandard/#kingdom)   |  [`order`](http://ecologicaltraitdata.github.io/TraitDataStandard/#order)   |  [`taxonID`](http://ecologicaltraitdata.github.io/TraitDataStandard/#taxonid)   |  [`measurementID`](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementid)   |  [`occurrenceID`](http://ecologicaltraitdata.github.io/TraitDataStandard/#occurrenceid)   |  [`warnings`](http://ecologicaltraitdata.github.io/TraitDataStandard/#warnings)   |  
[**Extension: MeasurementOrFact**](http://ecologicaltraitdata.github.io/TraitDataStandard/#extension-measurement-or-fact )  
[`basisOfRecord`](http://ecologicaltraitdata.github.io/TraitDataStandard/#basisofrecord)   |  [`basisOfRecordDescription`](http://ecologicaltraitdata.github.io/TraitDataStandard/#basisofrecorddescription)   |  [`references`](http://ecologicaltraitdata.github.io/TraitDataStandard/#references)   |  [`measurementResolution`](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementresolution)   |  [`measurementMethod`](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementmethod)   |  [`measurementDeterminedBy`](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementdeterminedby)   |  [`measurementDeterminedDate`](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementdetermineddate)   |  [`measurementRemarks`](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementremarks)   |  [`aggregateMeasure`](http://ecologicaltraitdata.github.io/TraitDataStandard/#aggregatemeasure)   |  [`individualCount`](http://ecologicaltraitdata.github.io/TraitDataStandard/#individualcount)   |  [`dispersion`](http://ecologicaltraitdata.github.io/TraitDataStandard/#dispersion)   |  [`measurementValue_min`](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementvalue_min)   |  [`measurementValue_max`](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementvalue_max)   |  [`measurementAccuracy`](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementaccuracy)   |  [`statisticalMethod`](http://ecologicaltraitdata.github.io/TraitDataStandard/#statisticalmethod)   |  
[**Extension: Occurrence**](http://ecologicaltraitdata.github.io/TraitDataStandard/#extension-occurrence )  
[`sex`](http://ecologicaltraitdata.github.io/TraitDataStandard/#sex)   |  [`lifeStage`](http://ecologicaltraitdata.github.io/TraitDataStandard/#lifestage)   |  [`age`](http://ecologicaltraitdata.github.io/TraitDataStandard/#age)   |  [`morphotype`](http://ecologicaltraitdata.github.io/TraitDataStandard/#morphotype)   |  [`eventID`](http://ecologicaltraitdata.github.io/TraitDataStandard/#eventid)   |  [`preparations`](http://ecologicaltraitdata.github.io/TraitDataStandard/#preparations)   |  [`samplingProtocol`](http://ecologicaltraitdata.github.io/TraitDataStandard/#samplingprotocol)   |  [`year`](http://ecologicaltraitdata.github.io/TraitDataStandard/#year)   |  [`month`](http://ecologicaltraitdata.github.io/TraitDataStandard/#month)   |  [`day`](http://ecologicaltraitdata.github.io/TraitDataStandard/#day)   |  [`eventDate`](http://ecologicaltraitdata.github.io/TraitDataStandard/#eventdate)   |  [`locationID`](http://ecologicaltraitdata.github.io/TraitDataStandard/#locationid)   |  [`habitat`](http://ecologicaltraitdata.github.io/TraitDataStandard/#habitat)   |  [`decimalLongitude`](http://ecologicaltraitdata.github.io/TraitDataStandard/#decimallongitude)   |  [`decimalLatitude`](http://ecologicaltraitdata.github.io/TraitDataStandard/#decimallatitude)   |  [`elevation`](http://ecologicaltraitdata.github.io/TraitDataStandard/#elevation)   |  [`geodeticDatum`](http://ecologicaltraitdata.github.io/TraitDataStandard/#geodeticdatum)   |  [`verbatimLocality`](http://ecologicaltraitdata.github.io/TraitDataStandard/#verbatimlocality)   |  [`country`](http://ecologicaltraitdata.github.io/TraitDataStandard/#country)   |  [`countryCode`](http://ecologicaltraitdata.github.io/TraitDataStandard/#countrycode)   |  [`occurenceRemarks`](http://ecologicaltraitdata.github.io/TraitDataStandard/#occurenceremarks)   |  
[**Extension: BiodiversityExploratories**](http://ecologicaltraitdata.github.io/TraitDataStandard/#extension-biodiversity-exploratories )  
[`OriginExploratories`](http://ecologicaltraitdata.github.io/TraitDataStandard/#originexploratories)   |  [`ExploratoriesPlotID`](http://ecologicaltraitdata.github.io/TraitDataStandard/#exploratoriesplotid)   |  [`Exploratory`](http://ecologicaltraitdata.github.io/TraitDataStandard/#exploratory)   |  [`ExploType`](http://ecologicaltraitdata.github.io/TraitDataStandard/#explotype)   |  
[**Traitlist**](http://ecologicaltraitdata.github.io/TraitDataStandard/#terms-for-traitlists-a-trait-thesaurus )  
[`traitID`](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitid)   |  [`traitName`](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitname)   |  [`broaderTerm`](http://ecologicaltraitdata.github.io/TraitDataStandard/#broaderterm)   |  [`narrowerTerm`](http://ecologicaltraitdata.github.io/TraitDataStandard/#narrowerterm)   |  [`valueType`](http://ecologicaltraitdata.github.io/TraitDataStandard/#valuetype)   |  [`traitUnit`](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitunit)   |  [`factorLevels`](http://ecologicaltraitdata.github.io/TraitDataStandard/#factorlevels)   |  [`maxAllowedValue`](http://ecologicaltraitdata.github.io/TraitDataStandard/#maxallowedvalue)   |  [`minAllowedValue`](http://ecologicaltraitdata.github.io/TraitDataStandard/#minallowedvalue)   |  [`factorLevels`](http://ecologicaltraitdata.github.io/TraitDataStandard/#factorlevels)   |  [`traitDescription`](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitdescription)   |  [`Comments`](http://ecologicaltraitdata.github.io/TraitDataStandard/#comments)   |  [`relationSource`](http://ecologicaltraitdata.github.io/TraitDataStandard/#relationsource)   |  [`source`](http://ecologicaltraitdata.github.io/TraitDataStandard/#source)   |  
[**Metadata**](http://ecologicaltraitdata.github.io/TraitDataStandard/#metadata-vocabulary )  
[`rightsHolder`](http://ecologicaltraitdata.github.io/TraitDataStandard/#rightsholder)   |  [`bibliographicCitation`](http://ecologicaltraitdata.github.io/TraitDataStandard/#bibliographiccitation)   |  [`license`](http://ecologicaltraitdata.github.io/TraitDataStandard/#license)   |  [`datasetID`](http://ecologicaltraitdata.github.io/TraitDataStandard/#datasetid)   |  [`datasetName`](http://ecologicaltraitdata.github.io/TraitDataStandard/#datasetname)   |  [`author`](http://ecologicaltraitdata.github.io/TraitDataStandard/#author)   |  [`version`](http://ecologicaltraitdata.github.io/TraitDataStandard/#version)   |  

---

# Core traitdata columns

For the essential primary data (trait value, taxon assignment, trait name), the trait data standard recommends to report the original naming and value scheme as used by the data provider. However, to ensure compatibility with other datasets, the original data provider's information should be doubled into standardized columns indexed by appending `Std` to the column name. 
This ensures compatibility on the provider's side and transparency for data users on the reported measurements and facts, and enables checking for inconsistencies and misspellings in the complete dataset provided by the author. If provided, the standardized fields allow merging heterogeneous data sources into a single table to perform further analyses. This practice of double bookkeeping of trait data has successfully established for the TRY database on plant traits, for instance (Kattge ..). 

By linking to (public) ontologies via the field `taxonID`, further taxonomic information can be extracted for analysis. Alternatively, `taxonID` may also link to an accompanying datasheet that contains information on the taxonomic resolution or specification of the observation. 

Similarly, linking to trait terminologies (a 'Thesaurus') via the field `traitID` allows an unambiguous interpretation of the trait measurement. If no online ontology is available, an accompanying dataset should specify the trait definition. For setting up such a Thesaurus, we propose the use of terms provided in section 'Traitlist' below. 

## `scientificName`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#scientificname)

|             |scientificName                                                                                                           |
|:------------|:------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                |
|vocabulary   |                                                                                                                         |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#scientificname                                                   |
|Refines      |http://rs.tdwg.org/dwc/terms/scientificName                                                                              |
|Replaces     |NA                                                                                                                       |
|Version      |v0.3                                                                                                                     |
|DateIssued   |7/7/2017                                                                                                                 |
|DateModified |                                                                                                                         |
|Definition   |Original character string provided as species name by the data owner (kept for reference and continueity)                |
|Comment      |Can be equal to scientificNameStd. Authors may use abbreviations, or use underscores to separate genus and species name. |
## `traitName`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitname)

|             |traitName                                                                                                                                                     |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                     |
|vocabulary   |                                                                                                                                                              |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#traitname                                                                                             |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementType                                                                                                                  |
|Replaces     |NA                                                                                                                                                            |
|Version      |v0.3                                                                                                                                                          |
|DateIssued   |7/7/2017                                                                                                                                                      |
|DateModified |                                                                                                                                                              |
|Definition   |Name of the trait as used by the data provider (kept for compatibility on provider side).                                                                     |
|Comment      |This can be a short name or user defined coded trait name. However, it is recommended to provide definition of the user provided trait names in the metadata. |
## `traitID`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitid)

|             |traitID                                                                                 |
|:------------|:---------------------------------------------------------------------------------------|
|valueType    |factor                                                                                  |
|vocabulary   |                                                                                        |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#traitid                         |
|Refines      |                                                                                        |
|Replaces     |NA                                                                                      |
|Version      |v0.3                                                                                    |
|DateIssued   |7/7/2017                                                                                |
|DateModified |                                                                                        |
|Definition   |Unique identifier of the trait following a public or user-provided thesaurus of traits. |
|Comment      |                                                                                        |
## `traitValue`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitvalue)

|             |traitValue                                                                                                                                                                                   |
|:------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                    |
|vocabulary   |                                                                                                                                                                                             |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#traitvalue                                                                                                                           |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementValue                                                                                                                                                |
|Replaces     |NA                                                                                                                                                                                           |
|Version      |v0.3                                                                                                                                                                                         |
|DateIssued   |7/7/2017                                                                                                                                                                                     |
|DateModified |                                                                                                                                                                                             |
|Definition   |Measured raw value or factor level for this species trait as measured and provided by the author.                                                                                            |
|Comment      |Must respect the unit given in 'measurementUnit_user' for numerical traits. For categorical traits, the factor levels should be harmonized across the dataset and explained in the metadata. |
## `traitUnit`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitunit)

|             |traitUnit                                                                                                                                                                                                            |
|:------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                            |
|vocabulary   |                                                                                                                                                                                                                     |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#traitunit                                                                                                                                                    |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementUnit                                                                                                                                                                         |
|Replaces     |NA                                                                                                                                                                                                                   |
|Version      |v0.3                                                                                                                                                                                                                 |
|DateIssued   |7/7/2017                                                                                                                                                                                                             |
|DateModified |                                                                                                                                                                                                                     |
|Definition   |Reports the unit that the author's raw data were measured in, if applicable (only for numeric values). For unitless numerical values, use 'unitless' in this field. For factorial values, leave empty or provide NA. |
|Comment      |For numerical values report unit in format for lengths "mm", for volumes "mm3" / "mm^3", areas "mm2" / "mm^2", for movement "m/s", or for volume to surface ratios: "mm3/mm2"                                        |
## `scientificNameStd`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#scientificnamestd)

|             |scientificNameStd                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|:------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#scientificnamestd                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|Refines      |http://rs.tdwg.org/dwc/terms/scientificName                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|DateModified |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|Definition   |Full scientific name (with authorship and date information if known). It should be an accepted taxon name according to a published taxonomy (provided in taxonID).                                                                                                                                                                                                                                                                                                                                                                                                                  |
|Comment      |Provide reference taxonomy in metadata of the dataset. Examples: "Coleoptera" (order), "Vespertilionidae" (family), "Manis" (genus), "Ctenomys sociabilis" (genus + specificEpithet), "Ambystoma tigrinum diaboli" (genus + specificEpithet + infraspecificEpithet), "Roptrocerus typographi (Györfi, 1952)" (genus + specificEpithet + scientificNameAuthorship), "Quercus agrifolia var. oxyadenia (Torr.) J.T. Howell" (genus + specificEpithet + taxonRank + infraspecificEpithet + scientificNameAuthorship). For discussion see http://terms.tdwg.org/wiki/dwc:scientificName |
## `traitNameStd`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitnamestd)

|             |traitNameStd                                                                                                                                                        |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                                                                                              |
|vocabulary   |                                                                                                                                                                    |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#traitnamestd                                                                                                |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementType                                                                                                                        |
|Replaces     |NA                                                                                                                                                                  |
|Version      |v0.3                                                                                                                                                                |
|DateIssued   |7/7/2017                                                                                                                                                            |
|DateModified |                                                                                                                                                                    |
|Definition   |Descriptive Name of the trait reported. This should follow the controlled vocabulary of a thesaurus of traits available online or published along with the dataset. |
|Comment      |Accompanying this, the traitID should provide an unambiguous link to the trait definition in the thesaurus or supplementary dataset.                                |
## `traitValueStd`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitvaluestd)

|             |traitValueStd                                                                                                                                                                                         |
|:------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                             |
|vocabulary   |                                                                                                                                                                                                      |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#traitvaluestd                                                                                                                                 |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementValue                                                                                                                                                         |
|Replaces     |NA                                                                                                                                                                                                    |
|Version      |v0.3                                                                                                                                                                                                  |
|DateIssued   |7/7/2017                                                                                                                                                                                              |
|DateModified |                                                                                                                                                                                                      |
|Definition   |Standardised measured value or factor level for this species trait. Numerical values must use the correct unit. Factor levels  must be compliant with the thesaurus of traits.                        |
|Comment      |Using "." as a decimal separator! The standardized data values or factor levels must correspond to the expected units and factor levels of the trait thesaurus, e.g. "32.423", "female", "apter", "3" |
## `traitUnitStd`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitunitstd)

|             |traitUnitStd                                                                                                                                                                    |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                       |
|vocabulary   |                                                                                                                                                                                |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#traitunitstd                                                                                                            |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementUnit                                                                                                                                    |
|Replaces     |NA                                                                                                                                                                              |
|Version      |v0.3                                                                                                                                                                            |
|DateIssued   |7/7/2017                                                                                                                                                                        |
|DateModified |                                                                                                                                                                                |
|Definition   |The units associated with the measurementValue. The expected standard unit for this trait as defined in the traitlist/ thesaurus.                                               |
|Comment      |Recommended best practice is to use the International System of Units (SI).  Examples: "mm", "C", "km", "ha". For discussion see http://terms.tdwg.org/wiki/dwc:measurementUnit |
## `taxonRank`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#taxonrank)

|             |taxonRank                                                                                                                                                                                                                                                                                                                                                            |
|:------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                                                                                                                                                                                                                                                                                               |
|vocabulary   |domain; kingdom; subkingdom; superphylum; phylum; subphylum; superclass; class; subclass; supercohort; cohort; subcohort; superorder; order; subordern; infraorder; superfamily; family; subfamily; tribe; subtribe; genus; subgenus; section; subsection; series; subseries; speciesAggregate; species; subspecificAggregate; subspecies; variety; cultivar; strain |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#taxonrank                                                                                                                                                                                                                                                                                                    |
|Refines      |http://rs.tdwg.org/dwc/terms/taxonRank                                                                                                                                                                                                                                                                                                                               |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                                   |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                                                 |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                                             |
|DateModified |                                                                                                                                                                                                                                                                                                                                                                     |
|Definition   |The taxonomic rank of the most specific name in the scientificName. Recommended best practice is to use a controlled vocabulary.                                                                                                                                                                                                                                     |
|Comment      |This is to clarify cases where information is not given on a species level. Examples: "subspecies", "varietas", "forma", "species", "genus".                                                                                                                                                                                                                         |
## `kingdom`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#kingdom)

|             |kingdom                                                                                    |
|:------------|:------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                     |
|vocabulary   |                                                                                           |
|Identifier   |http://rs.tdwg.org/dwc/terms/kingdom                                                       |
|Refines      |                                                                                           |
|Replaces     |NA                                                                                         |
|Version      |v0.3                                                                                       |
|DateIssued   |7/7/2017                                                                                   |
|DateModified |                                                                                           |
|Definition   |The full scientific name of the kingdom in which the taxon is classified.                  |
|Comment      |Examples: "Animalia", "Plantae". For discussion see http://terms.tdwg.org/wiki/dwc:kingdom |
## `order`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#order)

|             |order                                                                                         |
|:------------|:---------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                        |
|vocabulary   |                                                                                              |
|Identifier   |http://rs.tdwg.org/dwc/terms/order                                                            |
|Refines      |                                                                                              |
|Replaces     |NA                                                                                            |
|Version      |                                                                                              |
|DateIssued   |10/17/2017                                                                                    |
|DateModified |                                                                                              |
|Definition   |The full scientific name of the order in which the taxon is classified.                       |
|Comment      |Examples: "Carnivora", "Monocleales". For discussion see http://terms.tdwg.org/wiki/dwc:order |
## `taxonID`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#taxonid)

|             |taxonID                                                                                                                                                                                                                            |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                                                                                                                                                             |
|vocabulary   |                                                                                                                                                                                                                                   |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#taxonid                                                                                                                                                                    |
|Refines      |http://rs.tdwg.org/dwc/terms/taxonID                                                                                                                                                                                               |
|Replaces     |NA                                                                                                                                                                                                                                 |
|Version      |v0.3                                                                                                                                                                                                                               |
|DateIssued   |7/7/2017                                                                                                                                                                                                                           |
|DateModified |                                                                                                                                                                                                                                   |
|Definition   |Verified name identifier  of the species or subspecies (or higher taxon) for which this value was collected. Each entry should link to a published reference species  list/taxonomy. Avoid synonyms.                               |
|Comment      |Examples: "GBIF Backbone Taxonomy:497924", "8fa58e08-08de-4ac1-b69c-1235340b7001", "32567", "http://species.gbif.org/abies_alba_1753", "urn:lsid:gbif.org:usages:32567". For discussion see http://terms.tdwg.org/wiki/dwc:taxonID |
## `measurementID`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementid)

|             |measurementID                                                                                                                                                                                                                                                                                                                                                              |
|:------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                                                                                                                                  |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                                           |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementid                                                                                                                                                                                                                                                                                                      |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementID                                                                                                                                                                                                                                                                                                                                 |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                                         |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                                                       |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                                                   |
|DateModified |                                                                                                                                                                                                                                                                                                                                                                           |
|Definition   |A unique, dataset-specific identifier. Links multi-value trait measurements, e.g. x-y-z coordinates of a morphometric landmark, biochemical compound quantities for different chainlengths. In this case, the trait names must specifiy the sub-measurement, e.g. "landmark32_x", and must be specified in a reference trait list, given in the field "measurementMethod". |
|Comment      |                                                                                                                                                                                                                                                                                                                                                                           |
## `occurrenceID`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#occurrenceid)

|             |occurrenceID                                                                                                                                                                                                                                                                                                                                                                                               |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                                                                                                                                                                  |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                                                                           |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#occurrenceid                                                                                                                                                                                                                                                                                                                                       |
|Refines      |http://rs.tdwg.org/dwc/terms/occurrenceID                                                                                                                                                                                                                                                                                                                                                                  |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                                                                         |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                                                                                       |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                                                                                   |
|DateModified |                                                                                                                                                                                                                                                                                                                                                                                                           |
|Definition   |A character string user defined by the data author.  It is recommended best practice to use a globally unique identifier, if available, e.g. a museum ID referring to the individual specimen from which the data were measured. usually does not apply for literature data.                                                                                                                               |
|Comment      |This is important for the analysis of co-variation of morphometric data or intraspecific variation. It may also couples multiple measurements on a single specimen, which also could be a leaf or a single bone without an assignment to an individual organism. If available, upload related dataset to describe specimens more precisely, e.g. environmental parameters or identity related information. |
## `warnings`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#warnings)

|             |warnings                                                                                                                                                                                                                                                                                                              |
|:------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                                                                             |
|vocabulary   |                                                                                                                                                                                                                                                                                                                      |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#warnings                                                                                                                                                                                                                                                      |
|Refines      |                                                                                                                                                                                                                                                                                                                      |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                    |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                  |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                              |
|DateModified |                                                                                                                                                                                                                                                                                                                      |
|Definition   |warnings from the R-script will be stored here, e.g. regarding a lack of match between the provided taxonID and the ontology, or the trait names or values, a mismatch in the units provided and the unit expected according to the trait table. User defined warnings and flags can be added as well, e.g. 'NOTUSE'. |
|Comment      |                                                                                                                                                                                                                                                                                                                      |

# Extension: Measurement or Fact 

This section provides additional information about a reported measurement or fact and in most cases can easily be included as extra columns to the core dataset. The columns would contain detail on the methodology of measuring and reporting of aggregated data. 

In case of facts reported from literature or from expert knowledge, or cited from other databases, please include bibliographic citation of the original data source in field 'references'. 

## `basisOfRecord`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#basisofrecord)

|             |basisOfRecord                                                                                                                                                                                                                            |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                                                                                                                                                                   |
|vocabulary   |LivingSpecimen; PreservedSpecimen; FossilSpecimen; literatureData; traitDatabase; expertKnowledge                                                                                                                                        |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#basisofrecord                                                                                                                                                                    |
|Refines      |http://rs.tdwg.org/dwc/terms/basisOfRecord                                                                                                                                                                                               |
|Replaces     |NA                                                                                                                                                                                                                                       |
|Version      |v0.3                                                                                                                                                                                                                                     |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                 |
|DateModified |                                                                                                                                                                                                                                         |
|Definition   |How and from which kind of specimen were the data obtained? Use of the controlled vocabulary is recommended.                                                                                                                             |
|Comment      |Options are: Taken by own measurement (distinguish LivingSpecimen, PreservedSpecimen, FossilSpecimen) or taken from literature (literatureData), from an existing trait database (traitDatabase), or expert knowledge (expertKnowledge). |
## `basisOfRecordDescription`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#basisofrecorddescription)

|             |basisOfRecordDescription                                                                                                                                                                                                                                                                                                          |
|:------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                                                                                         |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                  |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#basisofrecorddescription                                                                                                                                                                                                                                                  |
|Refines      |                                                                                                                                                                                                                                                                                                                                  |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                              |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                          |
|DateModified |                                                                                                                                                                                                                                                                                                                                  |
|Definition   |Adding more detail to the basisOfRecord.                                                                                                                                                                                                                                                                                          |
|Comment      |If life specimens were sampled, where did they come from? Have they been reared in cultivation? If literature data or online database, provide type of literature, e.g. textbook, website, URL, etc. If preserved specimens were used, which method of preservation? In case of expert knowledge, give the name of the authority. |
## `references`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#references)

|             |references                                                                                                                                                                                                                                                                                                                                               |
|:------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                                                                                                                |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                         |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#references                                                                                                                                                                                                                                                                                       |
|Refines      |http://purl.org/dc/terms/references                                                                                                                                                                                                                                                                                                                      |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                       |
|Version      |v0.4                                                                                                                                                                                                                                                                                                                                                     |
|DateIssued   |8/24/2017                                                                                                                                                                                                                                                                                                                                                |
|DateModified |                                                                                                                                                                                                                                                                                                                                                         |
|Definition   |Precise reference to the source. If literature data, this should quote the book or online database. If museum specimen, this should report the name of the collection. If expert knowledge, this should name the authority, preferrably using ORCID. If trait database, provide reference to the original publication, DOI or URL of the trait-database. |
|Comment      |Examples: "http://mvzarctos.berkeley.edu/guid/MVZ:Mamm:165861"; "http://www.catalogueoflife.org/annual-checklist/show_species_details.php?record_id=6197868". For discussion see http://terms.tdwg.org/wiki/dwc:references                                                                                                                               |
## `measurementResolution`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementresolution)

|             |measurementResolution                                                                                                                                                                                                                       |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                   |
|vocabulary   |                                                                                                                                                                                                                                            |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementResolution                                                                                                                                                               |
|Refines      |                                                                                                                                                                                                                                            |
|Replaces     |NA                                                                                                                                                                                                                                          |
|Version      |v0.3                                                                                                                                                                                                                                        |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                    |
|DateModified |                                                                                                                                                                                                                                            |
|Definition   |If the trait information was originally given on another taxonomic level than species. Applies mainly for literature and expert knowledge data. not applying for measured data. The hierarchical level to which the trait data would refer. |
|Comment      |For example, information given in literature could state 'most species in this genus are winged', but the trait data could be given for each species in this genus.                                                                         |
## `measurementMethod`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementmethod)

|             |measurementMethod                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementMethod                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementMethod                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|DateModified |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|Definition   |Applies primarily to measured data. The method, tools and scales used to measure a (numerical) trait value. A description of or reference to (publication, URI) the method or protocol used to determine the measurement, fact, characteristic, or assertion.                                                                                                                                                                                                                                                                                                                                                                                                                  |
|Comment      |Should be a concise and standardised text entry or reference (publication, URI), referring to a particular method (e.g. 'direct weighing', 'length-mass regression', 'intertegular span', 'length between node X and y' ) and  measurement conditions (e.g. certain temperature or humidity, name of device or scale used for measurement).  To avoid repetition or lengthy entries, authors should use global identifiers of methodological terms if available, or enter dataset specific identifiers and provide a more detailed description of the method or protocol used to determine the measurement, fact, characteristic, or assertion in the metadata of the dataset. |
## `measurementDeterminedBy`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementdeterminedby)

|             |measurementDeterminedBy                                                                                                                                                                                                                                     |
|:------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                   |
|vocabulary   |                                                                                                                                                                                                                                                            |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementDeterminedBy                                                                                                                                                                             |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementDeterminedBy                                                                                                                                                                                                        |
|Replaces     |NA                                                                                                                                                                                                                                                          |
|Version      |v0.3                                                                                                                                                                                                                                                        |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                    |
|DateModified |                                                                                                                                                                                                                                                            |
|Definition   |A list (concatenated and separated) of names of people, groups, or organizations who determined the value of the measurement. Can be encoded by dataset-specific identifiers for reasons of privacy. This is kept as a co-factor for repeated measurements. |
|Comment      |The recommended best practice is to separate the values with a vertical bar (' &#124; '). Examples: "Rob Guralnick", "Julie Woodruff &#124; Eileen Lacey".                                                                                                  |
## `measurementDeterminedDate`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementdetermineddate)

|             |measurementDeterminedDate                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |Date                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementDeterminedDate                                                                                                                                                                                                                                                                                                                                                                                                                    |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementDeterminedDate                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|DateModified |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|Definition   |The date of the measurement. Also kept as a co-factor. Use format "YYYY-MM-DD hh:mm TIMEZONE". Not to confuse with year, month, day columns which are reserved for the date of sampling (may be identical, though).                                                                                                                                                                                                                                                                                  |
|Comment      |Examples: "1963-03-08T14:07-0600" is 8 Mar 1963 2:07pm in the time zone six hours earlier than UTC, "2009-02-20T08:40Z" is 20 Feb 2009 8:40am UTC, "1809-02-12" is 12 Feb 1809, "1906-06" is Jun 1906, "1971" is just that year, "2007-03-01T13:00:00Z/2008-05-11T15:30:00Z" is the interval between 1 Mar 2007 1pm UTC and 11 May 2008 3:30pm UTC, "2007-11-13/15" is the interval between 13 Nov 2007 and 15 Nov 2007. For discussion see http://terms.tdwg.org/wiki/dwc:measurementDeterminedDate |
## `measurementRemarks`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementremarks)

|             |measurementRemarks                                                                                                                        |
|:------------|:-----------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                 |
|vocabulary   |                                                                                                                                          |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementRemarks                                                                |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementRemarks                                                                                           |
|Replaces     |NA                                                                                                                                        |
|Version      |v0.3                                                                                                                                      |
|DateIssued   |7/7/2017                                                                                                                                  |
|DateModified |                                                                                                                                          |
|Definition   |Remarks concerning a particular measurement, e.g. additional information on the quality and reliability, reference or acknowledgements.   |
|Comment      |Any particularities about the individual measurement or specimen that might affect trait measuremnt, e.g. 'last antenna segment missing'. |
## `aggregateMeasure`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#aggregatemeasure)

|             |aggregateMeasure                                                                                                                                                                                                                                                                                               |
|:------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |logical                                                                                                                                                                                                                                                                                                        |
|vocabulary   |                                                                                                                                                                                                                                                                                                               |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#aggregateMeasure                                                                                                                                                                                                                                       |
|Refines      |                                                                                                                                                                                                                                                                                                               |
|Replaces     |NA                                                                                                                                                                                                                                                                                                             |
|Version      |v0.3                                                                                                                                                                                                                                                                                                           |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                       |
|DateModified |                                                                                                                                                                                                                                                                                                               |
|Definition   |Is measurementValue reporting an individual measurement or an aggregate Measure? Takes a binary entry: TRUE or FALSE                                                                                                                                                                                           |
|Comment      |This is flagging aggregate data in an unambiguous way. Aggregate measures are often reported for repeated measures, e.g. replicate measurements of leaf size from a single plant individual or for grouped measurement, e.g. for weightings of a counted number of specimens (e.g. leaves or small organisms). |
## `individualCount`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#individualcount)

|             |individualCount                                                                                                                                      |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |integer                                                                                                                                              |
|vocabulary   |                                                                                                                                                     |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#individualCount                                                                              |
|Refines      |http://rs.tdwg.org/dwc/terms/individualCount                                                                                                         |
|Replaces     |NA                                                                                                                                                   |
|Version      |v0.3                                                                                                                                                 |
|DateIssued   |7/7/2017                                                                                                                                             |
|DateModified |                                                                                                                                                     |
|Definition   |If measurement is an aggregate measure of multiple individuals or specimens, report number of specimens as count, i.e. integer number. Defaults to 1 |
|Comment      |Examples: "1", "25". For discussion see http://terms.tdwg.org/wiki/dwc:individualCount                                                               |
## `dispersion`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#dispersion)

|             |dispersion                                                                                                                                                                                                                                                                                                                                |
|:------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |numeric                                                                                                                                                                                                                                                                                                                                   |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                          |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#dispersion                                                                                                                                                                                                                                                                        |
|Refines      |                                                                                                                                                                                                                                                                                                                                          |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                        |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                      |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                  |
|DateModified |                                                                                                                                                                                                                                                                                                                                          |
|Definition   |If aggregate measure of multiple individuals or specimens, the numeric value of dispersion (variance or standard deviation) for the mean value reported in measurementValue_user (no unit conversion is provided by the R-package!). Defaults to 0. If a value is provided, report the statistical method in the field statisticalMethod. |
|Comment      |                                                                                                                                                                                                                                                                                                                                          |
## `measurementValue_min`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementvalue_min)

|             |measurementValue_min                                                                   |
|:------------|:--------------------------------------------------------------------------------------|
|valueType    |numeric                                                                                |
|vocabulary   |                                                                                       |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementValue_min           |
|Refines      |                                                                                       |
|Replaces     |NA                                                                                     |
|Version      |v0.3                                                                                   |
|DateIssued   |7/7/2017                                                                               |
|DateModified |                                                                                       |
|Definition   |The lower boundary of observed values. Instead of or in addition to dispersion metric. |
|Comment      |                                                                                       |
## `measurementValue_max`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementvalue_max)

|             |measurementValue_max                                                                   |
|:------------|:--------------------------------------------------------------------------------------|
|valueType    |numeric                                                                                |
|vocabulary   |                                                                                       |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementValue_max           |
|Refines      |                                                                                       |
|Replaces     |NA                                                                                     |
|Version      |v0.3                                                                                   |
|DateIssued   |7/7/2017                                                                               |
|DateModified |                                                                                       |
|Definition   |The upper boundary of observed values. Instead of or in addition to dispersion metric. |
|Comment      |                                                                                       |
## `measurementAccuracy`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementaccuracy)

|             |measurementAccuracy                                                                                                                  |
|:------------|:------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                            |
|vocabulary   |                                                                                                                                     |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#measurementAccuracy                                                          |
|Refines      |http://rs.tdwg.org/dwc/terms/measurementAccuracy                                                                                     |
|Replaces     |NA                                                                                                                                   |
|Version      |v0.3                                                                                                                                 |
|DateIssued   |7/7/2017                                                                                                                             |
|DateModified |                                                                                                                                     |
|Definition   |The description of the potential error associated with the measurementValue.                                                         |
|Comment      |Examples: "0.01", "normal distribution with variation of 2 m". For discussion see http://terms.tdwg.org/wiki/dwc:measurementAccuracy |
## `statisticalMethod`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#statisticalmethod)

|             |statisticalMethod                                                                                                                                               |
|:------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                       |
|vocabulary   |                                                                                                                                                                |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#statisticalMethod                                                                                       |
|Refines      |                                                                                                                                                                |
|Replaces     |NA                                                                                                                                                              |
|Version      |v0.3                                                                                                                                                            |
|DateIssued   |7/7/2017                                                                                                                                                        |
|DateModified |                                                                                                                                                                |
|Definition   |For aggregated measures, the method for data aggregation or averaging as well as the variation or range.                                                        |
|Comment      |E.g. 'mean and standard deviation', 'median and 95% confidence interval', 'mean and variance', 'mean and range of values', 'median and 95% interquantile range' |


# Extension: Occurrence 

this section of columns aims for identifying the methodology and primary source of the data and keep the reference to the actual specimen (e.g. for museum collections or related data analysis). It also may add detail on the condition of the observed specimen, its sex, morphotype or developmental stage. 
Especially for analyses of intra-specific trait variation, this composes valuable data. 

For most trait data compiled from literature or expert knowledge, the level of information on an 'occurrence' would not apply, since no specific individual has been observed. In this case, the field 'occurrenceID' should be left blank in the core data. In cases where different aggregate ranges or averages are reported for male and female individuals, the columns sex or developmental stage may be used without the reference to an occurrence ID. 

## `sex`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#sex)

|             |sex                                                                                                                                                         |
|:------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                                                                                      |
|vocabulary   |male; female; subadult; unknown; hermaphrodite                                                                                                              |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#sex                                                                                                 |
|Refines      |http://rs.tdwg.org/dwc/terms/sex                                                                                                                            |
|Replaces     |NA                                                                                                                                                          |
|Version      |v0.3                                                                                                                                                        |
|DateIssued   |7/7/2017                                                                                                                                                    |
|DateModified |                                                                                                                                                            |
|Definition   |Defining the sex of the measured specimen, to capture dimorphisms. Standardised factor levels are: "male", "female", "subadult", "unknown", "hermaphrodite" |
|Comment      |                                                                                                                                                            |
## `lifeStage`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#lifestage)

|             |lifeStage                                                                                                                                                                                                                                                 |
|:------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                 |
|vocabulary   |                                                                                                                                                                                                                                                          |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#lifeStage                                                                                                                                                                                         |
|Refines      |http://rs.tdwg.org/dwc/terms/lifeStage                                                                                                                                                                                                                    |
|Replaces     |NA                                                                                                                                                                                                                                                        |
|Version      |v0.3                                                                                                                                                                                                                                                      |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                  |
|DateModified |                                                                                                                                                                                                                                                          |
|Definition   |The life stage of the measured specimen.                                                                                                                                                                                                                  |
|Comment      |Recommended factor levels are: seed, seedling, sapling, adult, egg, larval_instar_1, larval_instar_2, larval_instar_3, ... , pupa; For very taxon-specific life stages, it is recommended to provide detailed explanation in the metadata of the dataset. |
## `age`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#age)

|             |age                                                         |
|:------------|:-----------------------------------------------------------|
|valueType    |numeric                                                     |
|vocabulary   |                                                            |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#age |
|Refines      |                                                            |
|Replaces     |NA                                                          |
|Version      |v0.3                                                        |
|DateIssued   |7/7/2017                                                    |
|DateModified |                                                            |
|Definition   |The age of the specimen in years.                           |
|Comment      |Example: "2", "0.16".                                       |
## `morphotype`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#morphotype)

|             |morphotype                                                                                                                                                    |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                     |
|vocabulary   |                                                                                                                                                              |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#morphotype                                                                                            |
|Refines      |                                                                                                                                                              |
|Replaces     |NA                                                                                                                                                            |
|Version      |v0.3                                                                                                                                                          |
|DateIssued   |7/7/2017                                                                                                                                                      |
|DateModified |                                                                                                                                                              |
|Definition   |The morphotype of the observed specimen.                                                                                                                      |
|Comment      |Examples: "worker", "drone", "queen". Since morphotypes can differ between organism groups, provide definition of morphotypes in the metadata of the dataset. |
## `eventID`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#eventid)

|             |eventID                                                                                                                                                                                                                      |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                    |
|vocabulary   |                                                                                                                                                                                                                             |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#eventID                                                                                                                                                              |
|Refines      |http://rs.tdwg.org/dwc/terms/eventID                                                                                                                                                                                         |
|Replaces     |NA                                                                                                                                                                                                                           |
|Version      |v0.3                                                                                                                                                                                                                         |
|DateIssued   |7/7/2017                                                                                                                                                                                                                     |
|DateModified |                                                                                                                                                                                                                             |
|Definition   |The sampling event or campaign. A globally valid URI or user specified character string that links to another table providing detailed information, e.g. environmental or temporal parameters, descriptions on methods etc.. |
|Comment      |could be a combination of date and sampling region                                                                                                                                                                           |
## `preparations`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#preparations)

|             |preparations                                                                                                                                                                                                                                                                                                                                                                                                |
|:------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                                                                                                                                                                   |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                                                                            |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#preparations                                                                                                                                                                                                                                                                                                                                        |
|Refines      |http://rs.tdwg.org/dwc/terms/preparations                                                                                                                                                                                                                                                                                                                                                                   |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                                                                          |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                                                                                        |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                                                                                    |
|DateModified |                                                                                                                                                                                                                                                                                                                                                                                                            |
|Definition   |For preserved specimens, a list (concatenated and separated) of preparations and preservation methods for the occurence.                                                                                                                                                                                                                                                                                    |
|Comment      |Do not report procedures for measurement or sampling here (see samplingProtocol and measurementMethod). The recommended best practice is to separate the values with a vertical bar (' &#124; '). Examples: "fossil", "cast", "photograph", "DNA extract", "skin &#124; "skull &#124; skeleton", "whole animal (ETOH) &#124; tissue (EDTA)". For discussion see http://terms.tdwg.org/wiki/dwc:preparations |
## `samplingProtocol`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#samplingprotocol)

|             |samplingProtocol                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#samplingProtocol                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|Refines      |http://rs.tdwg.org/dwc/terms/samplingProtocol                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|DateModified |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|Definition   |The name of, reference to, or description of the method or protocol used for obtaining the specimen.                                                                                                                                                                                                                                                                                                                                                                                                                |
|Comment      |Examples: "UV light trap", "mist net", "bottom trawl", "ad hoc observation", "point count", "Penguins from space: faecal stains reveal the location of emperor penguin colonies, http://dx.doi.org/10.1111/j.1466-8238.2009.00467.x", "Takats et al. 2001. Guidelines for Nocturnal Owl Monitoring in North America. Beaverhill Bird Observatory and Bird Studies Canada, Edmonton, Alberta. 32 pp.", "http://www.bsc-eoc.org/download/Owl.pdf". For discussion see http://terms.tdwg.org/wiki/dwc:samplingProtocol |
## `year`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#year)

|             |year                                                                    |
|:------------|:-----------------------------------------------------------------------|
|valueType    |integer                                                                 |
|vocabulary   |                                                                        |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#year            |
|Refines      |http://rs.tdwg.org/dwc/terms/year                                       |
|Replaces     |NA                                                                      |
|Version      |v0.3                                                                    |
|DateIssued   |7/7/2017                                                                |
|DateModified |                                                                        |
|Definition   |The four-digit year, at which the specimens were extracted or sampled.  |
|Comment      |Example: "2008". For discussion see http://terms.tdwg.org/wiki/dwc:year |
## `month`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#month)

|             |month                                                                                              |
|:------------|:--------------------------------------------------------------------------------------------------|
|valueType    |integer                                                                                            |
|vocabulary   |                                                                                                   |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#month                                      |
|Refines      |http://rs.tdwg.org/dwc/terms/month                                                                 |
|Replaces     |NA                                                                                                 |
|Version      |v0.3                                                                                               |
|DateIssued   |7/7/2017                                                                                           |
|DateModified |                                                                                                   |
|Definition   |The ordinal month, in which the specimens were extracted or sampled.                               |
|Comment      |Examples: "1" (=January), "10" (=October). For discussion see http://terms.tdwg.org/wiki/dwc:month |
## `day`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#day)

|             |day                                                                            |
|:------------|:------------------------------------------------------------------------------|
|valueType    |integer                                                                        |
|vocabulary   |                                                                               |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#day                    |
|Refines      |http://rs.tdwg.org/dwc/terms/day                                               |
|Replaces     |NA                                                                             |
|Version      |v0.3                                                                           |
|DateIssued   |7/7/2017                                                                       |
|DateModified |                                                                               |
|Definition   |The integer day of the month on which the specimens were extracted or sampled. |
|Comment      |Examples: "9", "28". For discussion see http://terms.tdwg.org/wiki/dwc:day     |
## `eventDate`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#eventdate)

|             |eventDate                                                                                                                                                                                                                                                     |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |Date                                                                                                                                                                                                                                                          |
|vocabulary   |                                                                                                                                                                                                                                                              |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#eventDate                                                                                                                                                                                             |
|Refines      |http://rs.tdwg.org/dwc/terms/eventDate                                                                                                                                                                                                                        |
|Replaces     |NA                                                                                                                                                                                                                                                            |
|Version      |v0.3                                                                                                                                                                                                                                                          |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                      |
|DateModified |                                                                                                                                                                                                                                                              |
|Definition   |Represents the date, at which the specimens were extracted or sampled. If providing eventDate, then enter format of type: YYYY-MM-DD hh:mm TIMEZONE (fall back to 12:00 if no time is available). For lower precision, use year, month and day field instead. |
|Comment      |Note: this is not to record the date when the specimens were measured (use measurementDeterminedDate for this). If applicable, at least provide a year.  Providing a date is highly viable for studies analysing temporal variation in traits.                |
## `locationID`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#locationid)

|             |locationID                                                                                                                                                                         |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                                                                                                             |
|vocabulary   |                                                                                                                                                                                   |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#locationID                                                                                                                 |
|Refines      |http://rs.tdwg.org/dwc/terms/locationID                                                                                                                                            |
|Replaces     |NA                                                                                                                                                                                 |
|Version      |v0.3                                                                                                                                                                               |
|DateIssued   |7/7/2017                                                                                                                                                                           |
|DateModified |                                                                                                                                                                                   |
|Definition   |A globally unique or dataset-specific identifier. Could report the plot within the experimental setting which would be further specified in the metadata or in a separate dataset. |
|Comment      |                                                                                                                                                                                   |
## `habitat`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#habitat)

|             |habitat                                                                                                                                                                                                                                  |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                                                                                                                                                                   |
|vocabulary   |                                                                                                                                                                                                                                         |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#habitat                                                                                                                                                                          |
|Refines      |http://rs.tdwg.org/dwc/terms/habitat                                                                                                                                                                                                     |
|Replaces     |NA                                                                                                                                                                                                                                       |
|Version      |v0.3                                                                                                                                                                                                                                     |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                 |
|DateModified |                                                                                                                                                                                                                                         |
|Definition   |A character string reporting habitat type from which the specimen was sampled. E.g. 'forest', 'grassland', 'oak savanna', 'pre-cordilleran steppe'. It is recommended to link to ecological ontologies, if available, using public URIs. |
|Comment      |                                                                                                                                                                                                                                         |
## `decimalLongitude`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#decimallongitude)

|             |decimalLongitude                                                                                                                                                                                                                  |
|:------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |numeric                                                                                                                                                                                                                           |
|vocabulary   |                                                                                                                                                                                                                                  |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#decimalLongitude                                                                                                                                                          |
|Refines      |http://rs.tdwg.org/dwc/terms/decimalLongitude                                                                                                                                                                                     |
|Replaces     |NA                                                                                                                                                                                                                                |
|Version      |v0.3                                                                                                                                                                                                                              |
|DateIssued   |7/7/2017                                                                                                                                                                                                                          |
|DateModified |                                                                                                                                                                                                                                  |
|Definition   |The geographic longitude (in decimal degrees, using the spatial reference system given in geodeticDatum) of the geographic center of a Location.                                                                                  |
|Comment      |Positive values are east of the Greenwich Meridian, negative values are west of it. Legal values lie between -180 and 180, inclusive. Example: "-121.1761111". For discussion see http://terms.tdwg.org/wiki/dwc:decimalLongitude |
## `decimalLatitude`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#decimallatitude)

|             |decimalLatitude                                                                                                                                                                                                    |
|:------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |numeric                                                                                                                                                                                                            |
|vocabulary   |                                                                                                                                                                                                                   |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#decimalLatitude                                                                                                                                            |
|Refines      |http://rs.tdwg.org/dwc/terms/decimalLatitude                                                                                                                                                                       |
|Replaces     |NA                                                                                                                                                                                                                 |
|Version      |v0.3                                                                                                                                                                                                               |
|DateIssued   |7/7/2017                                                                                                                                                                                                           |
|DateModified |                                                                                                                                                                                                                   |
|Definition   |The geographic latitude (in decimal degrees, using the spatial reference system given in geodeticDatum) of the geographic center of a Location.                                                                    |
|Comment      |Positive values are north of Equator, negative values are south of it. Legal values lie between -180 and 180, inclusive. Example: "-41.0983423". For discussion see http://terms.tdwg.org/wiki/dwc:decimalLatitude |
## `elevation`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#elevation)

|             |elevation                                                                                                                                                                                                                                                                                                                                          |
|:------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |numeric                                                                                                                                                                                                                                                                                                                                            |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                   |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#elevation                                                                                                                                                                                                                                                                                  |
|Refines      |http://rs.tdwg.org/dwc/terms/verbatimElevation                                                                                                                                                                                                                                                                                                     |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                 |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                               |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                           |
|DateModified |                                                                                                                                                                                                                                                                                                                                                   |
|Definition   |The geographic elevation in meters above sea level.                                                                                                                                                                                                                                                                                                |
|Comment      |May map to verbatimElevation (http://rs.tdwg.org/dwc/terms/verbatimElevation) or minimumElevationInMeters (http://rs.tdwg.org/dwc/terms/minimumElevationInMeters) and maximumElevationInMeters (http://rs.tdwg.org/dwc/terms/maximumElevationInMeters); Example: "200". For discussion see http://terms.tdwg.org/wiki/dwc:maximumElevationInMeters |
## `geodeticDatum`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#geodeticdatum)

|             |geodeticDatum                                                                                                                                                                                                                                                                                                                                            |
|:------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                                                                                                                                                                                                                                                                                   |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                         |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#geodeticDatum                                                                                                                                                                                                                                                                                    |
|Refines      |http://rs.tdwg.org/dwc/terms/geodeticDatum                                                                                                                                                                                                                                                                                                               |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                       |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                                     |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                                 |
|DateModified |                                                                                                                                                                                                                                                                                                                                                         |
|Definition   |The geodeticDatum defines the ellipsoid, geodetic datum, or spatial reference system (SRS) upon which the geographic coordinates given in decimalLatitude and decimalLongitude as based. Recommended system is "WGS84". Use the EPSG code to provide an SRS. Examples: "EPSG:4326", "WGS84", "NAD27", "Campo Inchauspe", "European 1950", "Clarke 1866"* |
|Comment      |                                                                                                                                                                                                                                                                                                                                                         |
## `verbatimLocality`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#verbatimlocality)

|             |verbatimLocality                                                                                                                                                                                                                                                                                                                                           |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                                                                                                                  |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                           |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#verbatimLocality                                                                                                                                                                                                                                                                                   |
|Refines      |http://rs.tdwg.org/dwc/terms/verbatimLocality                                                                                                                                                                                                                                                                                                              |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                         |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                                       |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                                   |
|DateModified |                                                                                                                                                                                                                                                                                                                                                           |
|Definition   |The specific description of the place. Less specific geographic information can be provided in other geographic terms (higherGeography, continent, country, stateProvince, county, municipality, waterBody, island, islandGroup). This term may contain information modified from the original to correct perceived errors or standardize the description. |
|Comment      |                                                                                                                                                                                                                                                                                                                                                           |
## `country`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#country)

|             |country                                                                                                                                                                                                              |
|:------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                            |
|vocabulary   |                                                                                                                                                                                                                     |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#country                                                                                                                                                      |
|Refines      |http://rs.tdwg.org/dwc/terms/country                                                                                                                                                                                 |
|Replaces     |NA                                                                                                                                                                                                                   |
|Version      |v0.3                                                                                                                                                                                                                 |
|DateIssued   |7/7/2017                                                                                                                                                                                                             |
|DateModified |                                                                                                                                                                                                                     |
|Definition   |Recommended best practice is to use a controlled vocabulary such as the Getty Thesaurus of Geographic Names.                                                                                                         |
|Comment      |Examples: "Germany", "Denmark", "Colombia", "España". For discussion see http://terms.tdwg.org/wiki/dwc:country;  This should be added if a more precise location is unavailable, to enable data to be used by GBif. |
## `countryCode`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#countrycode)

|             |countryCode                                                                                                                                                                                                                            |
|:------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                                                                                                                                                                 |
|vocabulary   |                                                                                                                                                                                                                                       |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#countryCode                                                                                                                                                                    |
|Refines      |http://rs.tdwg.org/dwc/terms/countryCode                                                                                                                                                                                               |
|Replaces     |NA                                                                                                                                                                                                                                     |
|Version      |v0.3                                                                                                                                                                                                                                   |
|DateIssued   |7/7/2017                                                                                                                                                                                                                               |
|DateModified |                                                                                                                                                                                                                                       |
|Definition   |The standard code for the country in which the Location occurs. Recommended best practice is to use ISO 3166-1-alpha-2 country codes.                                                                                                  |
|Comment      |Examples:"DE" for Germany, "AR" for Argentina, "SV" for El Salvador. For discussion see http://terms.tdwg.org/wiki/dwc:countryCode; This should be added if a more precise location is unavailable, to enable data to be used by GBif. |
## `occurenceRemarks`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#occurenceremarks)

|             |occurenceRemarks                                                                                   |
|:------------|:--------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                          |
|vocabulary   |                                                                                                   |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#occurenceRemarks                           |
|Refines      |http://rs.tdwg.org/dwc/terms/occurrenceRemarks                                                     |
|Replaces     |NA                                                                                                 |
|Version      |v0.3                                                                                               |
|DateIssued   |7/7/2017                                                                                           |
|DateModified |                                                                                                   |
|Definition   |Comments or notes about the Occurrence.                                                            |
|Comment      |Example: "found dead on road". For discussion see http://terms.tdwg.org/wiki/dwc:occurrenceRemarks |

# Extension: Biodiversity Exploratories

This section records location in the context of the exploratories. From `ExploratotriesPlotID` a detailled georeference can be inferred. Additional spatial resolution, e.g. on subplots, may be provided in `locationID` of section sampling event. 

## `OriginExploratories`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#originexploratories)

|             |OriginExploratories                                                                         |
|:------------|:-------------------------------------------------------------------------------------------|
|valueType    |logical                                                                                     |
|vocabulary   |TRUE;FALSE                                                                                  |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#OriginExploratories                 |
|Refines      |                                                                                            |
|Replaces     |NA                                                                                          |
|Version      |v0.3                                                                                        |
|DateIssued   |7/7/2017                                                                                    |
|DateModified |                                                                                            |
|Definition   |Did measured specimens originate from Exploratories Plots? TRUE or FALSE, defaults to FALSE |
|Comment      |As unambiguous flag for data and specimens that are originating from Exploratories sites.   |
## `ExploratoriesPlotID`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#exploratoriesplotid)

|             |ExploratoriesPlotID                                                                                                                                                                                                                                                                                                                              |
|:------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                                                                                                                                                                                                                                                                           |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                 |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#ExploratoriesPlotID                                                                                                                                                                                                                                                                      |
|Refines      |                                                                                                                                                                                                                                                                                                                                                 |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                               |
|Version      |v0.3                                                                                                                                                                                                                                                                                                                                             |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                                                         |
|DateModified |                                                                                                                                                                                                                                                                                                                                                 |
|Definition   |EP plot ID (or also any valid Gridplot ID or VIP ID) where the measured specimen was extracted. Only for specimen that were extracted from the exploratories directly (or direct offspring, if hatched in the lab). Please also report it, even if this was not part of your research question and provide a Date (a year at last) if available. |
|Comment      |                                                                                                                                                                                                                                                                                                                                                 |
## `Exploratory`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#exploratory)

|             |Exploratory                                                                                                                                                            |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |factor                                                                                                                                                                 |
|vocabulary   |HAI; SCH; ALB                                                                                                                                                          |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#Exploratory                                                                                                    |
|Refines      |                                                                                                                                                                       |
|Replaces     |NA                                                                                                                                                                     |
|Version      |v0.3                                                                                                                                                                   |
|DateIssued   |7/7/2017                                                                                                                                                               |
|DateModified |                                                                                                                                                                       |
|Definition   |Exploratories Region (Hainich, Schorfheide, Alb) for sorting purpose and readability, or if exact Plot ID is not available. Report the Region in format: HAI; SCH; ALB |
|Comment      |                                                                                                                                                                       |
## `ExploType`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#explotype)

|             |ExploType                                                         |
|:------------|:-----------------------------------------------------------------|
|valueType    |factor                                                            |
|vocabulary   |W; G                                                              |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#ExploType |
|Refines      |                                                                  |
|Replaces     |NA                                                                |
|Version      |v0.3                                                              |
|DateIssued   |7/7/2017                                                          |
|DateModified |                                                                  |
|Definition   |W for forest or G for grassland plot.                             |
|Comment      |                                                                  |

# Metadata vocabulary

These data are required when combining datasets from different sources. We suggest integrating a `datasetID` referencing to an external data sheet or adding columns to the dataset to keep important information about authorship and terms of use at the measurement level. 


## `rightsHolder`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#rightsholder)

|             |rightsHolder                                                                             |
|:------------|:----------------------------------------------------------------------------------------|
|valueType    |character                                                                                |
|vocabulary   |                                                                                         |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#rightsHolder                     |
|Refines      |http://purl.org/dc/terms/rightsHolder                                                    |
|Replaces     |NA                                                                                       |
|Version      |v0.3                                                                                     |
|DateIssued   |7/7/2017                                                                                 |
|DateModified |                                                                                         |
|Definition   |A person or organization owning or managing rights over the resource, i.e. this dataset. |
|Comment      |A list of author names (separated by &#124;) or name of a consortium, or institution     |
## `bibliographicCitation`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#bibliographiccitation)

|             |bibliographicCitation                                                                                                                                                                                                                                                                                            |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                                                                                                                                        |
|vocabulary   |                                                                                                                                                                                                                                                                                                                 |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#bibliographicCitation                                                                                                                                                                                                                                    |
|Refines      |http://purl.org/dc/terms/bibliographicCitation                                                                                                                                                                                                                                                                   |
|Replaces     |NA                                                                                                                                                                                                                                                                                                               |
|Version      |v0.3                                                                                                                                                                                                                                                                                                             |
|DateIssued   |7/7/2017                                                                                                                                                                                                                                                                                                         |
|DateModified |                                                                                                                                                                                                                                                                                                                 |
|Definition   |A bibliographic reference for the resource as a statement indicating how this record should be cited (attributed) when used. Recommended practice is to include sufficient bibliographic detail to identify the resource as unambiguously as possible.                                                           |
|Comment      |e.g. "Gossner, M.M., Simons, N.K., Achtziger, R., Blick, T., Dorow, W.H.., Dziock, F., et al. (2015). A summary of eight traits of Coleoptera, Hemiptera, Orthoptera and Araneae, occurring in grasslands in Germany. Sci Data, 2, 150013, doi:10.1038/sdata.2015.13" If dataset has been published, include DOI |
## `license`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#license)

|             |license                                                                                                                                                                                   |
|:------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                                                                                 |
|vocabulary   |                                                                                                                                                                                          |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#license                                                                                                                           |
|Refines      |http://purl.org/dc/terms/license                                                                                                                                                          |
|Replaces     |NA                                                                                                                                                                                        |
|Version      |v0.3                                                                                                                                                                                      |
|DateIssued   |7/7/2017                                                                                                                                                                                  |
|DateModified |                                                                                                                                                                                          |
|Definition   |A legal document giving official permission to do something with the resource.                                                                                                            |
|Comment      |Examples: "http://creativecommons.org/publicdomain/zero/1.0/legalcode", "http://creativecommons.org/licenses/by/4.0/legalcode". For discussion see http://terms.tdwg.org/wiki/dwc:license |
## `datasetID`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#datasetid)

|             |datasetID                                                                                                                      |
|:------------|:------------------------------------------------------------------------------------------------------------------------------|
|valueType    |character                                                                                                                      |
|vocabulary   |                                                                                                                               |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#datasetID                                                              |
|Refines      |http://rs.tdwg.org/dwc/terms/datasetID                                                                                         |
|Replaces     |NA                                                                                                                             |
|Version      |v0.3                                                                                                                           |
|DateIssued   |7/7/2017                                                                                                                       |
|DateModified |                                                                                                                               |
|Definition   |An identifier for the set of data. May be a global unique identifier or an identifier specific to a collection or institution. |
|Comment      |e.g. BExIS ID, or  a DOI referring to the published dataset                                                                    |
## `datasetName`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#datasetname)

|             |datasetName                                                          |
|:------------|:--------------------------------------------------------------------|
|valueType    |character                                                            |
|vocabulary   |                                                                     |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#datasetName  |
|Refines      |http://rs.tdwg.org/dwc/terms/datasetName                             |
|Replaces     |NA                                                                   |
|Version      |v0.3                                                                 |
|DateIssued   |7/7/2017                                                             |
|DateModified |                                                                     |
|Definition   |The name identifying the data set from which the record was derived. |
|Comment      |e.g. a BExIS dataset name, a unique name for the traitdataset        |
## `author`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#author)

|             |author                                                         |
|:------------|:--------------------------------------------------------------|
|valueType    |character                                                      |
|vocabulary   |                                                               |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#author |
|Refines      |                                                               |
|Replaces     |NA                                                             |
|Version      |v0.4                                                           |
|DateIssued   |9/5/2017                                                       |
|DateModified |                                                               |
|Definition   |                                                               |
|Comment      |                                                               |
## `version`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#version)

|             |version                                                         |
|:------------|:---------------------------------------------------------------|
|valueType    |character                                                       |
|vocabulary   |                                                                |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#version |
|Refines      |                                                                |
|Replaces     |NA                                                              |
|Version      |v0.4                                                            |
|DateIssued   |9/5/2017                                                        |
|DateModified |                                                                |
|Definition   |                                                                |
|Comment      |                                                                |

# Terms for Traitlists (a 'Trait Thesaurus')

A trait thesaurus or ontology assigns descriptive trait names with A) an unambiguous definition of the trait and B) an expected format of measured values or reported facts, and might additionally provide C) semantic relationships for deriving a hierarchical or tree-based classification of traits. 

Traits are not only defined in terms of their interpretation, but are ideally also standardised in terms of numerical units and, even more important, the use of harmonized factor levels. This is challenging, given the range of data types that fall within datasets of functional traits. 
Numerical values represent measurements of length, volumes, ratios, rates or timespans. Integer values may apply to count data (e.g. eggs per clutch). 
Binary data (encoded as 0 or 1) or logical data (coded as TRUE or FALSE) may apply to qualitative traits such as specific behaviour during mating (e.g. are territories defended) or specialisation to a given habitat (e.g. species restricted to relicts of primeval forests). Many traits are categorical and allow for a constrained set of factor levels, such as sex differences in wing morphology (both sexes winged, both sexes unwinged, only males winged, only females winged) or unconstrained entries such as color. Categorical traits often are ordinal, i.e. they have a logical sequence as in the case of life stages or hibernation stages, or habitat preference traits such as horizontal stratum use. 
Finally there are specific formats of multivariate trait values, e.g. x-y-z coordinates of a landmark measured in a standardized 3D space [ref] or relative abundance of chain-lengths in biochemical compounds [].
To cope with this variety of data types, definitions should refer to other well-defined terms of other ontologies that describe standard units, morphological body parts, protein characteristics (Protein Ontology) or chemical terms (e.g. the ChEBI, http://www.obofoundry.org/ontology/chebi.html).

Online ontologies extend into (machine readable) semantic web resources by providing a hierarchical classification of traits or a relational tree of functional traits. 
Each trait definition may link to a broader or narrower term. For instance, the definition of 'femur length of first leg, left side' is narrower than 'femur length' which is narrower than 'leg trait' which is narrower than 'locomotion trait'. (Ref semantic database methods)
This links traits of similar functional meaning and allows cross-taxon comparative studies at the level of broader terms. 

Ontologies for functional traits are being developed for different organism groups, mostly centered around certain research questions or subjects of study. To date, the TRY database takes the most inclusive approach on functional traits for vascular plants (Kattge).
For some animal groups, similar approaches do exist, but few are available as an online ontology. 

As a starting point for creating an ontology for functional traits, we propose the following terms for trait lists (also termed 'Thesaurus'), to describe functional traits that are in the focus of the research project. 

Using this standardized terminology will allow merging trait definitions from multiple sources. We encourage providing these lookup tables as an open resource on public terminology servers to enable a global referencing. 
The benefit of such classifications will increase if open Application Programming Interfaces (APIs) provide a way to extract the definitions and higher-level trait hierarchies programmatically via software tools. To harmonize trait data across databases, future trait standard initiatives should provide this functionality. 
Online ontologies hosted with accredited ontology servers have the advantage of providing a persistent and direct link of the term on the internet (a *Uniform Resource Identifier*, URI).
Terminology portals or registries, such as the GFBio Terminology Service or ontobee, may provide a central host for trait ontologies. 


## `traitID`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitid)

|             |traitID                                                                              |
|:------------|:------------------------------------------------------------------------------------|
|valueType    |                                                                                     |
|vocabulary   |                                                                                     |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#traitID                      |
|Refines      |                                                                                     |
|Replaces     |NA                                                                                   |
|Version      |v0.4                                                                                 |
|DateIssued   |10/24/2017                                                                           |
|DateModified |                                                                                     |
|Definition   |unique identifier for the trait                                                      |
|Comment      |Identifiers are ideally unique and stable URI which identify the source of the trait |
## `traitName`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitname)

|             |traitName                                                                                                                                                                         |
|:------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |                                                                                                                                                                                  |
|vocabulary   |                                                                                                                                                                                  |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#traitName                                                                                                                 |
|Refines      |                                                                                                                                                                                  |
|Replaces     |NA                                                                                                                                                                                |
|Version      |v0.4                                                                                                                                                                              |
|DateIssued   |10/24/2017                                                                                                                                                                        |
|DateModified |                                                                                                                                                                                  |
|Definition   |human-readable trait name                                                                                                                                                         |
|Comment      |Trait names should be unique but understandable by humans. Additional specifications such as unit of measurement can be included in the name. Several words are separated by "_". |
## `broaderTerm`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#broaderterm)

|             |broaderTerm                                                                                                                   |
|:------------|:-----------------------------------------------------------------------------------------------------------------------------|
|valueType    |                                                                                                                              |
|vocabulary   |                                                                                                                              |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#broaderTerm                                                           |
|Refines      |                                                                                                                              |
|Replaces     |NA                                                                                                                            |
|Version      |v0.4                                                                                                                          |
|DateIssued   |8/24/2017                                                                                                                     |
|DateModified |10/24/2017                                                                                                                    |
|Definition   |indicates the hierarchical level of the trait                                                                                 |
|Comment      |The broader term is given as the unique identifier (traitID) of the broader trait. Each trait can only have one broader term. |
## `narrowerTerm`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#narrowerterm)

|             |narrowerTerm                                                           |
|:------------|:----------------------------------------------------------------------|
|valueType    |                                                                       |
|vocabulary   |                                                                       |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#narrowerTerm   |
|Refines      |                                                                       |
|Replaces     |NA                                                                     |
|Version      |v0.4                                                                   |
|DateIssued   |8/24/2017                                                              |
|DateModified |10/24/2017                                                             |
|Definition   |indicates the hierarchical level of the trait                          |
|Comment      |Optional. Several traits can be listed as narrower terms of one trait. |
## `valueType`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#valuetype)

|             |valueType                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|:------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#valueType                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|Refines      |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|Version      |v0.4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|DateIssued   |9/27/2017                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|DateModified |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|Definition   |type of trait values. Defines the trait as numeric, integer, categorical, binary/logical, or character.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|Comment      |Numerical values represent measurements of length, volumes, ratios, rates or timespans. Integer values apply to count data (e.g. eggs per clutch). Binary data (encoded as 0 or 1) or logical data (coded as TRUE or FALSE) may apply to qualitative traits such as specific behaviour during mating (e.g. are territories defended) or specialisation to a given habitat (e.g. species restricted to relicts of primeval forests). Categorical traits should define a constrained set of factor levels, such as sex differences in wing morphology (both sexes winged, both sexes unwinged, only males winged, only females winged) or unconstrained entries such as color. Ordinal categorical traits may be better encoded as integer values, e.g. a logical sequence as in the case of life stages or hibernation stages, or habitat preference traits such as horizontal stratum use. |
## `traitUnit`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitunit)

|             |traitUnit                                                         |
|:------------|:-----------------------------------------------------------------|
|valueType    |                                                                  |
|vocabulary   |                                                                  |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#traitUnit |
|Refines      |                                                                  |
|Replaces     |NA                                                                |
|Version      |y0.4                                                              |
|DateIssued   |10/24/2017                                                        |
|DateModified |                                                                  |
|Definition   |the unit of measurement                                           |
|Comment      |Only applies to numerical traits. Should be given in SI units.    |
## `factorLevels`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#factorlevels)

|             |factorLevels                                                                                                                                                              |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |                                                                                                                                                                          |
|vocabulary   |                                                                                                                                                                          |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#factorLevels                                                                                                      |
|Refines      |                                                                                                                                                                          |
|Replaces     |NA                                                                                                                                                                        |
|Version      |v0.4                                                                                                                                                                      |
|DateIssued   |9/27/2017                                                                                                                                                                 |
|DateModified |                                                                                                                                                                          |
|Definition   |the constrained vocabulary for categorical traits or ordinal binary traits.                                                                                               |
|Comment      |Ordinal traits may be encoded with numerically indexed factor levels; e.g. 1_egg, 2_larvae, 3_pupae, 4_adult; the field traitDescription should define the factor levels; |
## `maxAllowedValue`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#maxallowedvalue)

|             |maxAllowedValue                                                                                                                                                     |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |                                                                                                                                                                    |
|vocabulary   |                                                                                                                                                                    |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#maxAllowedValue                                                                                             |
|Refines      |                                                                                                                                                                    |
|Replaces     |NA                                                                                                                                                                  |
|Version      |v0.4                                                                                                                                                                |
|DateIssued   |9/27/2017                                                                                                                                                           |
|DateModified |                                                                                                                                                                    |
|Definition   |a lower boundary for accepted numerical values                                                                                                                      |
|Comment      |May be used for eliminating invalid data. This boundary may constrain a range of values of meaningful orders of magnitude, or constrain entries to positive values. |
## `minAllowedValue`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#minallowedvalue)

|             |minAllowedValue                                                                                                            |
|:------------|:--------------------------------------------------------------------------------------------------------------------------|
|valueType    |                                                                                                                           |
|vocabulary   |                                                                                                                           |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#minAllowedValue                                                    |
|Refines      |                                                                                                                           |
|Replaces     |NA                                                                                                                         |
|Version      |v0.4                                                                                                                       |
|DateIssued   |9/27/2017                                                                                                                  |
|DateModified |                                                                                                                           |
|Definition   |an upper boundary for accepted numerical values                                                                            |
|Comment      |May be used for eliminating invalid data. This boundary may constrain a range of values of meaningful orders of magnitude. |
## `factorLevels`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#factorlevels)

|             |factorLevels                                                                                                                                                              |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |                                                                                                                                                                          |
|vocabulary   |                                                                                                                                                                          |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#factorLevels                                                                                                      |
|Refines      |                                                                                                                                                                          |
|Replaces     |NA                                                                                                                                                                        |
|Version      |v0.4                                                                                                                                                                      |
|DateIssued   |9/27/2017                                                                                                                                                                 |
|DateModified |                                                                                                                                                                          |
|Definition   |the constrained vocabulary for categorical traits or ordinal binary traits.                                                                                               |
|Comment      |Ordinal traits may be encoded with numerically indexed factor levels; e.g. 1_egg, 2_larvae, 3_pupae, 4_adult; the field traitDescription should define the factor levels; |
## `traitDescription`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#traitdescription)

|             |traitDescription                                                                                                                                           |
|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |                                                                                                                                                           |
|vocabulary   |                                                                                                                                                           |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#traitDescription                                                                                   |
|Refines      |                                                                                                                                                           |
|Replaces     |NA                                                                                                                                                         |
|Version      |v0.4                                                                                                                                                       |
|DateIssued   |9/27/2017                                                                                                                                                  |
|DateModified |                                                                                                                                                           |
|Definition   |short, unambiguous definition of the trait. May refer to a method of measurement.                                                                          |
|Comment      |The definition should make use of  terms provided by existing public ontologies, e.g. 'the mass (PATO:mass), either fresh or dried, of a fruit (PO:fruit)' |
## `Comments`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#comments)

|             |Comments                                                                            |
|:------------|:-----------------------------------------------------------------------------------|
|valueType    |                                                                                    |
|vocabulary   |                                                                                    |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#Comments                    |
|Refines      |                                                                                    |
|Replaces     |NA                                                                                  |
|Version      |v0.3                                                                                |
|DateIssued   |7/7/2017                                                                            |
|DateModified |10/24/2017                                                                          |
|Definition   |further description of the trait                                                    |
|Comment      |Can contain definition of trait levels or requirements for standardized conditions. |
## `relationSource`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#relationsource)

|             |relationSource                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|valueType    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|vocabulary   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#relationSource                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|Refines      |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|Replaces     |NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|Version      |v0.4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|DateIssued   |10/24/2017                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|DateModified |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|Definition   |the relation to the original source.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|Comment      |equals: trait is taken directly from the sources without modification / takenfrom: the trait is based on a trait list which does not include formal descriptions or trait-specific references (e.g. the trait was used in a scientific publication or is provided in taxonomic literature) / refines: the trait gives a more precice definition of the original trait / broadens: the trait gives a more general definition of the original trait / inheritsfrom: the trait is slight modification of the original trait but changes in the definition of the original trait should be reflected in this trait as well (e.g. Body_length_max is a modification of Body_length). |
## `source`  
[go to top](http://ecologicaltraitdata.github.io/TraitDataStandard/)  |  [direct link](http://ecologicaltraitdata.github.io/TraitDataStandard/#source)

|             |source                                                                                           |
|:------------|:------------------------------------------------------------------------------------------------|
|valueType    |                                                                                                 |
|vocabulary   |                                                                                                 |
|Identifier   |http://ecologicaltraitdata.github.io/TraitDataStandard/#source                                   |
|Refines      |                                                                                                 |
|Replaces     |NA                                                                                               |
|Version      |v0.4                                                                                             |
|DateIssued   |10/24/2017                                                                                       |
|DateModified |                                                                                                 |
|Definition   |the original source of the trait                                                                 |
|Comment      |Can be the URI of a trait in the same or a different database or a stable link to a publication. |

----

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Ecological Traitdata Standard </span> by <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Florian D. Schneider, Nadja K. Simons, Caterina Penone, Andreas Ostrowski</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
