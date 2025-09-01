import 'package:flutter/material.dart';
import 'package:flutter_web_project/datamodels/episode_item_model.dart';
import 'package:flutter_web_project/locator.dart';
import 'package:flutter_web_project/services/api.dart';

class EpisodeDetailsViewModel extends ChangeNotifier {
  final Api _api = locator<Api>();

  EpisodeItemModel? _episode;

  EpisodeItemModel? get episode => _episode;

  Future getEpisodeData(int id) async {
    print('getEpisodeData');
    var response = await _api.getEpisode(id);

    if (response is String) {
      print("Error");
    } else {
      _episode = response;
    }

    notifyListeners();
  }
}
