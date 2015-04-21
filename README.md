# cheers_redux
The Ruby cheers exercise (see: jacobdlewis/cheers), this time 3 weeks into learning Ruby, with tests.

## Specifications for interactive version of Cheers
### (How is the program supposed to work?)

Start the program by running './cheers.rb'

The program should ask:

> Hello! What is your name?

Then, the user types in their name. For example:

> Abby

The program outputs a cheer using this format:

> Give me an ... A
>
> Give me a ... B
>
> Give me a ... B
>
> Give me a ... Y
>
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

## Specifications for non-interactive version of Cheers
### (How is the program supposed to work?)


#### Help Usage
If no input is given to the program, the following should print out.

Try again, but this time type "./cheers.rb [Name] [MM/DD Birthday]"

#### Regular Usage
Start the program by running './cheers.rb Abby 08/25'

The first argument is the user's name.
The second argument is the user's birthday.

The program should ask:

> Hello! What is your name?

Then, the user types in their name. For example:

> Abby

The program outputs a cheer using this format:

> Give me an ... A
>
> Give me a ... B
>
> Give me a ... B
>
> Give me a ... Y
>
> ABBY's just GRAND!

* Follow the proper grammatical rule for a and an. The rule is based on whether the pronunciation of the letter would begin with a vowel.
* Strip out special Characters for the "Give me a/an ..." piece
* Leave special characters (specifically hyphens) for the "XXXX is just GRAND" piece
* Guard against empty input
* Plan for capital laters
* Print the user's name out as it was originally input for the 'just grand' line.

If there's no input, the program prints out:

> I'd cheer for you, but I don't know who you are :(

After printing out the user's cheer, the program prints the number of days until the user's birthday:

> Awesome! Your birthday is in 45 days! Happy Birthday in advance!

If no birthday is given, the program prints out:

>'I'd wish you a happy birthday, but I don't know what your birthday is.'

* If the input could not be parsed by the program, the program outputs:

> I couldn't understand that. Could you give that to me in mm/dd format?
