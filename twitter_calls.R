
# Load libraries
library(tidyverse)
library(httpuv)
library(rtweet)
library(readr)
library(here)
library(rjson)



# Extract tweets on "#TedXGlasgow" and include retweets    
twts_tedx <- search_tweets("TEDxGlasgow", 
                           n = 18000, 
                           include_rts = TRUE, 
                           lang = "en")


# Extract tweets on "TEDxGlaClimate" and include retweets    
# twts_tedx_climate <- search_tweets("TEDxGlaClimate", 
#                                    n = 18000, 
#                                    include_rts = TRUE, 
#                                    lang = "en")

twts_tedx %>% 
    write_as_csv(here("raw_data/twts_tedx_15112020.csv"), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

climate_twts <- search_tweets("climate", n = 18000, include_rts = FALSE)

climate_twts %>% 
    write_as_csv(here("raw_data/climate_twts_15112020.csv"), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")