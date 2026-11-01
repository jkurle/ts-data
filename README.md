# Time Series Course Data

This repository contains curated teaching datasets for the time-series
econometrics course. The files are derived from the sources documented below.

The data have been downloaded, filtered, reformatted, and saved as `.rds`
files by the course author. The transformations include selecting Germany and
the relevant variables (for GDP, two units and seasonal adjustments), removing
missing observations, and converting the
DWD temperature file into a two-column time-series dataset. These files are
not the original source files and should be cited together with their original
sources.

## Sources and reuse conditions

### German GDP and consumption

Source dataset: Eurostat, `namq_10_gdp`, *GDP and main components (output,
expenditure and income)*:

<https://ec.europa.eu/eurostat/databrowser/view/namq_10_gdp/>

Three series are retrieved for Germany (`DE`):

- `gdp.rds` (accessed 16 September 2026): gross domestic product (`B1GQ`),
  current prices in million euro (`CP_MEUR`), seasonally and calendar
  unadjusted (`NSA`).
- `gdp_clv.rds` (accessed 31 October 2026): gross domestic product (`B1GQ`),
  chain-linked volumes, reference year 2010, in million euro (`CLV10_MEUR`),
  seasonally and calendar adjusted (`SCA`). This is real GDP, i.e. adjusted
  for price changes.
- `cons_clv.rds` (accessed 1 November 2026): final consumption expenditure of
  households and non-profit institutions serving households (`P31_S14_S15`),
  chain-linked volumes, reference year 2010, in million euro (`CLV10_MEUR`),
  seasonally and calendar adjusted (`SCA`). This is real private consumption.

Eurostat authorises reuse of its statistical data for commercial and
non-commercial purposes provided that the source is acknowledged. Eurostat’s
reuse policy also requires modifications to the data to be stated clearly.
These curated files are therefore redistributed under the applicable Eurostat /
European Commission reuse policy, with the transformations described above.

### Harmonised consumer prices

Source dataset: Eurostat, `prc_hicp_minr`, *Harmonised index of consumer prices
(HICP) – ECOICOP ver. 2 – indices and rates of change, monthly data*, accessed
16 September 2026:

<https://ec.europa.eu/eurostat/databrowser/view/prc_hicp_minr/>

The retrieved series is Germany (`DE`), all-items HICP (`TOTAL`), index
(`I15`, 2015=100).

Eurostat authorises reuse of its statistical data for commercial and
non-commercial purposes provided that the source is acknowledged, and asks
that modifications be identified clearly. This curated file is redistributed
under the applicable Eurostat / European Commission reuse policy, with the
transformations described above.

This is the current monthly HICP dataset using the ECOICOP version 2
classification. Eurostat introduced ECOICOP version 2 in 2026 and provides
the complete time series under this new classification.

### German annual temperature

Source dataset: Deutscher Wetterdienst (DWD), Climate Data Center, *Annual
regional averages of air temperature (annual mean) in °C (2 m above ground)*,
Germany, accessed 16 September 2026:

<https://opendata.dwd.de/climate_environment/CDC/regional_averages_DE/annual/air_temperature_mean/regional_averages_tm_year.txt>

The accompanying dataset description is available at:

<https://opendata.dwd.de/climate_environment/CDC/regional_averages_DE/annual/air_temperature_mean/DESCRIPTION_regional_averages_DE_annual_air_temperature_mean_en.pdf>

The original file contains annual regional averages for German federal states
and combinations of states, as well as the Germany-wide series. The curated
file retains the year and `Deutschland` columns and converts the year to an R
`Date` representing 1 January of that year.

The DWD CDC OpenData terms apply the Creative Commons Attribution 4.0
International licence (CC BY 4.0). This curated file is redistributed under
CC BY 4.0, with attribution to DWD and with the transformations described
above.

## Attribution

When using these files, please retain the relevant source attribution and
licence information above. Eurostat’s recommended citation for a customised
dataset is the dataset datacode link and access date. The DWD dataset should be
cited by its title, version where available, and access date.
