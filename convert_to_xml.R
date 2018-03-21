library(XML)

convertToXML <- function(df,name)
{
  xml <- XML::xmlTree("Test")
  xml$addNode(name, close=FALSE)
  for (i in 1:nrow(df)) {
    xml$addNode("value", close=FALSE)
    for (j in names(df)) {
      xml$addNode(j, df[i, j])
    }
    xml$closeTag()
  }
  xml$closeTag()
  return(xml)
}

glossary <- read.csv("TraitDataStandard.csv")

template <- convertToXML(glossary,"traitdatastandard")
XML::saveXML(template$value(), file = "TraitDataStandard.xml")


# convert to owl / read ontologies using ontologyIndex