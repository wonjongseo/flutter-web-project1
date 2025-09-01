import 'package:flutter/cupertino.dart';
import 'package:flutter_web_project/locator.dart';
import 'package:flutter_web_project/routing/route_names.dart';
import 'package:flutter_web_project/services/navigation_service.dart';

class EpisodeListViewModel extends ChangeNotifier {
  final NavigationService _nav = locator<NavigationService>();

  void navigateToEpisode(int index) {
    _nav.navigateTo(EpisodeDetailsRoute, queryParams: {'id': index.toString()});
  }
}
