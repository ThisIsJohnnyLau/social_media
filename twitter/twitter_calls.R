
# Load libraries
library(tidyverse)
library(httpuv)
library(rtweet)
library(readr)
library(here)
library(rjson)



# Extract tweets on "#TedXGlasgow" and include retweets    
twts_tedx <- search_tweets("@TEDxGlasgow", 
                           n = 18000, 
                           include_rts = TRUE, 
                           lang = "en")


# Extract tweets on "TEDxGlaClimate" and include retweets    
# twts_tedx_climate <- search_tweets("TEDxGlaClimate", 
#                                    n = 18000, 
#                                    include_rts = TRUE, 
#                                    lang = "en")
twts_tedx %>% 
    write_as_csv(file_name = here(paste0("raw_data/twts_tedx", "_", format(Sys.Date(), "%d%m%Y"), ".csv")), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")


twts_climateaction <- search_tweets("#climateaction", n = 18000, include_rts = TRUE)

twts_climateaction %>% 
    write_as_csv(file_name = here(paste0("raw_data/twts_climateaction", "_", format(Sys.Date(), "%d%m%Y"), ".csv")), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")



twts_food <- search_tweets("#food", n = 15000, include_rts = TRUE)

twts_food %>% 
    write_as_csv(file_name = here(paste0("raw_data/twts_food", "_", format(Sys.Date(), "%d%m%Y"), ".csv")), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

twts_lifestyle<- search_tweets("#lifestyle", n = 15000, include_rts = TRUE)

twts_lifestyle %>% 
    write_as_csv(file_name = here(paste0("raw_data/twts_lifestyle", "_", format(Sys.Date(), "%d%m%Y"), ".csv")), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

twts_home<- search_tweets("#home", n = 15000, include_rts = TRUE)

twts_home %>% 
    write_as_csv(file_name = here(paste0("raw_data/twts_home", "_", format(Sys.Date(), "%d%m%Y"), ".csv")), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

twts_travel<- search_tweets("#travel", n = 15000, include_rts = TRUE)

twts_travel %>% 
    write_as_csv(file_name = here(paste0("raw_data/twts_travel", "_", format(Sys.Date(), "%d%m%Y"), ".csv")), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")


# Extract tweets on "#TedXGlasgow" and include retweets    
twts_COP26Action <- search_tweets("#COP26Action", 
                           n = 18000, 
                           include_rts = TRUE, 
                           lang = "en")


twts_COP26Action %>% 
    write_as_csv(file_name = here(paste0("raw_data/twts_COP26Action", "_", format(Sys.Date(), "%d%m%Y"), ".csv")), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")


# Extract tweets on "#TedXGlasgow" and include retweets    
twts_COP26<- search_tweets("@COP26", 
                                  n = 18000, 
                                  include_rts = TRUE, 
                                  lang = "en")


twts_COP26 %>% 
    write_as_csv(file_name = here(paste0("raw_data/twts_COP26", "_", format(Sys.Date(), "%d%m%Y"), ".csv")), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")