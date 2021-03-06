Description: HomeTask 3. - Nested steps

Composite: When I fill $email, $password in login form
When I click on element located `By.xpath(//a[@href='/login'])`
When I enter `<email>` in field located `By.xpath(//*[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
Then the page with the URL containing 'https://id.atlassian.com/login?application=trello&continue=' is loaded
When I enter `<password>` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath(//button[@id='login-submit'])`

Scenario: ‘Sign In’ by already registered User
Given I am on the main application page
When I fill <email>, <password> in login form
When the condition '#{eval("<title>"=="Boards | Trello")}' is true I do
|step|
|When I click on element located `By.xpath(//a[@href='/workspace33143482/account'])`
|Then the page title contains the text 'Palina Mukha's workspace'|

Examples:
|email                             |name                       |password                      |
|#{generate(Internet.emailAddress)}|#{generate(Name.firstName)}|#{generate(Internet.password)}|





