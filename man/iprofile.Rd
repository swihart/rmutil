\name{iprofile}
\title{Produce Individual Time Profiles for Plotting}
\usage{
zz <- iprofile(z, plotsd=FALSE)
plot(zz, nind=1, observed=TRUE, intensity=F,
	add=FALSE, lty=NULL, pch=NULL, ylab=NULL, xlab=NULL,
	main=NULL, ylim=NULL, xlim=NULL, ...)
}
\alias{iprofile}
\alias{plot.iprofile}
\description{
\code{iprofile} is used for plotting individual profiles over time
for objects obtained from dynamic models. It produces output for
plotting recursive fitted values for individual time profiles from
such models.

See \code{\link[rmutil]{mprofile}} for plotting marginal profiles.
}
\arguments{
\item{z}{An object of class \code{recursive}, from
\code{\link[growth]{carma}}, \code{\link[growth]{elliptic}},
\code{\link[repeated]{gar}}, \code{\link[repeated]{kalcount}},
\code{\link[repeated]{kalseries}}, \code{\link[event]{kalsurv}}, or
\code{\link[repeated]{nbkal}}.}
\item{zz}{An object of class \code{iprofile}.}
\item{plotsd}{If TRUE, plots standard deviations around profile
(\code{\link[growth]{carma}} and \code{\link[growth]{elliptic}} only).}
\item{nind}{Observation number(s) of individual(s) to be plotted.}
\item{observed}{If TRUE, plots observed responses.}
\item{intensity}{If z has class, \code{kalsurv}, and this is TRUE, the
intensity is plotted instead of the time between events.}
\item{add}{If TRUE, the graph is added to an existing plot.}
\item{others}{Plotting control options.}
}
\value{
\code{iprofile} returns information ready for plotting by
\code{plot.iprofile}.
}
\author{J.K. Lindsey}
\seealso{
\code{\link[growth]{carma}}, \code{\link[growth]{elliptic}},
\code{\link[repeated]{gar}}, \code{\link[repeated]{kalcount}},
\code{\link[repeated]{kalseries}}, \code{\link[event]{kalsurv}},
\code{\link[repeated]{nbkal}} \code{\link[rmutil]{mprofile}}
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
