# Contribute to future development of the ETS

The Ecological Traitdata Standard Vocabulary is under continuous and open community development, hosted on [Github](https://github.com/EcologicalTraitData/ETS). It invites submissions of new terms and extensions, and revisions of existing terms from a wide community of researchers working with trait data.
Please refer to the [Github Issues page](https://github.com/EcologicalTraitData/ETS/issues) for discussion and revision of individual terms, and settle the issue here before filing a pull-request that implements an update. 

# Name scheme for new terms

New terms should be labelled using lower camel case (i.e. with a lower case letter at the start and then upper case letters to separate words, e.g. "camelCase"). For new classes, (i.e. names of extensions) use upper camel case (e.g. "Metadata"). This is conventional for ontologies for use in the semantic web. 

# File format

The original source file is [ETS.csv](https://github.com/EcologicalTraitData/ETS/blob/master/ETS.csv), defining the terms and containing the URIs. When editing this file, make sure it is saved with **comma as field separator**, **decimal points**, and using **double quotes** to envelope long text character strings. Standard Date format is ISO 8601, YYYY-MM-DD. 

# Versioning

Terminologies must provide stability of definitions. If publications refer to the URI of a term, the definition found must be stable and be true to the definition intended by the author.
That said, definitions of terms can only be broadened or made more explicit, if the original sense of the definition remains valid. The discussion leading to a refinement of a term should consider this.  

Revisions of terms will be labelled as a fix, but don't prompt a new minor release unless the functionality of the standard is compromised (that would be  issued as a patch). 

Updates of the terms will be collected and issued in minor releases of the ETS on the GFBio terminology service. 

A major release will only be issued if the new terms are incompatible with previous versions. If a definition changes substantially, it will receive an own URI and point to redundant or deprecated terms. Out-dated terms will remain available at the original URI.

Major version 1.0 is aimed to be released in 2019 as a result of a community discussion (see [milestone 1.0 on Github issues](https://github.com/EcologicalTraitData/ETS/milestones?with_issues=no)). 

