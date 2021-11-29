import 'package:examen_pillajo_ui/src/models/music_model.dart';
import 'package:examen_pillajo_ui/src/services/music_services.dart';
import 'package:examen_pillajo_ui/src/widgets/music_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MusicService _musicService = MusicService();
  List<Music>? _listMusic;

  @override
  void initState() {
    super.initState();
    _downloadContent();
  }

  @override
  Widget build(BuildContext context) {
    return _listMusic == null
        ? const Center(
            child: SizedBox(
                height: 50.0, width: 50.0, child: CircularProgressIndicator()),
          )
        : _listMusic!.isEmpty
            ? const Center(
                child: SizedBox(child: Text('No hay datos de mantenimientos')),
              )
            : Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 7.0),
                child: ListView(
                    children: _listMusic!
                        .map((e) => MusicCard(model: e))
                        .toList()));
  }

  _downloadContent() {
    _musicService.getMusic().then((value) {
      _listMusic = value;
      setState(() {});
    });
  }
}
