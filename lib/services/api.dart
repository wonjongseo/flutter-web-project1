import 'dart:convert';

import 'package:flutter_web_project/datamodels/episode_item_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static const String _apiEndpoint =
      'https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics';

  Future<dynamic> getEpisodes() async {
    // // var response = await http.get(Uri.parse('$_apiEndpoint/courseEpisodes'));
    // // if (response.statusCode == 200) {
    // //   var episodes =
    // //       (json.decode(response.body) as List)
    // //           .map((e) => EpisodeItemModel.fromJson(e))
    // //           .toList();
    //   return episodes;
    // }

    await Future.delayed(Duration(milliseconds: 500));

    return episodes;
  }

  Future<EpisodeItemModel> getEpisode(int id) async {
    for (var episode in episodes) {
      if (episode.id == id) return episode;
    }
    return episodes[0];
  }

  final episodes = [
    EpisodeItemModel(
      id: 1,
      title: 'Setup, Build and Deploy',
      duration: 14.07,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdZOBkio-wrTpcqr9ELIxaK-sN4PtmVHKATw&s',
    ),
    EpisodeItemModel(
      id: 2,
      title: 'Adding a Responsive UI',
      duration: 18.54,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdZOBkio-wrTpcqr9ELIxaK-sN4PtmVHKATw&s',
    ),
    EpisodeItemModel(
      id: 3,
      title: 'Layout Templates',
      duration: 14.55,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdZOBkio-wrTpcqr9ELIxaK-sN4PtmVHKATw&s',
    ),
    EpisodeItemModel(
      id: 4,
      title: 'State Management and Api integration',
      duration: 14.55,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdZOBkio-wrTpcqr9ELIxaK-sN4PtmVHKATw&s',
    ),
  ];
}
