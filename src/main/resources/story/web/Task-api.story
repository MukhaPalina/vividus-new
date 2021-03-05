Description: HomeTask 2. Task 1c. - API

Scenario: Use API for Trello Board creation

When I issue a HTTP POST request for a resource with the URL '${api-endpoint}1/boards/?key=${api-key}&token=${api-token}&name=MY_BOARD'
Then the response code is equal to '200'
