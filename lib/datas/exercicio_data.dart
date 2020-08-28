import 'package:cloud_firestore/cloud_firestore.dart';

class ExercicioData{
  String category;
  String id;
  String title;
  String images;

  ExercicioData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    title = snapshot.data["title"];
    images = snapshot.data["images"];

  }
}