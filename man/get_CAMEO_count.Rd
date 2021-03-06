% Generated by roxygen2 (4.0.1): do not edit by hand
\name{get_CAMEO_count}
\alias{get_CAMEO_count}
\title{Get the count of events based on CAMEO codes.}
\usage{
get_CAMEO_count(conn, cameo.codes, date = NULL, source.country = NULL,
  target.country = NULL)
}
\arguments{
\item{conn}{A MySQL connection to the ICEWS database. Supply your credentials
to \code{conn <- dbConnect(MySQL(), user="username", password="password",
dbname="event_data", host="our.host.ip")}}

\item{cameo.codes}{A string vector of the CAMEO codes}

\item{date}{A string in the YYYYMMDD format. If \code{NULL}, will count events on
any date}

\item{source.country}{A string specifying the ISOA3Code of the source country.
If \code{NULL}, will count events from all countries}

\item{target.country}{A string specifying the ISOA3Code of the target country.
If \code{NULL}, will count events targeted at all countries}
}
\description{
\code{get_CAMEO_count} returns the count of all the events that have
a specified CAMEO code
}
\details{
This function takes one (or several) CAMEO codes, a date, and two
vectors for source and target countries. It will return the count of events
that have the specified CAMEO code and that happen between the source and
target countries on the given date.
}

