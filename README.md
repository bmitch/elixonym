# Elixonym

**TODO: Add description**

## Installation

**TODO: Add description**

## Structure
* Supervised:
  * `DictionaryCache`.
    * GenServer that reads in a list of words from the `Dictionary`.
    * Should refresh itself ever X minutes.
    * Has public functions like:
      * `getPrefix()` - returns "a", "an", "the", "of" and similar words.
      * `getNoun()` - returns a random noun.
      * `getAdjective()` - returns a random adjective.
      * `getAnyWord()` - returns any random word.
      * Maybe store these words in the state as a list of keyword pairs?
  * `GeneratorServer`
    * Should have a timeout of 2 hours.
    * When started can be registered using the registry.
    * Have a public function `generate(number_of_words)` with a max of 5 or something like that. When call it will use a mixture of the public methods from the `DictionaryCache` to return a random string.
    * Don't think it needs anything else, does not even need to hold a state.
    * Using a GenServer for it because eventually in the web app will use channels so each connected client will spawn a new `GeneratorServer`.

* Other:
  * `Dictionary`
    * reads in the list of words from a csv or multiple csv. Not sure if we want one csv with all words or a separte CSV for each type (nouns.csv, adjectives.csv etc...)
