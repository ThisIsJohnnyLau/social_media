
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

# View tweets
twts_tedx %>% 
    relocate(text, screen_name)



# Extract tweets on "TEDxGlaClimate" and include retweets    
twts_tedx_climate <- search_tweets("TEDxGlaClimate", 
                                   n = 18000, 
                                   include_rts = TRUE, 
                                   lang = "en")

# View tweets
twts_tedx_climate %>% 
    relocate(text, screen_name)

twts_tedx %>% 
    write_as_csv(here("raw_data/twts_tedx.csv"), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

read_twitter_csv(here("raw_data/twts_tedx.csv"))

read_csv("raw_data/TEDxGlasgow_hashtags.csv")

climate_twts <- search_tweets("climate", n = 18000, include_rts = FALSE)

climate_twts %>% 
    write_as_csv(here("raw_data/climate_twts.csv"), prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")