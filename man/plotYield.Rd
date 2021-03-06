% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\docType{methods}
\name{plotYield}
\alias{plotYield}
\alias{plotYield,MizerSim,missing-method}
\alias{plotYield,MizerSim,MizerSim-method}
\title{Plot the total yield of species through time}
\usage{
plotYield(sim, sim2, ...)

\S4method{plotYield}{MizerSim,missing}(sim,
  species = as.character(sim@params@species_params$species),
  print_it = TRUE, total = FALSE, log = TRUE, ...)

\S4method{plotYield}{MizerSim,MizerSim}(sim, sim2,
  species = as.character(sim@params@species_params$species),
  print_it = TRUE, total = FALSE, log = TRUE, ...)
}
\arguments{
\item{sim}{An object of class \linkS4class{MizerSim}}

\item{sim2}{An optional second object of class \linkS4class{MizerSim}. If
this is provided its yields will be shown on the same plot in bolder lines.}

\item{...}{Other arguments to pass to \code{getYield} method}

\item{species}{Name or vector of names of the species to be plotted. By
default all species contained in \code{sim} are plotted.}

\item{print_it}{Display the plot, or just return the ggplot2 object.
Defaults to TRUE}

\item{total}{A boolean value that determines whether the total yield from
all species in the system is plotted as well. Default is FALSE}

\item{log}{Boolean whether yield should be plotted on a logarithmic axis. 
Defaults to true.}
}
\value{
A ggplot2 object
}
\description{
After running a projection, the total yield of each species across all 
fishing gears can be plotted against time. The yield is obtained with
\code{\link{getYield}}.

Plot the yield using a \code{MizerSim} object.

Plot the yield using two \code{MizerSim} objects.
}
\examples{
\dontrun{
data(NS_species_params_gears)
data(inter)
params <- MizerParams(NS_species_params_gears, inter)
sim <- project(params, effort=1, t_max=20, t_save = 0.2)
plotYield(sim)
plotYield(sim, species = c("Cod", "Herring"), total = TRUE)

# Comparing with yield from twice the effort
sim2 <- project(params, effort=2, t_max=20, t_save = 0.2)
plotYield(sim, sim2, species = c("Cod", "Herring"), log = FALSE)
}
}
\seealso{
\code{\link{getYield}}
}
