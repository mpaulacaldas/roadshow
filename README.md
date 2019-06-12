# ThinkR RStudio workshop

Personal notes taken during the workshop.

## Introduction by Dave Hurst from RStudio


- New product: RStudio Team. Will include RStudio Server Pro  + RStudio Connect + RStudio Package Manager.
- RStudio Connect will replace Shiny Server Pro.

## Workshop: Développement d'application avec {golem} et déploiement avec RStudio Connect, Colin Fay from ThinkR

Github: https://github.com/thinkr-open/golem-workshop

Main advantages of the workflow:

- Versions -> Included in the metadata. We currently use git tags.
- DESCRIPTION/NAMESPACE -> To replace our session infos.

Misc:

- They are working on a keyboard shortcut to run `run_dev.R` and kill the current Shiny app.
- Shiny modules are great for project management: different people can work on different parts of the app in isolation. However, someone has to pre-define the overall structure of the app.

Questions for another time:

- What are the main {golem} options that I can set up in my `.Renviron` or `.Rprofile`? 
- Now that I think of it, I think that they did not fully understand my question. Why is the default `use_data_raw()` and not `use_data()`? I get that we can keep treatment scripts in `data-raw/`, but I prefer to have clean, R readable data in `data/`. Is there a particular reason why `data/` is not supported?

## Workshop: Deploying TensorFlow models and APIs to Production, Andrie de Vries from RStudio

Github: https://github.com/sol-eng/immunotherapy

<details>
  <summary> Session info in RStudio Connect instance </summary>

  ```r
  ─ Session info ─────────────────────────────────────────────────────────────
   setting  value                       
   version  R version 3.5.1 (2018-07-02)
   os       Ubuntu 18.04.2 LTS          
   system   x86_64, linux-gnu           
   ui       RStudio                     
   language (EN)                        
   collate  C.UTF-8                     
   ctype    C.UTF-8                     
   tz       Etc/UTC                     
   date     2019-06-06                  
  
  ─ Packages ─────────────────────────────────────────────────────────────────
   package     * version      date       lib
   assertthat    0.2.1        2019-03-21 [2]
   backports     1.1.4        2019-04-10 [2]
   base64enc     0.1-3        2015-07-28 [2]
   callr         3.2.0        2019-03-15 [2]
   cli           1.1.0        2019-03-19 [2]
   config        0.3          2018-03-27 [2]
   crayon        1.3.4        2017-09-16 [2]
   curl          3.3          2019-01-10 [2]
   desc          1.2.0        2018-05-01 [2]
   devtools      2.0.2        2019-04-08 [2]
   digest        0.6.19       2019-05-20 [2]
   dplyr         0.8.1        2019-05-14 [2]
   fs            1.3.1        2019-05-06 [2]
   generics      0.0.2        2018-11-29 [2]
   glue          1.3.1        2019-03-12 [2]
   httr        * 1.4.0        2018-12-11 [2]
   jsonlite      1.6          2018-12-07 [2]
   keras         2.2.4.1.9001 2019-06-05 [2]
   lattice       0.20-38      2018-11-04 [2]
   magrittr      1.5          2014-11-22 [2]
   Matrix        1.2-17       2019-03-22 [2]
   memoise       1.1.0        2017-04-21 [2]
   packrat       0.5.0        2018-11-14 [2]
   pillar        1.4.1        2019-05-28 [2]
   pkgbuild      1.0.3        2019-03-20 [2]
   pkgconfig     2.0.2        2018-08-16 [2]
   pkgload       1.0.2        2018-10-29 [2]
   prettyunits   1.0.2        2015-07-13 [2]
   processx      3.3.1        2019-05-08 [2]
   ps            1.3.0        2018-12-21 [2]
   purrr       * 0.3.2        2019-03-15 [2]
   R6            2.4.0        2019-02-14 [2]
   Rcpp          1.0.1        2019-03-17 [2]
   remotes       2.0.4        2019-04-10 [2]
   reticulate    1.12         2019-04-12 [2]
   rlang         0.3.4        2019-04-07 [2]
   rprojroot     1.3-2        2018-01-03 [2]
   rstudioapi    0.10         2019-03-19 [2]
   sessioninfo   1.1.1        2018-11-05 [2]
   tensorflow    1.13.1.9000  2019-06-05 [2]
   testthat      2.1.1        2019-04-23 [2]
   tfruns        1.4.0.9000   2019-06-05 [2]
   tibble        2.1.2        2019-05-29 [2]
   tidyselect    0.2.5        2018-10-11 [2]
   usethis       1.5.0        2019-04-07 [2]
   whisker       0.3-2        2013-04-28 [2]
   withr         2.1.2        2018-03-15 [2]
   yaml          2.2.0        2018-07-25 [2]
   zeallot       0.1.0        2018-01-28 [2]
   source                             
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   Github (rstudio/keras@c4a4a57)     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   Github (rstudio/tensorflow@ffa09e3)
   CRAN (R 3.5.1)                     
   Github (rstudio/tfruns@0c43abb)    
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
   CRAN (R 3.5.1)                     
  
  [1] /home/rstudio-user/R/x86_64-pc-linux-gnu-library/3.5
  [2] /opt/R/3.5.1/lib/R/library
  ```

</details>

<br/>

- TensorFlow will soon have some of the bayesian statistical models that are now in Stan.
- IT people should be familiar with swagger APIs.
- :fire: Have a look at the {config} R package. Good way of managing environment variables in real-world projects.
- :warning: Although it is done in this workshop, you should never send API send and get requests without authentification.
- :bulb: Deploy calculations to API, then have Shiny app only as a UI that calls to the API for the calculations. I think this could be 

## Harvesting value: R, Python and the future of Open Analytics, Dave Hurst

Arguments in favour of code against point-and-click tools:

- Repeatable
- Inspectable
- Reusable

> "Code is communication, and communication is critical". Tareef, RStudio.

Open source:

- Accessible
- Collaborative
- Trusted
- Ownership (no lock-in)


Difference between R and Python users (see figure in slides):

- Python users start good in access, and then some may get really good at communication.
- R users start in the communication stage, and then may get more interested in the lower-level stuff later.

Key is to have interoperability: 

- See https://solutions.rstudio.com/python/overview/ for more.
- You can have Jupyter notebooks and pubish to RStudio Connect.

## Building a data lab service with R STudio products, Christophe Dervieux from RTE

Slides: https://speakerdeck.com/cderv/building-a-datalab-service

- Role of R Admin: Appui aux équipes de DS et aux dévéloppeurs.
- Not an advertised position. Avant il faisait des études économiques.
- Comment arrive-t-on à avoir des pratiques communes? La personne en "IT" peut être le lien pour le reste de l'équipe.
- Offres de services du DataLab: suivi (leur aider à faire leur Rmd before they veer into the wrong direction), formation (démos, tutoriels), user-centric approach (users are other teams).
