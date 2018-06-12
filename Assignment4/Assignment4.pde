/**
 * <Assignment 4>
 * by <Jake Rhoads>
 * 
 * <using arrays in a poem>
 * 
 */
 
void setup() {
 
String lines[] = loadStrings("poem.txt");
String nouns[] = loadStrings("nouns.txt");
String verbs[] = loadStrings("verbs.txt");
String adjectives[] = loadStrings("adjectives.txt"); // These are the dictionaries
  int n = int(random(nouns.length-1));
  int v = int(random(verbs.length-1));
  int a = int(random(adjectives.length-1));// I used the first letter of each word
 for (int i = 0 ; i < lines.length; i++){
lines[i] = lines[i].replaceAll("<noun>", nouns[n]);
lines[i] = lines[i].replaceAll("<verb>", verbs[v]);
lines[i] = lines[i].replaceAll("<adjective>", adjectives[a]);
   println(lines[i]);
}// The above code is the loop for the dictionaries
}

void draw() {
}
