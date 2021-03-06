% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_quants.R
\name{plot_quants}
\alias{plot_quants}
\alias{plot_quants.swmpr}
\title{Create a plot of data for a single year overlaid on historical data.}
\usage{
plot_quants(swmpr_in, ...)

\method{plot_quants}{swmpr}(
  swmpr_in,
  paramtoplot,
  yr,
  yrstart,
  yrend,
  yaxislab = NULL,
  yrcolor = "red3",
  bgcolor1 = "lightgray",
  bgcolor2 = "gray65",
  maintitle = NULL,
  ...
)
}
\arguments{
\item{swmpr_in}{input swmpr object.}

\item{...}{additional arguments passed to or from other methods}

\item{paramtoplot}{chr string of parameter to plot}

\item{yr}{numeric of year to feature as a line on the plot}

\item{yrstart}{numeric of year to begin range of comparison data}

\item{yrend}{numeric of year to end range of comparison data}

\item{yaxislab}{chr string for y-axis albel. Default is \code{paramtoplot}.}

\item{yrcolor}{chr string of line color for year of interest}

\item{bgcolor1}{chr string of color for outer 50\% of data range}

\item{bgcolor2}{chr string of color for middle 50\% of data range.}

\item{maintitle}{chr string of plot title. Default pastes together site name, parameter name, year to feature, and range of years to use for comparison, e.g. 'GNDBHWQ 2017 Daily Average Temp overlaid on 2006-2016 daily averages'.}
}
\value{
A a \code{\link[ggplot2]{ggplot2}} object.
}
\description{
A line for a single year is plotted over ribbons ofquantiles for historical data.
}
\details{
The plot is based on aggregates of daily average values for the entire time series. Quantiles (min, 25\%, 75\%, max) for each individual calendar day (01/01, 01/02, ... 12/31) are used to generate a ribbon plot of historical data and the selected year in \code{yr} is plotted as a line over the ribbon for historical context.

required packages: dplyr, lubridate, ggplot2, tibble
}
\examples{
# qaqc
dat <- qaqc(apacpwq)

# generate a plot of salinity for 2013 overlaid on 2012-2013 data
plot_quants(dat, 'sal', yr = 2013, yrstart = 2012, yrend = 2013)

# change some of the defaults
plot_quants(dat, 'sal', yr = 2013, yrstart = 2012, yrend = 2013, 
 bgcolor1 = 'lightsteelblue2', bgcolor2 = 'lightsteelblue4', 
 yaxislab = 'Salinity (psu)')
}
\author{
Kimberly Cressman, Marcus Beck
}
\concept{analyze}
