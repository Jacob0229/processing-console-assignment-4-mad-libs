# processing-console-assignment-4-mad-libs

In this assignment you will create a mad lib. Mad libs are short stories that have blanks called placeholders to be filled in. In the non-computerized version of this game, one person asks a second person to fill in each of the placeholders without the second person knowing the overall story. Once all placeholders are filled in, the second person is shown the resulting story, often with humorous results. See https://en.wikipedia.org/wiki/Mad_Libs for more info. Note: many song lyrics are not appropriate for this assignment due to their repetitive nature. 

In this assignment you will create a computerized version of mad libs where your program will read in a text file where the placeholders are indicated using tags. The program then replaced the placeholders with random words from pre-defined lists.

## Instructions
Find a poem of your choice that has at least ten lines and save it as a plain text file in the `MadLibs/data` directory. Name the file `poem.txt`. You can use any poem you want to but if you cannot think of any you can start here  http://hellopoetry.com/shel-silverstein/poems/title/ for some poems by Shel Silverstein or http://100.best-poems.net/ for a mix of well known poems.

Open `poem.txt` in a text editor and replace nouns with the tag `<noun>`, verbs with `<verb>` and adjectives with ```<adjective>```. You do not have to replace all the nouns, verbs and adjectives with tags. It is up to you to decide with ones to replace to get a "good" mad lib. Avoid using the same tag more than once per row (try to figure out why a tag appearing more than once in a row would be a problem). Do try to use several different tags in at least some of the lines.

For example the following poem by Shel Silverstein
```
There's a Polar Bear
In our Frigidaire--
He likes it 'cause it's cold in there.
With his seat in the meat
And his face in the fish
And his big hairy paws
In the buttery dish,
He's nibbling the noodles,
And munching the rice,
He's slurping the soda,
He's licking the ice.
And he lets out a roar
If you open the door.
And it gives me a scare
To know he's in there--
That Polary Bear
In our Fridgitydaire.
```
could end up looking like this
```
There's a <noun>
In our <noun>--
He likes it 'cause it's <adjective> in there.
With his seat in the <noun>
And his face in the <noun>
And his <adjective> hairy <noun>
In the buttery <noun>,
He's <verb> the <noun>,
He's <verb> the <noun>,
He's <verb> the <noun>,
He's <verb> the <noun>.
And he lets out a <noun>
If you open the <noun>.
And it gives me a scare
To know he's in there--
That <noun>
In our <noun>.
```

The ```MadLibs/data``` already contains dictionaries of nouns, verbs and adjectives. Using these is optional and you are allowed to use other dictionaries if you want to (they would have to be added to the repository). Each dictionary has to have at least 100 words in it. Feel free to create and use other types of dictionaries, e.g. exclamations, adverbs, names, animals, etc.

Your program will need to load each dictionary separatelly as well as the poem file (see assignment 333 for how to work with text files).

Once the poem has been loaded you need to loop across each array entry (representing each line in the poem) and replace every occurence of the placeholders ```<noun>```, ```<verb>``` and ```<adjective>``` with a random word from the corresponding dictionary.

The only console output the program will produce is the generated mad lib.

These is one possible sequence of events:
1. Load madlib poem file
2. Load dictionaries (nouns, verbs, adjectives) 
3. Loop across the individual lines in the madlib poem and for each line,
  * Replace the nouns, verbs and adjectives in the current line
  * Print the current line
  

## Programing tips
* Review arrays (https://processing.org/tutorials/arrays/), strings (https://processing.org/reference/String.html)
* To find out the length of an array: ```nameOfArray.length```
* To loop across an array:
```
for (int i = 0 ; i < nameOfArray.length; i++) {
  // Do something with entry i...
}
```
* To replace a word in a string:
```
lines[i] = lines[i].replaceAll("<noun>", nouns[index]);
```
* To generate a random integer between 0 and n: ```int i = int(random(n-1));``` (https://processing.org/reference/random_.html)
