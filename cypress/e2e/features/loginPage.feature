Feature:Login Page
    As a tester, I want to test the login page of swaglabs web application

    Background:
        Given User is on "login" page

    Scenario Outline:Logo ,Login form and Credentials visibility
        And User should see "Swag Labs" logo
        And User should see the "login" form
        And User should see the text "<text>" displayed after the "login" form
        And User should see the "<credentials>" option under the "<text>" text

        Examples:
            | text                    | credentials             |
            | Accepted usernames are: | standard_user           |
            | Accepted usernames are: | locked_out_user         |
            | Accepted usernames are: | problem_user            |
            | Accepted usernames are: | performance_glitch_user |
            | Password for all users: | secret_sauce            |

    Scenario Outline:Login with valid credentials
        When User fill "<email>" in "email" input field
        And User fill "<password>" in "password" input field
        And User clicks on the "login" button
        Then User should be redirected to the "products" page
        Examples:
            | email         | password     |
            | standard_user | secret_sauce |

    Scenario Outline:Login with invalid username
        When User fill "<email>" in "email" input field
        And User fill "<password>" in "password" input field
        And User clicks on the "login" button
        Then Following information should be shown : "<information>"
        Examples:
            | email     | password     | information                                                               |
            | User_NAME | secret_sauce | Epic sadface: Username and password do not match any user in this service |

    Scenario Outline:Login with invalid password
        When User fill "<email>" in "email" input field
        And User fill "<password>" in "password" input field
        And User clicks on the "login" button
        Then Following information should be shown : "<information>"
        Examples:
            | email         | password    | information                                                               |
            | standard_user | secretdauce | Epic sadface: Username and password do not match any user in this service |

    Scenario Outline:Log in as locked out user
        When User fill "<email>" in "email" input field
        And User fill "<password>" in "password" input field
        And User clicks on the "login" button
        Then Following information should be shown : "<information>"
        Examples:
            | email           | password     | information                                         |
            | locked_out_user | secret_sauce | Epic sadface: Sorry, this user has been locked out. |

    Scenario Outline:Log in as problem user
        When User fill "<email>" in "email" input field
        And User fill "<password>" in "password" input field
        And User clicks on the "login" button
        Then User should be redirected to the "products" page
        And Images of dog should be shown instead of product pictures
        Examples:
            | email        | password     | information                                                               |
            | problem_user | secret_sauce | Epic sadface: Username and password do not match any user in this service |


    Scenario Outline:Log in as performance glitch user
        When User fill "<email>" in "email" input field
        And User fill "<password>" in "password" input field
        And User clicks on the "login" button
        And User should be redirected to the "products" page
        Examples:
            | email                   | password     |
    #         | performance_glitch_user | secret_sauce |




