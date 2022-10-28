return {
  settings = {
    ltex = {
      enabled = { "latex", "tex", "bib", "markdown" },
      language = "de",
      diagnosticSeverity = "information",
      setenceCacheSize = 2000,
      additionalRules = {
        enablePickyRules = true,
        motherTongue = "en",
      },
      trace = { server = "verbose" },
      dictionary = {},
      disabledRules = {},
      hiddenFalsePositives = {},
    },
  }
}
