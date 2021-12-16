Feature: List favorites


  Background:
    Given x-api-key is already acquired.


  @favs
  Scenario Outline: Listing for all favorites dogs
    When Tester makes favourites request
    And Tester should see information about dog
    Then Tester cast <voted> vote
    Then The tester favorites the dog they <voted> for
    Then Tester should see favorites image of dogs <voted>
    Examples: #It is enough to write the Image Ids under Examples.
              #Image Id creator https://api.thedogapi.com/v1/images/search
      | voted |
      | xNHN6Vu1e |
      | BJ1gnx5Vm |
      | Atmf2iDb0 |

