####### Render all Rmd files ###################################################
### Created: 190710 Author: Alfonso Garmendia  algarsal at upvnet dot upv dot es

### v0.0.1: working.
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#### Rmd files ####
lf <- list.files(pattern = "[.]rmd$|[.]Rmd$")
lf <- c(lf, "ok")

#### render all rmd files to html ####
# for (i in lf)
#     rmarkdown::render(i, output_format = "html_document")

#### render all rmd files to all formats included in yaml ####
for (files in lf)
    if (files != "ok")
        rmarkdown::render(files, output_format = "all")

#### Message ####
if (files == "ok")
    message("All documents rendered OK.")

if (files != "ok")
    message(paste(
        "ERROR: Rendered only until", files, ". Please fix errors and try again."))


