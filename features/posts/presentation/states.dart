// ignore_for_file: unused_local_variable

import '../domain/entity/post.dart';
import 'di.dart';
import 'msgs.dart';
import'dart:io';

sealed class PostsState{}

 class GetAllStates extends PostsState{
  void call(){
    getAllPosts().forEach((post){
      print("""

      Post ID : ${post.id}  
      Post Title : ${post.title}
      Post Body : ${post.body}  
      
      """);
      });
      endTaskMsg();
  }
 }

class GetPostStates extends PostsState{
  void call(){
    recieverMsg("the id of post you want to display");
    int id= int.parse(stdin.readLineSync()!);
    Post post = getPost(id);
     print("""
Post ID : ${post.id}  
Post Title : ${post.title}
Post Body : ${post.body}  
      """);
      endTaskMsg();
      }
  }

class AddPostStates extends PostsState{
  void call(){
    recieverMsg("the title of the post ");
    String title = stdin.readLineSync()!;
    recieverMsg("the body of the post ");
    String body = stdin.readLineSync()!;
    addPost(Post(title: title, body: body));
    endTaskMsg();
  }
}

class UpdatePostStates extends PostsState{
  void call(){
    recieverMsg("the id of the post you want to updated");
    int id= int.parse(stdin.readLineSync()!);
    Post post =getPost(id);
    recieverMsg("the new title of the post");
    String title = stdin.readLineSync()!;
    recieverMsg("the new body of the post");
    String body =stdin.readLineSync()!;
    updatePost(Post(title: title, body: body, id:post.id));
    endTaskMsg();
  }
}

class DeletePostStates extends PostsState{
  void call(){
    recieverMsg("the id of the post you want to delete");
    int id =int.parse(stdin.readLineSync()!);
    deletePost(id); 
    endTaskMsg();
  }
}