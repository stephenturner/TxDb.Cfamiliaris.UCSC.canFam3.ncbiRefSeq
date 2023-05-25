\name{TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq}
\docType{package}

\alias{TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq-package}
\alias{TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq}
\alias{TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq}


\title{Annotation package for TxDb object(s)}

\description{  
  This package loads one or more TxDb objects.  Such TxDb
  objects are an R interface to prefabricated databases contained by
  this package.

  The names of any objects exposed by this package indicate the origin and
  resources exposed.  So for example TxDb.Hsapiens.UCSC.hg19.knownGene
  would be a TxDb object, of Homo sapiens data from UCSC build
  hg19 based on the knownGene Track.
}

\note{
  This data package was made from resources at UCSC Genome Browser on
  2023-05-25 15:03:26 -0400 (Thu, 25 May 2023) and based on the canFam3
}

\author{Stephen Turner <no-reply@accounts.google.com> [cre]}


\seealso{
  \link[GenomicFeatures]{transcripts},
  \link[GenomicFeatures]{transcriptsBy}
}

\examples{
## load the library
library(TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq)
## list the contents that are loaded into memory
ls('package:TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq')
## show the db object that is loaded by calling it's name
TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq

}

\keyword{package}
\keyword{data}
