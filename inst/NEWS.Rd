\name{NEWS}
\title{News for Package \pkg{RApiDatetime}}
\newcommand{\ghpr}{\href{https://github.com/eddelbuettel/rapidatetime/pull/#1}{##1}}
\newcommand{\ghit}{\href{https://github.com/eddelbuettel/rapidatetime/issues/#1}{##1}}

\section{Changes in RApiDatetime version 0.0.9.2 (unreleased)}{
  \itemize{
    \item Minor maintenance for continuous integration and badges
  }
}

\section{Changes in RApiDatetime version 0.0.9 (2024-01-23)}{
  \itemize{
    \item Replace auto-generated stale RApitDatetime-package.Rd with
    macro-filled stanza to satisfy CRAN request.
  }
}

\section{Changes in RApiDatetime version 0.0.8 (2023-01-14)}{
  \itemize{
    \item Update one use of \code{sprint} to \code{snprintf}
    \item Minor edits to DESCRIPTION
  }
}

\section{Changes in RApiDatetime version 0.0.7 (2022-10-30)}{
  \itemize{
    \item A function prototype was updated for \code{clang-15}.
    \item GitHub Actions were updated to checkout version 3.
    \item Several remaining http:// URLs were converted to https://.
  }
}

\section{Changes in RApiDatetime version 0.0.6 (2021-08-13)}{
  \itemize{
    \item Correctly account for SunOS to have it avoid \code{GMTOFF} use
    \item A new test file was added to ensure \sQuote{NEWS.Rd} is always
    at the current release version.
  }
}

\section{Changes in RApiDatetime version 0.0.5 (2021-08-05)}{
  \itemize{
    \item Add a few \code{#nocov} tags
    \item Update continuous integration to use
    \href{https://eddelbuettel.github.io/r-ci/}{r-ci}, reenable coverage
    \item Update DESCRIPTION with URL and BugReports fields
    \item Add new CI and LastCommitted badges to README.md
    \item Add compiler flag for Windows UCRT build
    \item Synchronized datetime function with upstream r-devel code
  }
}

\section{Changes in RApiDatetime version 0.0.4 (2018-10-21)}{
  \itemize{
    \item New function \code{asDatePOSIXct} (Josh Ulrich in \ghpr{2})
    \item Synchronized with upstream code in base R (Dirk in \ghpr{3})
  }
}

\section{Changes in RApiDatetime version 0.0.3 (2017-04-02)}{
  \itemize{
    \item Correct two simple copy-and-paste errors in \code{RApiDatetime.h}
    \item Also enable registration in \code{useDynLib}, and explicitly
    export known and documented R access functions provided for testing
  }
}

\section{Changes in RApiDatetime version 0.0.2 (2017-03-25)}{
  \itemize{
    \item Windows support has added (Josh Ulrich in \ghpr{1})
  }
}

\section{Changes in RApiDatetime version 0.0.1 (2017-03-23)}{
  \itemize{
    \item Initial release with six accessible functions
  }
}
