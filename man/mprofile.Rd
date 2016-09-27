\name{mprofile}
\title{Produce Marginal Time Profiles for Plotting}
\usage{
zz <- mprofile(z, times=NULL, mu=NULL, ccov, plotse=TRUE)
plot(zz, nind=1, intensity=FALSE, add=FALSE, ylim=c(min(z$pred),max(z$pred)),
	lty=NULL, ylab="Fitted value", xlab="Time", ...)
}
\alias{mprofile}
\alias{plot.mprofile}
\description{
\code{mprofile} is used for plotting marginal profiles over time
for models obtained from dynamic models, for given fixed values of
covariates. These are either obtained from those supplied by the
model, if available, or from a function supplied by the user.

See \code{\link[rmutil]{iprofile}} for plotting individual profiles from
recursive fitted values.
}
\arguments{
\item{z}{An object of class \code{recursive}, from \code{\link[growth]{carma}},
\code{\link[growth]{elliptic}}, \code{\link[repeated]{gar}},
\code{\link[repeated]{kalcount}}, \code{\link[repeated]{kalseries}},
\code{\link[event]{kalsurv}}, or \code{\link[repeated]{nbkal}}.}
\item{zz}{An object of class \code{mprofile}/}
\item{times}{Vector of time points at which profiles are to be plotted.}
\item{mu}{The location regression as a function of the parameters and
the times for the desired covariate values.}
\item{ccov}{Covariate values for the profiles (\code{\link[growth]{carma}}
only).}
\item{plotse}{If TRUE, plot standard errors
(\code{\link[growth]{carma}} only).}
\item{nind}{Observation number(s) of individual(s) to be plotted. (Not
used if \code{mu} is supplied.)}
\item{intensity}{If TRUE, the intensity is plotted instead of the time
between events. Only for models produced by \code{\link[event]{kalsurv}}.}
\item{add}{If TRUE, add contour to previous plot instead of creating a
new one.}
\item{others}{Plotting control options.}
}
\value{
\code{mprofile}  returns information ready for plotting by
\code{plot.mprofile}.
}
\author{J.K. Lindsey}
\seealso{
\code{\link[growth]{carma}}, \code{\link[growth]{elliptic}},
\code{\link[repeated]{gar}}, \code{\link[repeated]{kalcount}},
\code{\link[repeated]{kalseries}}, \code{\link[event]{kalsurv}},
\code{\link[repeated]{nbkal}} \code{\link[rmutil]{iprofile}},
\code{\link[rmutil]{plot.residuals}}.
}
\examples{
library(repeated)
times <- rep(1:20,2)
dose <- c(rep(2,20),rep(5,20))
mu <- function(p) exp(p[1]-p[3])*(dose/(exp(p[1])-exp(p[2]))*
	(exp(-exp(p[2])*times)-exp(-exp(p[1])*times)))
shape <- function(p) exp(p[1]-p[2])*times*dose*exp(-exp(p[1])*times)
conc <- matrix(rgamma(40,1,scale=mu(log(c(1,0.3,0.2)))),ncol=20,byrow=TRUE)
conc[,2:20] <- conc[,2:20]+0.5*(conc[,1:19]-matrix(mu(log(c(1,0.3,0.2))),
	ncol=20,byrow=TRUE)[,1:19])
conc <- ifelse(conc>0,conc,0.01)
z <- gar(conc, dist="gamma", times=1:20, mu=mu, shape=shape,
	preg=log(c(1,0.4,0.1)), pdepend=0.5, pshape=log(c(1,0.2)))
# plot individual profiles and the average profile
plot(iprofile(z), nind=1:2, pch=c(1,20), lty=3:4)
plot(mprofile(z), nind=1:2, lty=1:2, add=TRUE)
}
\keyword{hplot}
