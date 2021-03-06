% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Model.R
\name{CluesModel}
\alias{CluesModel}
\title{Create a CluesModel object}
\usage{
CluesModel(observed.lulc, explanatory.variables, predictive.models, time,
  demand, history = NULL, mask = NULL, neighbourhood = NULL,
  transition.rules, neighbourhood.rules = NULL, elasticity,
  iteration.factor = 1e-05, max.iteration = 1000, max.difference = 5,
  ave.difference = 5, ...)
}
\arguments{
\item{observed.lulc}{an LulcRasterStack}

\item{explanatory.variables}{an ExpVarRasterStack object}

\item{predictive.models}{a PredictiveModelList object}

\item{time}{numeric vector containing timesteps over which simulation will
occur}

\item{demand}{matrix with demand for each land use category in terms of number
of cells to be allocated. The first row should be the number of cells
allocated to the initial observed land use map (i.e. the land use map for
time 0)}

\item{history}{RasterLayer containing land use history (values represent the
number of years the cell has contained the current land use category)}

\item{mask}{RasterLayer containing binary values where 0 indicates cells
that are not allowed to change}

\item{neighbourhood}{an object of class NeighbRasterStack}

\item{transition.rules}{matrix with land use change decision rules}

\item{neighbourhood.rules}{numeric with neighbourhood decision rules}

\item{elasticity}{numeric indicating the elasticity of each land use category to
change. Elasticity varies between 0 and 1, with 0 indicating a low
resistance to change and 1 indicating a high resistance to change}

\item{iteration.factor}{TODO,}

\item{max.iteration}{The maximum number of iterations allowed at each time
step}

\item{max.difference}{The maximum allowable difference between demand and
allocated area}

\item{ave.difference}{The maximum allowable average difference across all land
uses}

\item{\dots}{additional arguments (none)}
}
\value{
A CluesModel object.
}
\description{
Methods to create a \code{CluesModel} object to supply to
\code{\link{allocate}}.
}
\examples{

## see lulcc-package examples
}
\references{
Verburg, P.H., Soepboer, W., Veldkamp, A., Limpiada, R., Espaldon, V., Mastura,
S.S. (2002). Modeling the spatial dynamics of regional land use: the CLUE-S
model. Environmental management, 30(3):391-405.
}
\seealso{
\code{\link{CluesModel-class}}, \code{\link{allocate}}
}
