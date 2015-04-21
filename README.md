# cheers_redux
The Ruby cheers exercise (see: jacobdlewis/cheers), this time 3 weeks into learning Ruby, with tests.

## Guidelines
(what are the rules of the assignment?)

Start the program by running './cheers.rb'

The program should ask:

> Hello! What is your name?

Then, the user types in their name. For example:

> Abby

The program outputs a cheer using this format:

> Give me an ... A
> Give me a ... B
> Give me a ... B
> Give me a ... Y
> ABBY's just GRAND!

* Follow the proper grammatical rule for a and an. The rule is based on whether the pronunciation of the letter would begin with a vowel.
* Strip out special Characters for the "Give me a/an ..." piece
* Leave special characters (specifically hyphens) for the "XXXX is just GRAND" piece
* Guard against empty input
* Plan for capital laters
* Print the user's name out as it was originally input for the 'just grand' line.
* If there's no input, ask again until valid input is provided.

After printing out the user's cheer, the program asks:

> Hey, Abby, what's your birthday? (mm/dd)

Then, the user types in their birthdate

> 08/25

* If there was no input, asks again until valid input is provided
* If the input could not be parsed by the program, the program outputs

> I couldn't understand that. Could you give that to me in mm/dd format?

The program then outputs the number of days until the user's birthday

> Awesome! Your birthday is in 45 days! Happy Birthday in advance!




## Specifications
(how does the program need to behave?)