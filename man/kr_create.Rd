% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/commands.R
\name{kr_create}
\alias{kr_create}
\title{Create a new post from a default template}
\usage{
kr_create(filename, format = NULL, template = NULL, ...)
}
\arguments{
\item{filename}{Where this file should be created.}

\item{format}{The format of the knowledge post to be created:
either Rmd, ipynb, or md. By default, retrieved from the extension
of the filename.}

\item{template}{Optionally, a template to create the knowledge post from.}

\item{...}{Global arguments to \code{knowledge_repo} commands, such as
\code{repo} or \code{noupdate} (see Details)}
}
\description{
Creates a new post from the built in template, using either
Rmd (default), IPython notebook, or Markdown
}
\details{
Global arguments that can be passed to all knowledge_repo
commands include:

\itemize{
  \item{repo}{Path to Knowledge Repository to add to. Can also set
  \code{KNOWLEDGE_REPO} variable in \code{.Renviron}.}
  \item{dev}{Whether to skip passing control to version of code
  checked out in knowledge repository.}
  \item{debug}{Whether to enable debug mode.}
  \item{noupdate}{Whether script should update the repository before
  performing actions.}
  \item{version}{Show version and exit.}
  \item{help}{Show help and exit}
}
}
\examples{

# set up a repository and post
repo <- tempfile()
kr_init(repo)
kr_create("test.Rmd", repo = repo)

}
