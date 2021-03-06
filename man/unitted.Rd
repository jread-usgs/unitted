% Generated by roxygen2 (4.0.1): do not edit by hand
\docType{methods}
\name{u}
\alias{u}
\alias{unitted}
\alias{unitted,array-method}
\alias{unitted,data.frame-method}
\alias{unitted,list-method}
\alias{unitted,unitted-method}
\title{Attach units to data}
\usage{
u(object, units = NA, ...)

unitted(object, units = NA, ...)

\S4method{unitted}{data.frame}(object, units = NA, ...)

\S4method{unitted}{array}(object, units = NA, ...)

\S4method{unitted}{list}(object, units = NA, ...)

\S4method{unitted}{unitted}(object, units = NA, ...)
}
\arguments{
\item{object}{A vector, data.frame, array, matrix, list, or S4 object
containing data}

\item{units}{A specification of the units to attach to \code{object}. The
class and form of \code{units} depends on the class of \code{object}; see
Details}

\item{...}{Further arguments passed to unitbundle() for each unitted vector
or element created}
}
\description{
A \code{unitted} object is the fusion of data and units. The \code{unitted()}
function, or its alias \code{u()}, constructs an object inheriting from the
\code{\linkS4class{unitted}} class.
}
\details{
The short constructor name (\code{u}) makes it easy to write clean code that
enforces units consistency throughout your data analysis. The underlying
constructor function is called \code{unitted()} but aliased to \code{u()}.
Similarly, units can be removed from data using the \code{\link{deunitted}()}
function or its alias \code{\link{v}()}.

\subsection{Data.frames}{

  In a call to \code{unitted(object, units, ...)} where \code{object} is a
  non-unitted data.frame, \code{object} may contain columns that are
  non-unitted, unitted, or a mix.

  \code{units} may be one of three possibilities: (1) a character vector of
  unit strings or NAs, one per column of the data.frame, (2) a list of the
  same length as \code{ncol(object)} where each element is a units
  specification of one of the forms permitted by \code{\link{unitbundle}()},
  or (3) either NA or missing, indicating that units should be inferred from
  current units of the data.frame columns.

  If \code{object} contains some unitted columns, the units of those columns
  will be preserved if and only if the corresponding element of \code{units}
  is NA. To overwrite a previously unitted column's units with empty units,
  specify the new units for that column with "". Any non-unitted column with
  a corresponding NA in \code{units} is given units of "".

  Known issue: Attaching units to a data.frame with \code{unitted()} creates
  row names for the data.frame even if they were absent before. This is a
  known issue with no known resolution. In other respects, unitted
  data.frames behave very much like non-unitted data.frames.

  }

\subsection{Arrays and matrices}{

Arrays and matrices are currently only permitted to have one unit apiece.
This may change in the future; if this is a feature you want implemented,
please create an issue on GitHub with information about how you would use
multiple units in an array or matrix if the option were available.

}

\subsection{Lists}{

  Even non-unitted lists may contain unitted elements (or a mixture of
  unitted and non-unitted elements). However, there are advantages to
  defining the list itself as unitted - specifically, operations such as
  print(), show(), or arithmetic will treat the entire list as unitted,
  displaying and applying units as appropriate to each element.

  A unitted list, unlike a list of unitted elements, may have exactly one
  unitbundle for the entire list.

  }

\subsection{Already-unitted objects}{

  The \code{unitted} or \code{u} function may be used to replicate an
  already-unitted object or replace its units with new ones. When
  \code{object} is unitted and the \code{units} argument is \code{NA}, the
  constructor returns the data untouched. If the \code{units} argument is
  anything else, the call to \code{unitted()} replaces the units of
  \code{object} with the new units.

  }
}

