Feature: Login Page

    Scenario: As a user, I should be able to login
        Given user has browse to the application sucessfully
        When the user has enter a username as "student"
        And the user has enter a password as "Password123"
        And the user clicks on button "Submit"
        Then user can see the application dashboard
        And user can see message as "Logged In Successfully"

    Scenario Outline: As a user, I should not be able to login
        Given user has browse to the application sucessfully
        When the user has enter a username as "<username>"
        And the user has enter a password as "<password>"
        And the user clicks on button "Submit"
        Then user can see error message as "Your username is invalid!"
        Examples:
            | username | password | 
            | Value 1  | Value 2  |
        