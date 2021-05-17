# language: en

Feature: Search games by name

  @gamesByName
  Scenario: Filter games that contain the word 'The' in their name
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the name: The
      When the user search games by name
      Then 2 games will match
      And the names of these games are
      | NAME                       |
      | The Witcher 3: Wild Hunt   |
      | The Last of Us             |
      And the following message is displayed: 2 games were found containing the word: The


  @gamesByName
  Scenario: Filter games by name without finding result
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the name: 'xyz'
      When the user search games by name
      Then 0 games will match
      And the following message is displayed: No game with the specified name was found.