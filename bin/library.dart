//1.Import Dart:io to take input from the console.
import 'dart:io';
main(){
Info b1= Info();
 List<Info> myListBook=[
  Info(book_title:"Start with why",author:"Simon Sink",price:80.0,quantity:13),
  Info(book_title:"But how do it know",author:"J. Clark Scott",price:59.9,quantity:22),
  Info(book_title:"Clean Code",author:"Robert Cecil Martin",price:50.0,quantity:5),
  Info(book_title:"Zero to One",author:"Peter Thiel",price:45.0,quantity:12),
  Info(book_title:"You don't know JS",author:"Kyle Simpson",price:39.9,quantity:9),
   ];
bool repeatMenu= true;
//loop to enter number of menu
  do{
print("Enter number of menu:");
print("1.Add \n2.Edit \n3.Delete \n4.view Information \n5.Search \n6.Exit");
int? menu = int.parse(stdin.readLineSync()!);
b1.read(menu);
  }while(repeatMenu);
}

abstract class LibraryBook{
 Edit();
}
class Info extends LibraryBook {
  int? book_id=0;
  String? book_title;
  late String? author;
  num? price;
  int? quantity;
 Info ({this.book_title, this.author, this.price, this.quantity}){
   this.book_id =book_id!+1;
 }



  @override
  Edit() {

  }
  read(int menu ){
    switch(menu){
    case 1:{Add();
    break; }
    case 2:{ Edit();
    break;}
    case 3:{ Delete();
    break;}
    case 4:{ viewInfomation();
    break;}
    case 5:{ Search();
    break;}
    case 6:{ exit(6) ;}
    default:{print("shoud be enter number between 1-6");
    break;}
               }
  }
 Add() {
  //int? book_id= book_id!+1;
   print("Enter the title of book:");
   this.book_title = stdin.readLineSync();
   //insert inside list
   print("Enter the author of book:");
   this.author = stdin.readLineSync();
   print("Enter the price of book:");
   this.price = double.parse(stdin.readLineSync()!);
   print("Enter the quantity of book:");
   this.quantity = int.parse(stdin.readLineSync()!);
 }
Delete(){

}
viewInfomation(){
}
Search(){}
}

// mixin search {

// }
// mixin read{

// }
// class all with read,seach{

// }
