void main(List<String> args) {
  int? a;
  int? b;

  /* 
    b ??= 20; 
    add 20 to b if is null
  */

  //conditional operators
  int c = 23;
  String resp = c > 25 ? 'higger than 25' : 'higger than 25';

  int? d = b ?? a ?? 100;

//relational operators
//all return boolean values
/*
  > higher than
  < less than
  >= higher than equel to
  <= less than equel to
  == equal
  !== different

*/

  String person1 = 'ray';
  String person2 = 'ray2';

  int x = 20;
  int y = 30;
/*
  print(x > y);
  print(x < y);
  print(x >= y);
  print(x <= y);

*/

//type operators
  int i = 10;
  String j = 'A';

  print(i is int);
  print(j is int);
}
