Feature: Objectify

    As an embedly user
    I want to call the the embedly api
    Because I want to objectify a url

    Scenario Outline: Get the meta description
        Given an embedly endpoint
        When objectify is called with the <url> URL
        Then the meta.description should start with <metadesc>
        And objectify api_version is 1

        Examples:
            | url                            | metadesc                 |
            | http://tweetphoto.com/14784358 | Plixi allows user to ins |

    Scenario Outline: Get the meta description with pro
        Given an embedly endpoint with key
        When objectify is called with the <url> URL
        Then the meta.description should start with <metadesc>
        And objectify api_version is 2

        Examples:
            | url                            | metadesc                 |
            | http://tweetphoto.com/14784358 | Plixi allows user to ins |
