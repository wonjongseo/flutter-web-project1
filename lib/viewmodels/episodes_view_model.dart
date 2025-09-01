import 'package:flutter/material.dart';
import 'package:flutter_web_project/datamodels/episode_item_model.dart';
import 'package:flutter_web_project/locator.dart';
import 'package:flutter_web_project/routing/route_names.dart';
import 'package:flutter_web_project/services/api.dart';
import 'package:flutter_web_project/services/navigation_service.dart';

class EpisodesViewModel extends ChangeNotifier {
  final _api = locator<Api>();

  List<EpisodeItemModel> _episodes = [];
  List<EpisodeItemModel> get episodes => _episodes;

  bool _busy = false;
  bool get busy => _busy;
  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future getEpisodes() async {
    _setBusy(true);
    var episodesResuls = await _api.getEpisodes();

    if (episodesResuls is String) {
      _errorMessage = episodesResuls;
    } else {
      _episodes = episodesResuls;
    }

    _setBusy(false);
  }

  void _setBusy(bool value) {
    _busy = value;
    notifyListeners();
  }

  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToEpisode(int index) {
    _navigationService.navigateTo(
      EpisodeDetailsRoute,
      queryParams: {'id': index.toString()},
    );
  }
}
