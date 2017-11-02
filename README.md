This repository hosts the **Ecological Traitdata Standard**, which defines terms for the use in datasets containing quantitative and qualitative functional traits. 

The repository contains: 

- the 'source file' of the glossary (in .csv format), defining the terms and containing the URIs.
- the source file of the documentation (docs/index.Rmd) which is parsed in RStudio into html. 
- the index.html file contained in the docs directory is deployed as the human-readable form of the glossary via the 'Github Pages' service. 

A machine readable version will be generated and hosted by GFBio in RDF format.

# fields

The glossary contains several fields which are defined as follows: 

| field        | definition                          |
|--------------|-------------------------------------|
| Namespace    | The category the term belongs to.   |
| Identifier   | URI of the term. If the term is an exact duplicate from Darwin Core or other glossaries, Identifier will forward directly to this definition. |
| Refines      | If the definition builds on terms of the Darwin Core or other Glossaries, the original term is linked here (URI) |
| Replaces     | If the term replaces a previously defined term, it |
| Deprecated   | if TRUE, the term should not be used for new datasets, but will be maintained. |
| ReplacedBy   | If a term should not be used any more, this field provides the URI of the  replacement term. |
| Version      |  |
| DateIssued   |  | 
| DateModified |  |
| Definition   | The definition of the term. | 
| Comment      | Clarification and examples. |

# Contribute

Please use the [issues-page](https://github.com/EcologicalTraitData/TraitDataStandard/issues) for discussion and revision on individual terms, and settle the issue here before filing a pull-request that implements an update. 

# Versioning

**Current Version is 0.5**

Terminologies must provide a stability of definitions. If publications refer to the URI of a term, the definition found must be stable and be true to the definition intended by the author.

That said, definitions of terms can only be broadened or made more explicit, if the original sense of the definition remains valid. The discussion leading to a refinement of a term should consider this. If a definition changes substantially, it should receive an own URI and replace any redundant or deprecated terms. The deprecated terms will remain available at the same URI. 

At some point, a new major version of the Traitdata Standard may be issued, providing new versioned URIs for all terms of the standard that have been altered since the previous major version. 

# Suggested Citation

To refer to **this version** of the ETS please cite: 
  
  > Schneider et al. (2017) Ecological Traitdata Standard, v0.4, URL: ... , DOI: ... 

Please also cite the methods paper for the rationale and general considerations of semantic standardization of trait data: 
  
  > Schneider et al. (in preparation) Introducing an Ecological Trait-data Standard. 

# License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Ecological Traitdata Standard </span> by <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Florian D. Schneider, Nadja K. Simons, Caterina Penone, Andreas Ostrowski</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
