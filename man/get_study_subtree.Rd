% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/studies.R
\name{get_study_subtree}
\alias{get_study_subtree}
\title{Study Subtree}
\usage{
get_study_subtree(study_id, tree_id, subtree_id, object_format = c("phylo"),
  file_format, file, ...)
}
\arguments{
\item{study_id}{the study identifier (character)}

\item{tree_id}{the tree identifier (character)}

\item{subtree_id, }{either a node id that specifies a subtree or
\dQuote{ingroup} which returns the ingroup for this subtree.}

\item{object_format}{the class of the object returned by the
function (default, and currently only possibility \code{phylo}
from the \code{\link[ape]{ape}} package)}

\item{file_format}{character, the file format to use to save the
results of the query (possible values, \sQuote{newick},
\sQuote{nexus}, \sQuote{json}).}

\item{file}{character, the path and file name where the output
should be written.}

\item{...}{additional arguments to customize the API request (see
\code{\link{rotl}} package documentation).}
}
\description{
Retrieve subtree from a specific tree in the Open Tree of Life data store
}
\examples{
\dontrun{
small_tr <- get_study_subtree(study_id="pg_1144", tree="tree2324", subtree_id="node552052")
ingroup  <- get_study_subtree(study_id="pg_1144", tree="tree2324", subtree_id="ingroup")
nexus_file <- tempfile(fileext=".nex")
get_study_subtree(study_id="pg_1144", tree="tree2324", subtree_id="ingroup", file=nexus_file,
                  file_format="nexus")
}
}

