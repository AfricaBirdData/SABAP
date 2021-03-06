% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getSabapData.R
\name{getSabapData}
\alias{getSabapData}
\title{Download data from SABAP2 cards for a region and species}
\usage{
getSabapData(
  .spp_code,
  .region_type = c("country", "province", "pentad"),
  .region,
  .years = NULL,
  .adhoc = FALSE
)
}
\arguments{
\item{.spp_code}{Character string or integer corresponding to the SABAP2 code
of the species of interest. See searchSabapSpecies.}

\item{.region_type}{The type of region we are interested on.
Three options: "country", "province" and "pentad".}

\item{.region}{A character string corresponding to the specific region we are
interested in. It can be either a country in Southern Africa, a South African
province or a pentad code.}

\item{.years}{A numeric vector with elements corresponding to the years we
want data for.}

\item{.adhoc}{If TRUE, \strong{only} ad-hoc lists are returned. Defaults to FALSE.}
}
\value{
A tibble in which each row corresponds to one SABAP2 card. The column
'Spp' gives either the code of the species of interest, if it was detected
in that card, or "-" if it wasn't.
}
\description{
Download data from SABAP2 cards for a region and species
}
\examples{
getSabapData(123, .region_type = "country", .region = "South Africa")
getSabapData(169, .region_type = "province", .region = "Eastern Cape", .years = 2008)
getSabapData(95, .region_type = "pentad", .region = "2505_2850", .years = c(2008, 2009))
}
