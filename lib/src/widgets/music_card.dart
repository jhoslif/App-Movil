import 'dart:html';

import 'package:examen_pillajo_ui/src/models/images_model.dart';
import 'package:examen_pillajo_ui/src/models/music_model.dart';
import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({Key? key, required this.model}) : super(key: key);
  final Music model;

  @override
  Widget build(BuildContext context) {
    final url = model.images!.background;
    return Card(
      child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
            radius:50.0,
            child:ClipPath(
              clipper: TriangleClipper(),
              child: Image.network(url!),
              //borderRadius:BorderRadius.circular(50.0),
              clipBehavior:Clip.hardEdge,
              
              ),
            
            ),
      
          title: Text(model.title ?? ""),
          subtitle: Text(model.subtitle ?? "")),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
      final path = Path();
      path.moveTo(size.width/1.8, 0.0);
      path.lineTo(size.width, size.height);
      path.lineTo(0.0, size.height);
      path.close();
      return path;
}
bool shouldReclip(TriangleClipper oldClipper) => false;
}
