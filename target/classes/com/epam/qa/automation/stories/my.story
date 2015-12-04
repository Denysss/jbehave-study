My story
					 
Scenario: Login to Gmail with empty email
Given Login page is opened
When Set empty <email> to email field
And Submit Next button
Then Warning <message> should be present on the page
Examples:
|email|message|
||Please enter your email.|

Scenario: Login to Gmail with not valid email
Given Login page is opened
When Set not valid <email> to email field
And Submit Next button
Then Warning <message> should be present on the page
Examples:
|email|message|
|@#$|Please enter a valid email address.|
|478593875@#$$$|Please enter a valid email address.|
|sdjkfhsdjkhf|Sorry, Google doesn't recognize that email.|

Scenario: Login to Gmail
Given Login page is opened
When Set correct <email> to email field
And Submit Next button
Then The <email> should be present on the page
When Set correct <password> to password field
And Sunmit SignIn button
Then Title should include the <email>
Examples:
|email|password|
|email|pass|