// To parse this JSON data, do
//
//     final music = musicFromJson(jsonString);

import 'dart:convert';

import 'package:examen_pillajo_ui/src/models/images_model.dart';

Music musicFromJson(String str) => Music.fromJson(json.decode(str));



class Music {
    Music({
        this.id,
        this.type,
        this.layout,
        this.title,
        this.url,
        this.appleMusicUrl,
        this.subtitle,
        this.images,
    });

    String ?id;
    String ?type;
    String ?layout;
    String ?title;
    String ?url;
    String ?appleMusicUrl;
    String ?subtitle;
    Images ?images;

    factory Music.fromJson(Map<String, dynamic> json) => Music(
        id: json["id"],
        type: json["type"],
        layout: json["layout"],
        title: json["title"],
        url: json["url"],
        appleMusicUrl: json["apple_music_url"],
        subtitle: json["subtitle"],
        images: Images.fromJson(json["images"]),
    );

   
}


