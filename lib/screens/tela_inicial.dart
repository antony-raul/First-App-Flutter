import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/screens/pagina_taferas.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minhas anotações"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PaginaTarefas();
          }));
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
