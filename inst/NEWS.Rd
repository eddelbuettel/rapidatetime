\name{NEWS}
\title{News for Package \pkg{RApiDatetime}}
\newcommand{\ghpr}{\href{https://github.com/eddelbuettel/rapidatetime/pull/#1}{##1}}
\newcommand{\ghit}{\href{https://github.com/eddelbuettel/rapidatetime/issues/#1}{##1}}

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
