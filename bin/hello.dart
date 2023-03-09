void main() {
  print("hello word");
  //this is a short coment

  /*
    this is a large coment 
  */

  /*
  dart accept that types of quotation marks for string 
  */

  String myString = 'My string';
  String myString2 = "My string 2";

  /* 
  this assigned value type takes the property value type 
  */
  var myValue = true;
  var myValue2 = 1;
  var myValue3 = 1.5;
  var myValue4 = 'text';

  /*
   the porpetery const can't assigned any value if is tiem for execution
  */
  const myConstant = 'My Constant';

  print("${myValue4} for ${myConstant}");
  /* 
    if you need use constant to time excecution, you do need change the propetery for final
  */
  final myFinalConstan = myString;

  /*
  for evalue conditions you have to use "if"
  */

  if (myValue) {
    myFunctionPrint(myFinalConstan);
  }

  if (myValue2 > 0 && myValue3 > 0) {
    myFunctionPrint(myString2);
  }

  /*
   create value NULL and  change your value
  */

  String? myStringNull;
  myStringNull = "NO NUll";
  myStringNull = null;

  print(myStringNull);

/* 
  to create list you need the reserved word "List" and the type of list 
*/

  List<int> myIntList = [1, 2, 3, 4, 5, 6, 7];
  List<String> myStringList = ['a', 'b', 'c'];

//use of "forEach"

  myStringList.forEach((letter) {
    print('Letter:${letter}');
  });

  myIntList.forEach((number) {
    print('number:${number}');
  });

  myFunction('Jose Gamboa');

  // the function can asigned to constant type final
  final myFunctionValueInt = myFunctionInt(2, 3);
  print('sum is ${myFunctionValueInt}');

  final myFunctionValueString = myFunctionString('dog');
  print(myFunctionValueString);

  //the use for switch case with enum
  const myEnum = Status.active;
  switch (myEnum) {
    case Status.active:
      myFunctionPrint('active');
      break;
    case Status.deactived:
      myFunctionPrint('active');
      break;
    default:
      myFunctionPrint('delete');
      break;
  }

  //call class person
  final People = Person('Ray', 28, 14000);
  print(People.salaryStatus());
}

/* 
  use for function void is 
  only for execution of 
  code segment but if you need 
  return the value the function 
  need type of return
*/
void myFunctionPrint(String text) {
  print(text);
}

void myFunction(String name) {
  print("What is your name?${name}");
}

int myFunctionInt(int x, int y) {
  int sum = 0;
  if (x >= 0 && y >= 0) {
    sum = x + y;
  }
  return sum;
}

String myFunctionString(String word) {
  String label =
      word.length > 0 ? '${word} have ${word.length} letter(s)' : "No letter";
  return label;
}

/* the enum works for the defined lists
  and each item  have "index getter" that
  works for knows the position 
*/

enum Status { active, deactived, deleted }

/* 
  the class of dart have
  to voids for the objects
  on this class 
*/

class Person {
  String name;
  int age;
  dynamic salary;

  Person(this.name, this.age, this.salary);

  String salaryStatus() {
    String position = 'Poor';
    if (this.salary >= 5000 && this.salary <= 10000) {
      position = 'Avarage';
    } else if (this.salary > 10000) {
      position = 'Rich';
    }
    return position;
  }
}
