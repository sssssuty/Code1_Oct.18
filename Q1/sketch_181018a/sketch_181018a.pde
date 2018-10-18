void setup(){
  println("What are you doing this afternoon?");
  Lesson lesson = new Lesson("design history", "15");
}

void draw(){
  
}

class Lesson{
  String subject;
  String numOfPeople;
  
  Lesson(String whichSubject, String howMany){
    println("I am going to " + whichSubject + " field trip with " + howMany + " other students!");
    subject = whichSubject;
    numOfPeople = howMany;
  }
}
