# Generating the ETS-OWL file

The ets.owl file is generated using [OpenRefine](http://openrefine.org). Here are the steps to reproduce the file. 

1. Create new Open Refine Project from URL: https://raw.githubusercontent.com/EcologicalTraitData/ETS/master/ETS.csv
    * Use UTF-8 Encoding, verify by checking the content of the Comment column for the term scientificNameSts for "Györfi"
2. Apply Processing Steps from Refine_Processing_Steps.grel
3. Prepare the Templating function by putting the content of the files Prefix.txt, Row_Template.txt and Suffix.txt in their respective input fields.
    * adjust the date, version and versionIRI in the prefix to the current release.
4. Export the file and save it as ets.owl
5. Validate output file in external XML validator.
6. Check for export issues by searching for "null" in the ouput file.