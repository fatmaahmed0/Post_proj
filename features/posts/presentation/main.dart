import 'di.dart';
import 'msgs.dart';
import 'dart:io';
void main(){
  while(true){
    welcomeMsg();
    int number= int.parse(stdin.readLineSync()!);
    switch(number){
      case 1:
      getAllStates();
      case 2:
      getPostStates();
      case 3:
      addPostStates();
      case 4:
      updatePostStates();
      case 5:
      deletePostStates();
      case 6:
      exit(0);
      default:
      print ("the number not valid ,please try again:");
    }
  }
}