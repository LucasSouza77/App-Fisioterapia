import 'package:flutter/material.dart';
import 'package:projeto_integrador/tabs/exercicios_tab.dart';
import 'package:projeto_integrador/tabs/home_tab.dart';
import 'package:projeto_integrador/widgets/custom_drawer.dart';



class HomeScreen extends StatelessWidget {

  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Exercícios"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ExerciciosTab(),
        ),
        Container(color: Colors.yellow,),
      ],
    );
  }
}