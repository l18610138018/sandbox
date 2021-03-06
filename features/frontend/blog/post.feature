@frontend @blog @post
Feature: Check the blog frontend
  In order to read some news
  As an anonymous user
  I want to be able to see the News page

  Background:
    Given I am on "/"

  @200 @post @list
  Scenario: Check blog post list status code
    When I go to "blog"
    Then I should see "Archive"
    And the response status code should be 200

  @post @add @comment @ok
  Scenario: Add successfully a comment to a post
    When I go to "blog/archive"
    And I follow the first link of section "sonata-blog-post-title"
    And I fill in "comment_name" with "firstname lastname"
    And I fill in "comment_email" with "firstname@lastname.com"
    And I fill in "comment_url" with "http://lastname.com"
    And I fill in "comment_message" with "This is my comment"
    And I press "Add comment"
    Then I should see "This is my comment"