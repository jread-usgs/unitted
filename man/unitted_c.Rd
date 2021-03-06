% Generated by roxygen2 (4.0.1): do not edit by hand
\docType{methods}
\name{unitted_c}
\alias{c.unitted}
\alias{unitted_c}
\title{Combine unitted elements into a unitted vector}
\usage{
\S4method{c}{unitted}(x, ..., recursive = FALSE)

\method{c}{unitted}(..., recursive = FALSE)
}
\arguments{
\item{...}{objects to be concatenated.}

\item{recursive}{logical.  If \code{recursive = TRUE}, the function
    recursively descends through lists (and pairlists) combining all
    their elements into a vector.}
}
\value{
A unitted vector
}
\description{
This function takes one or more unitted elements and combines them into a
single unitted vector. To enforce units integrity, the function requires that
all elements passed to the S3 or S4 versions of c.unitted() must have the
same units, at least when recursive=FALSE. When recursive=TRUE, elements may
include lists or data.frames, but the base elements (vectors, columns, etc.)
of those list elements must still be unitted.

To avoid repeating code, the S3 function simply calls the S4 method.
}
\details{
The S4 method for c<<unitted>> will be found first (before other c() methods)
whenever the first argument is unitted.
}
\seealso{
Other unitted object manipulation: \code{\link{bind}},
  \code{\link{cbind}}, \code{\link{cbind.unitted}},
  \code{\link{rbind}}, \code{\link{rbind.unitted}},
  \code{\link{unitted_bind}}, \code{\link{unitted_cbind}},
  \code{\link{unitted_rbind}};
  \code{\link{merge,ANY,unitted-method}},
  \code{\link{merge,unitted,ANY-method}},
  \code{\link{unitted_merge}}; \code{\link{rep.unitted}},
  \code{\link{rep.unitted_data.frame}},
  \code{\link{unitted_rep}}
}

