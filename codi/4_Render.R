

###             Generació d'informe                   ##############

rm(list=ls())
year<-"2018"
rmarkdown::render(input="./codi/3_Preval_Analisis.Rmd",
                  params = list(dir_dades="dades", year= year),
                  output_file=here::here("outputs",paste0("Informe",year)))


## Generació d'informes llista d'anys

## Format HTML
for (i in 2010:2018) {
  year<-as.character(i)
  rmarkdown::render(input="./codi/3_Preval_Analisis.Rmd",
                    params = list(dir_dades="dades", year= year),
                    output_file=here::here("outputs",paste0("Informe",year)))
  }


## Format PDF
for (i in 2010:2018) {
  year<-as.character(i)
  rmarkdown::render(input="./codi/3_Preval_Analisis.Rmd",
                    params = list(dir_dades="dades", year= year),
                    output_file=here::here("outputs",paste0("Informe",year)),
                    output_format = c("pdf_document"))
  }