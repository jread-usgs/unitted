% Generated by roxygen2 (4.0.1): do not edit by hand
\name{unitted_math}
\alias{Math}
\alias{Math.unitted}
\alias{unitted_math}
\title{Group "Math" functions}
\usage{
\method{Math}{unitted}(x, ..., check.input.units = TRUE)
}
\arguments{
\item{x}{A vector (probably numeric or complex)}

\item{...}{Other arguments passed to the specific Math function}

\item{check.units}{logical. Should the units of x be checked for
compatibility with the specific Math function? Functions abs, floor,
ceiling, trunc, round, signif, and sqrt accept any units. Functions exp,
log, expm1, log1p, acos, asin, atan require that inputs are unitless.
Functions cos, sin, and tan require that inputs are "radians".}
}
\description{
Implements the S3 group generic, Math
}

