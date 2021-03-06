% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nl_suggest.R
\name{nl_suggest}
\alias{nl_suggest}
\title{Get a list of suggestions for geolocations in NL}
\usage{
nl_suggest(q, ..., rows = NULL, type = NULL, verbose = FALSE,
  fl = NULL, sort = NULL, qf = NULL, bq = NULL)
}
\arguments{
\item{q}{search terms that should be geolocated}

\item{...}{parameters passed to geolocation service}

\item{rows}{maximum number of rows to be returned. Default is 10.}

\item{type}{restrict type of geolocation to a type (see details for possible types)}

\item{verbose}{Should the functions print messages on what it is retrieving.}

\item{fl}{the columns that should be returned (aka select on columms of result)}

\item{sort}{how the data should be sorted}

\item{qf}{the fields that should be queried}

\item{bq}{the boosting of the query.}
}
\value{
The result of the pdok suggest webservice converted to a R list object.
}
\description{
\code{nl_suggest} returns a list of suggestions for a location description.
}
\details{
\code{type} can be one or more of the following: "provincie", "gemeente"
, "woonplaats", "weg", "postcode", "adres", "perceel", "hectometerpaal",
"wijk", "buurt", "waterschapsgrens", "appartementsrecht".
}
\examples{
sug <- nl_suggest("Henri Faasdreef")

# how many objects have a score?
sug$response$numFound

# get suggestions
sug$response$docs
}
