# install.packages("eurostat")
# install.packages("tidyverse")
library(eurostat)
library(tidyverse)

# download GDP data
gdp <- get_eurostat(
  id = "namq_10_gdp",
  filters = list(
    unit = "CP_MEUR",
    geo = "DE",
    na_item = "B1GQ",
    s_adj = "NSA"
  )
) |> 
  select(time, values) |> 
  rename(gdp = values) |> 
  drop_na()

# download hicp
hicp <- get_eurostat(
  id = "prc_hicp_minr",
  filters = list(
    unit = "I15",
    geo = "DE",
    coicop18 = "TOTAL"
  )
) |> 
  select(time, values) |> 
  rename(hicp = values) |> 
  drop_na()

# donwload temperature data
link <- "https://opendata.dwd.de/climate_environment/CDC/regional_averages_DE/annual/air_temperature_mean/regional_averages_tm_year.txt"
temp <- read_delim(
  file = link,
  delim = ";",
  escape_double = FALSE,
  trim_ws = TRUE, 
  skip = 1
) |> 
  select(`Jahr...1`, "Deutschland") |> 
  mutate(year = as.Date(paste0(`Jahr...1`, "-01-01"))) |> 
  rename(temperature = Deutschland) |> 
  select(year, temperature)

# save data
saveRDS(gdp, file = "./data/gdp.rds")
saveRDS(hicp, file = "./data/hicp.rds")
saveRDS(temp, file = "./data/temp.rds")



