# Ecological Traitdata Standard (ETS)

This repository hosts the **Ecological Traitdata Standard**, which defines terms for the use in datasets containing quantitative and qualitative functional traits. 

The repository contains: 

- the 'source file' of the ETS (in .csv format), defining the terms and containing the URIs.
- the source files of the documentation website (.Rmd, .yml), which are parsed in [RStudio as a Rmarkdown Website](http://rmarkdown.rstudio.com/rmarkdown_websites.html) and served via [Github pages](https://pages.github.com/) (output in folder docs) to https://ecologicaltraitdata.github.io/ETS/. 
- a machine readable version will be generated and hosted by GFBio in .owl format.

# Use the ETS

The Ecological Traitdata Standard (ETS) is a collection of terms for datasets on quantitative and qualitative organism properties (i.e. traits) that describe its performance or function in an ecosystem. 

The ETS has three major use-cases:

1. it provides a low-threshold terminology standard, suitable for storing own trait data locally, or for publishing them on a scientific database or filehosting service. By using the vocabulary for own data publications, authors can ensure the interoperability and re-use of their data. 
2. it can be used for harmonizing datasets from distributed sources, by mapping the heterogeneous data into the unified scheme provided by the vocabulary. Thus, it aids the development of trait-data compilations. 
3. it can be used to develop exchange formats for software and webservices, e.g. APIs, and to combine trait-data with other data-types. This aids the development of a semantic web of biodiversity data. 

The rationale of the ETS has been discussed in Schneider et al. 2018, Towards an Ecological Trait-data Standard, biorxiv.org DOI: [10.1101/328302](https://doi.org/10.1101/328302).

## fields

The vocabulary contains several fields which are defined as follows: 

| field        | definition                          |
|--------------|-------------------------------------|
| Namespace    | The collection of terms that the term is part of.   | 
| Identifier   | The Uniform Resource Identifier used to uniquely identify a term.  If the term is an exact duplicate from Darwin Core or other glossaries, Identifier will forward directly to this definition. |
| Refines      | If the definition builds on terms of the Darwin Core or other Glossaries, the original term is linked here (URI). |
| Replaces     | The URI of the term  that is replaced by this term. | 
| Deprecated   | Flagging deprecated terms. If TRUE, the term should not be used for new datasets, but will be maintained for compatibility. |
| ReplacedBy   | If a term is deprecated, this field provides the URI of the  replacement term. |
| FirstIssuedIn | The Version of the ETS this term has been first published (starting with v0.8 as the first public release version)  | 
| DateIssued   | The date when the term was defined for the first time within the ETS. | 
| DateModified | Reports the latest activity on this term.  | 
| Definition   | A statement that represents the concept and essential nature of the term.  | 
| Comment      | Clarification and examples. |

# Suggested Citation

To refer to **this version** of the ETS please cite: 
  
> Schneider, F.D., Jochum, M., Le Provost, G., Ostrowski, A., Penone, C. and Simons, N.K. (2018) Ecological Trait-data Standard Vocabulary, v0.8, URL: https://ecologicaltraitdata.github.io/ETS/v0.8/ , DOI: [10.5281/zenodo.1255287](https://doi.org/10.5281/zenodo.1255287)  

It is recommended to provide this versioned pointer from the metadata of datasets that apply the ETS. You can cite **all versions** of the ETS by using the DOI [10.5281/zenodo.1041732](https://doi.org/10.5281/zenodo.1041732). This will always resolve to the latest version.  

Please also cite the paper discussing the rationale of the Ecological Trait-data Standard: 

> Schneider, F.D., Jochum, M., Le Provost, G., Ostrowski, A., Penone, C., Fichtmüller, D., Gossner, M.M., Güntsch, A., König-Ries, B., Manning, P. and Simons, N.K. (2018) Towards an Ecological Trait-data Standard, biorxiv.org DOI: [10.1101/328302](https://doi.org/10.1101/328302) 


# Contribute to future development

The Ecological Traitdata Standard Vocabulary is under continuous and open community development, hosted on [Github](https://github.com/EcologicalTraitData/ETS). It invites submissions of new terms and extensions, and revisions of existing terms from a wide community of researchers working with trait data.
Please refer to the [Github Issues page](https://github.com/EcologicalTraitData/ETS/issues) for discussion and revision of individual terms, and settle the issue here before filing a pull-request that implements an update. 

## Versioning

**Current Version is 0.8**

Terminologies must provide a stability of definitions. If publications refer to the URI of a term, the definition found must be stable and be true to the definition intended by the author.

That said, definitions of terms can only be broadened or made more explicit, if the original sense of the definition remains valid. The discussion leading to a refinement of a term should consider this. If a definition changes substantially, it should receive an own URI and replace any redundant or deprecated terms. The deprecated terms will remain available at the same URI. 

At some point, a new major version of the Traitdata Standard may be issued, providing new versioned URIs for all terms of the standard that have been altered since the previous major version. 

## Contributors

The Ecological Trait-data Standard  was authored by Florian D. Schneider, Malte Jochum, Gaëtane Le Provost, Andreas Ostrowski, Caterina Penone, and Nadja Simons. It was ported to the GFBio Terminology Service by David Fichtmüller. 

Contributors: David Fichtmüller

## License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Ecological Traitdata Standard </span> by <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Florian D. Schneider, Malte Jochum, Gaëtane LeProvost, Caterina Penone, Andreas Ostrowski, Nadja K. Simons</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>. That means, you are free to use and re-use, modify and publish all texts and documents on this website, as long as you give attribution to its original source. 

