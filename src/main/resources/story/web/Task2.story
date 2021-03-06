Description: HomeTask 2. Task 2

// GivenStories: story/web/precondition/sign-up.story

Scenario: ‘Sign In’ by already registered User
Given I am on the main application page
When I click on element located `By.xpath(//a[@href='/login'])`
When I enter `<email>` in field located `By.xpath(//*[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
Then the page with the URL containing 'https://id.atlassian.com/login?application=trello&continue=' is loaded
When I enter `<password>` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath(//button[@id='login-submit'])`
When I wait until the page title contains the text 'Boards'

Then the page with the URL 'https://trello.com/palinamukha2/boards' is loaded

Examples:
|email|password |
|APalinaMukha@gmail.com|Cakes123|
