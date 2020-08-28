import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar Conta"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[TextFormField(
            decoration: InputDecoration(
                hintText: "Nome Completo"
            ),
            validator: (Text){
              if(Text.isEmpty) return "Nome Invalido!";
            },
          ),
            SizedBox(height: 16.0,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Email"
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (Text){
                if(Text.isEmpty || !Text.contains("@")) return "E-mail invalido!";
              },
            ),
            SizedBox(height: 16.0,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Senha"
              ),
              obscureText: true,
              validator: (Text){
                if (Text.isEmpty || Text.length < 6) return "Senha Invalida!";
              },
            ),
            SizedBox(height: 16.0,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Endereço"
              ),
              validator: (Text){
                if (Text.isEmpty) return "Endereço Invalida!";
              },
            ),
            SizedBox(height: 16.0,),
            SizedBox(
              height: 44.0,
              child:     RaisedButton(
                child: Text("Criar Conta",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
                onPressed: (){
                  if(_formKey.currentState.validate()){

                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
