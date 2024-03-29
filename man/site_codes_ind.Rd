% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/site_codes_ind.R
\name{site_codes_ind}
\alias{site_codes_ind}
\title{Obtain metadata for a single reserve}
\usage{
site_codes_ind(nerr_site_id)
}
\arguments{
\item{nerr_site_id}{chr string of site, three letters}
}
\value{
An abbreviated \code{data.frame} of the SWMP metadata for the requested site
}
\description{
Get metadata for all the stations at a single SWMP reserve
}
\details{
This function retrieves data from the CDMO web services.  The computer making the request must have a registered IP address.  Visit the CDMO web services page for more information: \url{https://cdmo.baruch.sc.edu/webservices.cfm}. This function is the CDMO equivalent of \code{NERRFilterStationCodesXMLNew}.
}
\examples{
\dontrun{

## retrieve metadata for all stations at a site
site_codes_ind('apa')

}
}
\concept{retrieve}
