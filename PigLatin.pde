public void setup() 
{
	String[] lines = loadStrings("words.txt");
  
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  char[] vowels = {'a', 'e', 'i', 'o', 'u'};
  
  for(char c : sWord.toCharArray())
  {
    for(char v : vowels)
    {
      if(c == v)
        return sWord.indexOf(c);
    }
  }
  
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  int vowelResult = findFirstVowel(sWord);
  
	if(vowelResult == -1)
	{
		return sWord + "ay";
	}
	else if(vowelResult == 0)
	{
		return sWord + "way";
	}
  else if(sWord.toLowerCase().substring(0, 2).equals("qu"))
  {
    return sWord.substring(2) + "quay";
  }
  else
  {
    return sWord.substring(vowelResult) + sWord.substring(0, vowelResult) + "ay";
  }
}
