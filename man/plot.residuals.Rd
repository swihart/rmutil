\name{plot.residuals}
\title{Plot Residuals}
\alias{plot.residuals}
\usage{
plot.residuals(z, x=NULL, subset=NULL, ccov=NULL, nind=NULL,
	recursive=TRUE, pch=20, ylab="Residual", xlab=NULL,
	main=NULL, ...)
}
\description{
\code{plot.residuals} is used for plotting residuals from models
obtained from dynamic models for given subsets of the data.
}
\arguments{
\item{z}{An object of class recursive, from \code{\link[growth]{carma}},
\code{\link[repeated]{gar}}, \code{\link[repeated]{kalcount}},
\code{\link[repeated]{kalseries}}, \code{\link[event]{kalsurv}}, or
\code{\link[repeated]{nbkal}}.}
\item{x}{Vector of of values for the x-axis. If missing, time is
used. It can also be specified by the strings "response" or "fitted".}
\item{subset}{A logical vector defining which observations are to be
used.}
\item{ccov}{If the name of a time-constant covariate is
supplied, separate plots are made for each distinct value of that
covariate.}
\item{nind}{Observation number(s) of individual(s) to be plotted.}
\item{recursive}{If TRUE, plot recursive residuals, otherwise ordinary
residuals.}
\item{others}{Plotting control options.}
}
\author{J.K. Lindsey}
\seealso{
\code{\link[growth]{carma}}, \code{\link[repeated]{gar}},
\code{\link[repeated]{kalcount}}, \code{\link[repeated]{kalseries}},
\code{\link[event]{kalsurv}}, \code{\link[repeated]{nbkal}}
\code{\link[rmutil]{plot.iprofile}}, \code{\link[rmutil]{plot.mprofile}}.}
\examples{
library(repeated)
times <- rep(1:20,2)
dose <- c(rep(2,20),rep(5,20))
mu <- function(p) exp(p[1]-p[3])*(dose/(exp(p[1])-exp(p[2]))*
	(exp(-exp(p[2])*times)-exp(-exp(p[1])*times)))
shape <- function(p) exp(p[1]-p[2])*times*dose*exp(-exp(p[1])*times)
conc <- matrix(rgamma(40,2,scale=mu(log(c(1,0.3,0.2)))/2),ncol=20,byrow=TRUE)
conc[,2:20] <- conc[,2:20]+0.5*(conc[,1:19]-matrix(mu(log(c(1,0.3,0.2))),
	ncol=20,byrow=TRUE)[,1:19])
conc <- ifelse(conc>0,conc,0.01)
z <- gar(conc, dist="gamma", times=1:20, mu=mu, shape=shape,
	preg=log(c(1,0.4,0.1)), pdepend=0.1, pshape=log(c(1,0.2)))
plot.residuals(z, subset=1:20, main="Dose 1")
plot.residuals(z, x="fitted", subset=1:20, main="Dose 1")
plot.residuals(z, x="response", subset=1:20, main="Dose 1")
}
\keyword{hplot}
