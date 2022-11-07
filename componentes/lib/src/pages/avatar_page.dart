import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/50/69/0a/50690a2ea0abc8c12224d276409a6a4d.jpg'),
              radius: 20,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
              backgroundColor: Colors.greenAccent,
              child: Text('SL'),
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          height: 400,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          margin: const EdgeInsets.all(30),
          child: const FadeInImage(
            image: NetworkImage('https://wallpaperaccess.com/full/2059560.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
          //porque queda asi
        ),
      ),
    );
  }
}
