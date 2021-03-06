Scenario: check several pages
When I go to the relative URL '<rel-url>'
When I make footer/header static
When I ${visual-action} baseline with `test#{eval(`<rel-url>`.replaceAll(`/`,`-`))}`
Examples:
|rel-url                                |
|/templates                                 |
|/templates/business                                |
|/templates/design                                |
|/templates/education |
|/templates/product-management                        |