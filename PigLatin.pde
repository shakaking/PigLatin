import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{

}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for (int i=0; i < sWord.length(); i++)
  {
    char index = sWord.charAt(i);
    if(index == 'a')
    {
      return i;
    }
    if(index == 'e')
    {
      return i;
    }
    if(index == 'i')
    {
      return i;
    }
    if(index == 'o')
    {
      return i;
    }
    if(index == 'u')
    {
      return i;
    }
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	int one = sWord.charAt(0);
	int two = sWord.charAt(1);
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if(findFirstVowel(sWord) == 0)
	{
		return sWord + "ay";
	}
	if(one == 'q' && two == 'u')
	{
		return sWord.substring(2,sWord.length()) + "quay";
	}
	if(findFirstVowel(sWord) != 0)
	{
		return sWord.substring(1, sWord.length()) + sWord.substring(0,1) + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
