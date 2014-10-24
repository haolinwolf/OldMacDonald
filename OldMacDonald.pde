
 void setup()
{
  Cow c = new Cow("Cow", "moo!");
  Chick ch = new Chick("Chick", "chirp!"); 
  Pig p = new Pig("Pig", "oink!");
  System.out.println(c.getType() + " goes " + c.getSound());
  System.out.println(ch.getType() + " goes " + ch.getSound());
  System.out.println(p.getType() + " goes " + p.getSound());
  Farm f = new Farm();
  f.animalSounds();
}

interface Animal 
{
  public String getSound();
  public String getType();
}

class Farm  
{     
  private Animal[] aBunchOfAnimals = new Animal[3];    
  public Farm()    
  {       
   aBunchOfAnimals[0] = new NamedCow("Cow","Elsie","moo!");  
   aBunchOfAnimals[1] = new Chick("Chick","cheep","cluck!");  
   aBunchOfAnimals[2] = new Pig("Pig","oink!");  
  }     
  public void animalSounds()    
  {
    for (int nI=0; nI < aBunchOfAnimals.length; nI++) 
    {             
       System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound() );       
    }       
    System.out.println( "The cow is known as " + ((NamedCow)aBunchOfAnimals[0]).getName() );    
  }           
}
class Cow implements Animal
{
  private String myType;
  private String mySound;
  public Cow (String type, String sound)
  {
    myType = type;
    mySound = sound;
  }
  public Cow()
  {
    myType = "cow";
    mySound = "moo";
  }
  public String getSound()
  {
    return mySound;
  }
  public String getType()
  {
    return myType;
  }
}
class NamedCow extends Cow
{

    private String myName;
    public NamedCow(String type, String name, String Method)
    {
      myName = name;
    }
    public NamedCow()
    {
      myName = "Elsie";
    }
    public String getName()
    {
      return myName;
    }
}

class Chick implements Animal
{
  private String myType;
  private String mySound;
  public Chick (String type, String sound)
  {
    myType = type;
    mySound = sound;
  }
  public Chick()
  {
    myType = "chick";
    mySound = "cluck";
  }
  public Chick(String type, String sound1, String sound2)
  {
    myType = type;
    if(Math.random()<0.5)
    {
      mySound = sound1;
    }
    else
    {
      mySound = sound2;
    }
  }
  
  public String getSound()
  {
    return mySound;
  }
  public String getType()
  {
    return myType;
  }
}

    
class Pig implements Animal
{
  private String myType;
  private String mySound;
  public Pig (String type, String sound)
  {
    myType = type;
    mySound = sound;
  }
  public Pig()
  {
    myType = "pig";
    mySound = "oink";
  }
  public String getSound()
  {
    return mySound;
  }
  public String getType()
  {
    return myType;
  }
}


