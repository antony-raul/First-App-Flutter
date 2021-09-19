import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaTarefas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          cursorColor: Colors.white70,
          showCursor: true,
          style: Theme.of(context).textTheme.headline6,
          decoration:
              InputDecoration(hintText: "Titulo", border: InputBorder.none),
        ),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.delete))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Digite a anotação"),
              maxLines: 32,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
