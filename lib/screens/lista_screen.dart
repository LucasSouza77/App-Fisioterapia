import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeto_integrador/datas/exercicio_data.dart';
import 'package:projeto_integrador/tiles/exercicio_tile.dart';

class ListaScreen extends StatelessWidget {
  final DocumentSnapshot snapshot;

  ListaScreen(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          appBar: AppBar(
              title: Text(snapshot.data["title"]), centerTitle: true),
          body: FutureBuilder<QuerySnapshot>(
              future: Firestore.instance.collection("exercicios").document(
                  snapshot.documentID)
                  .collection("Funcao").getDocuments(),
              builder: (context, snapshot) {
                if (!snapshot.hasData)
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                else
                  return TabBarView(children: [
                    GridView.builder(
                        padding: EdgeInsets.all(4.0),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: 0.30
                        ),
                        itemCount: snapshot.data.documents.length,
                        itemBuilder: (context, index) {
                          return ExercicioTile("grid",
                              ExercicioData.fromDocument(
                                  snapshot.data.documents[index]));
                        }
                    ),
                  ]);
              })),
    );
  }
}