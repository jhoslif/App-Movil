import 'package:examen_pillajo_ui/src/models/music_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MusicService {
  MusicService();
  final String _rootUrl =
      "https://shazam-core.p.rapidapi.com/v1/artists/tracks?artist_id=43328183&limit=10";

  Future<List<Music>> getMusic() async {
    List<Music> result = [];
    try {
      var url = Uri.parse(_rootUrl);
      var headers = {
        "x-rapidapi-host": "shazam-core.p.rapidapi.com",
        "x-rapidapi-key": "1ed7a53aa3msh5a775c30a419817p10c3efjsn0b22e94d50d9"
      };

      final response = await http.get(url, headers: headers);
      if (response.body.isEmpty) return result;
      List<dynamic> listBody = json.decode(response.body);
      for (var item in listBody) {
        final music = Music.fromJson(item);
        result.add(music);
      }
      return result;
    } catch (ex) {
      return result;
    }
  }
}
