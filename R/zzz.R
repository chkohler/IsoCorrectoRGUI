#' @importFrom utils packageDescription
.onAttach <- function(libname, pkgname) {
  pkgVersion <- packageDescription(pkgname, fields = "Version")
  pkgLicense <- packageDescription(pkgname, fields = "License")

  msg <- paste0(
    pkgname, " v", pkgVersion, "\n\n", "For help, type browseVignettes('IsoCorrectoRGUI') to view the IsoCorrectoRGUI documentation or ?IsoCorrectionGUI\n",
    "to view the documentation of the IsoCorrectionGUI() function.\n\n"
  )

  disclaimer <- paste0(pkgname, " is licensed under ", pkgLicense, ". It is free software and comes without any warranty.\n\n")

  citation <- paste0(
    "If you use ", pkgname, " in published research, please cite:\n\n", "Paul Heinrich, Christian Kohler et al.\n", "Correction for natural isotope abundance and tracer impurity in MS-, MS/MS- and high-resolution multiple-tracer-data from stable isotope labeling experiments using IsoCorrectoR",
    " (Scientific reports, 2018)\n\n"
  )

  packageStartupMessage(paste0(msg, disclaimer, citation))
}
