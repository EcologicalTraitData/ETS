---
title: "Version history"
---

Standard terminologies must provide a stability of definitions. If publications refer to the URI of a term, the link must be semantically stable and be true to the definition intended by the author.

That said, with minor increments of the standard, definitions of terms can only be broadened or made more explicit, if the original sense of the definition remains valid. The community discussion leading to a refinement of a term should consider this. If a definition changes substantially, it may receive an own URI and replace any redundant or deprecated terms. The deprecated terms will remain available at their original URI.

If alterations in terms lead to incompatibility with previous versions, a new major version of the Trait-data Standard Vocabulary may be issued, providing new versioned URIs for all terms of the standard that have been altered since the previous major version.

Discussions on terms and versions are coordinated in the [Github Issues](https://github.com/EcologicalTraitData/ETS/issues).

---

# v0.10, released 28 March 2019

## critical changes

The assignment of user-defined and standardised measurement values and trait and taxon assignments has been updated, to match labelling practice in DwC and provide a more intuitive content for those fields. Accordingly

- the v0.9.1 terms `scientificName`, `traitName`, `traitValue`, and `traitUnit` have been renamed into `verbatimScientificName`, `verbatimTraitName`, `verbatimTraitValue`, and `verbatimTraitUnit` with new identifiers. 
- the terms `scientificNameStd`, `traitNameStd`, `traitValueStd`, and  `traitUnitStd` have been renamed into `scientificName`, `traitName`, `traitValue`, and `traitUnit` and now form the default suggested content for trait data complying with the ETS. Definitions have been harmonized. The original *Std identifiers now resolve to these new terms.

## major changes

- further recommended metadata terms have been added, based on Dublin Core Metadata Initiative: `rights`, `datasetDefinition`, `issued`, and `conformsTo` 

## minor changes

- the identifier field for Dublin Core terms now provides an own Identifier on GFBio terminology service, while the Dublin Core identifier is given in the 'Refines' field.  

---

# v0.9.1 (patch), released 13 November 2018

Fixing inconsistent URIs and terms. Keeping original terms as deprecated, forwarding to new terms. Defining name scheme for new terms in documentation. 

## major changes

- new case spelling for following terms: occurrenceRemarks
- new URI for following terms:  scientificName, traitName, traitID, traitValue, traitUnit, scientificNameStd, traitNameStd, traitValueStd, traitUnitStd, measurementID, occurrenceID, basisOfRecord, basisOfRecordDescription, identifier, comments

## minor changes

- define name scheme for new terms and URIs
- add best-practice guidelines to documentation page

# v0.9, released 27 September 2018 

First public release at GFBio Terminology Service: https://terminologies.gfbio.org/terms/ets/pages/ (human readable) and https://terminologies.gfbio.org/terminology/?ontology=ETS (API access). 

## major changes 

- move URI for terms to GFBio terminology service
- rename source file into ETS.csv
- fix date scheme to ISO 8601 
- eliminate term versions, introduce 'FirstIssuedIn' to refer to ETS version
- introduce Traitlist|relatedTerm and revive Traitlist|source 
- provide field definitions in README

## minor changes

- split documentation page into separate branch
- fix documentation page relative links
- add contributing conditions (CONTRIBUTING.md) & license statement (LICENSE.md)

---

# v0.8.0, released 29 May 2018 

([Github](https://github.com/EcologicalTraitData/ETS/tree/v0.8) )

- fix patches and minor things in term definitions and comments, provide more examples.
- revise description on vocabulary sections
- revise recommendation for trait definitions; drop page on publication of Thesauri

---

# v0.7.0, released 21 March 2018

([Github](https://github.com/EcologicalTraitData/ETS/tree/v0.7) )

## major changes
- add class/extension "Taxon" with extended taxonomic hierarchical terms. 
- rename terms of "Biodiversity Exploratories" extension

---

# v0.6.1, released 21 Nov. 2017

- update terms for traitlists (Trait Thesauri)
- fixed typo

---

# v0.6, released 14 Nov. 2017

## major changes

- Construct multi-page website using Rmarkdown Website
- add recommendations on how to build trait thesaurus

## minor changes

---

# v0.5, released 3 Nov. 2017

Website | Github release | DOI: 

## major changes

- fix URIs of terms, forward URI of terms identical to DwC
- removed colum 'vocabulary', define constrained vocabulary in Comments instead

## minor changes

- spell-checking terms and descriptions, remove reference to Exploratories

---

# v0.4, released Aug. 2017

---

# v0.2, released 12 Mai 2017





