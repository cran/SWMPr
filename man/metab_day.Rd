% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metab_day.R
\name{metab_day}
\alias{metab_day}
\alias{metab_day.default}
\title{Identify metabolic days in a time series}
\usage{
metab_day(dat_in, ...)

\method{metab_day}{default}(dat_in, tz, lat, long, ...)
}
\arguments{
\item{dat_in}{data.frame}

\item{...}{arguments passed to or from other methods}

\item{tz}{chr string for timezone, e.g., 'America/Chicago'}

\item{lat}{numeric for latitude}

\item{long}{numeric for longitude (negative west of prime meridian)}
}
\description{
Identify metabolic days in a time series based on sunrise and sunset times for a location and date.  The metabolic day is considered the 24 hour period between sunsets for two adjacent calendar days.  The function calls the \code{\link[suncalc]{getSunlightTimes}} function from the suncalc package.
}
\details{
This function is only used within \code{\link{ecometab}} and should not be called explicitly.
}
\seealso{
\code{\link{ecometab}}, \code{\link[suncalc]{getSunlightTimes}}
}
