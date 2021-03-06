% Check from R:
%  news(db = tools:::.build_news_db_from_package_NEWS_Rd("~/R/Pkgs/copula/inst/NEWS.Rd"))
\name{NEWS}
\title{News for \R Package \pkg{copula}}% MM: look into ../svn-log-from.all
\newcommand{\CRANpkg}{\href{http://CRAN.R-project.org/package=#1}{\pkg{#1}}}

\section{Changes in version 0.999-14 (2015-10-17, svn r1184)}{
  \itemize{
    \item New demo "NALC" on nested Archimedean Levy copulas
    \item Explicitly import from "base packages"
    \item \code{contour(<mvdc>, ..)} gets new default
    \code{box01=FALSE}, as a \eqn{[0,1]^2} box does not make sense for
    general multivariate distributions.
    \item \code{coeffG()} is exported (though still partly subject to change)
    \item new (rmarkdown -> knitr) vignette \code{wild_animals} from
    former demo.% --> ../vignettes/wild_animals.Rmd
    \item \code{pCopula(*, cop)} for normal- or t- copulas \code{cop}
    now accepts optional arguments to be passed to the underlying
    (numerical integration) algorithm from package \pkg{mvtnorm}.%% FIXME: *.Rd, example;
    \item fixed the (dontrun) 3d example of \code{gofCopula}.
  }
}

\section{Changes in version 0.999-13 (2015-03-05, svn r1156)}{
  \itemize{
    \item New demo on tail compatibility
    \item lsum(): also work for vectors and when result is zero,
    i.e. \code{log(0) == -Inf}.
  }
}

\section{Changes in version 0.999-12 (2014-10-01)}{
  \itemize{
    \item Fix bug which did not allow to set non-default
    \code{optim.method} in \code{gofCopula()}.

    \item Not fully back-compatible change: \code{gofCopula()} now
    passes all extra arguments via \code{...} to \code{fitCopula()}.
    Before, \code{gofPB()} passed them to the trafo.method.
  }
}

\section{Changes in version 0.999-11 (2014-09-05)}{
  \itemize{
    \item The default for the optional \code{estimate.variance} argument
    of \code{fitCopula()} and \code{fitMvcd()} now is \code{TRUE} only if
    the optimization converged.
    \item \code{rtrafo()} is more efficient for "normalCopula".
    \item \code{fitMvdc()} now also works when margin parameter has
    length >1.
    \item \code{fitMvdc()} gains optional arguments \code{lower} and
    \code{upper} for specifying box-constraints to optim().
  }
}

\section{Changes in version 0.999-10 (2014-06-18, r1116)}{
  \itemize{
    \item Fixes some border cases, notably \code{psi()} for negative tau
    Gumbel, Clayton and AMH copulas,
    \item \code{debye[12]()} functions improvements (e.g., \code{Inf})
    \item New \code{log1pexp()} from \CRANpkg{Rmpfr}'s vignette
    \file{log1mexp}.
    \item \code{rho(<amhCopula>)} now numerically stable, also works for
    \eqn{\theta \approx 0}{theta ~= 0}, using Martin's beautiful
    formula, as documented in the \emph{new vignette}
    \file{rhoAMH-dilog.Rnw}.

    \item Purely numerical \code{.psiFrank()} etc; accuracy improvements for
    \code{psi()}, \code{rho()}, \code{tau()} for small \eqn{|\alpha|}
    for Frank.
    \item New \code{cospi2()}, \code{tanpi()}; \code{iTau()} and
    \code{iRho()} have a smaller tolerance of \code{1e-7} and hence are
    more accurate where they use inversion.

    \item \code{polylog(x, 2)} now uses \CRANpkg{gsl}'s \code{dilog()}.
    \item \code{pCopula()} now works for a t-copula with \code{df=Inf}.
  }
}

\section{Changes in version 0.999-9 (2014-05-05, r1085)}{
  \itemize{
    \item \code{rtrafo()} with new option 'inverse=TRUE', hence can be
    used for sampling.
    \item Fixed overflow bug (seg.fault) for large \eqn{n^2 p}
    \item Fixed \code{qqplot2()} case
  }
}

\section{Changes in version 0.999-8 (2014-02-04, r1074)}{
  \itemize{
    \item \code{pobs(*, lower.tail)} new optional argument.
    \item new optional argument \code{indepC.maybe} to (Archimedean)
    copula constructors.
    \item empirical copula functions \code{C.n()} and \code{F.n()}
    \item \code{all.equal(*, tol)} adaption to upcoming \R changes.
  }
}

\section{Changes in version 0.999-7 (2013-05-21, r1026)}{% just one week later
  \itemize{
    \item a bug fix version, as \code{0.999-6} had in one case
    accidentally introduced a \bold{NON}-back compatible version in
    \code{gofCopula()}.
  }
}

\section{Changes in version 0.999-6 (2013-05-14)}{
  \itemize{
    \item \code{gofCopula()} gets a new \code{trafo.method} argument,
    now also can use (new) \code{htrafo()} in addition to Rosenblatt's
    transform \code{rtrafo}.

    \item ...
  }
}

\section{Changes in version 0.999-5 (2012-12-03)}{
  \itemize{
    \item new back-compatibility feature which allows older
    \R scripts (notably the 2010 JSS paper) to still run without errors.
  }
}

\section{Changes in version 0.999-4 (2012-11-16)}{
  \itemize{
    \item ...
  }
}

\section{Changes in version 0.999-3 (2012-10-27)}{
  \itemize{
    \item ...
  }
}
\section{Changes in version 0.999-2 (2012-10-25)}{
  \itemize{
    \item ...
  }
}
\section{Changes in version 0.999-1 (2012-08-13)}{
  \itemize{
    \item ...
  }
}
\section{Changes in version 0.999-0 (2012-07-30)}{
  After \emph{the copula week} at ETH (July 9--13):
  \itemize{
    \item Renaming (and deprecation) \dQuote{orgy}: ... ...
    \item ...
    \item ...
    \item ...
  }
}

\section{Changes in version 0.99-4 (2012-07-03)}{
  \itemize{
    \item \code{dK()}, \code{pK()}, \code{qK()}, \code{rK()}: Kendall's
    distribution functions.
    \item ...
  }
}

% *NO* version 0.99-3

\section{Changes in version 0.99-2 (2012-05-30)}{
  \itemize{
    \item export \code{log1mexp()}
    \item added facilities for Hofert & Maechler's graphical GOF
    testing.
    \item fixed corner cases of \code{dcopulat()} and \code{dcopulaNormal()}.
    \item \code{polyG()} and \code{dsumSibuya()} improvements; possibly
    using \CRANpkg{Rmpfr}.
    \item fixed "boundary overrun" bug in indepence tests built on
    empirical copula.
  }
}

\section{Changes in version 0.99-0 (2012-03-29)}{
  \itemize{
    \item Big merge of former CRAN packages \pkg{nacopula} (Maechler and
    Hofert) and \pkg{copula} (Yan and Kojadinovic) into new
    \dQuote{super package}.
    \item new class \code{"Copula"}, with \code{[dpr]copula()} methods
    for "nacopula".
  }
}

