import 'package:flutter/material.dart';
import 'package:flutter_web_project/datamodels/season_details_model.dart';
import 'package:flutter_web_project/viewmodels/episodes_view_model.dart';
import 'package:flutter_web_project/widgets/episodes_list/episodes_list.dart';
import 'package:flutter_web_project/widgets/season_details/season_details.dart';
import 'package:provider/provider.dart';

class EpisodesView extends StatelessWidget {
  const EpisodesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EpisodesViewModel>(
      create: (_) => EpisodesViewModel()..getEpisodes(), // 생성 직후 1회 로드
      child: Consumer<EpisodesViewModel>(
        builder: (context, model, _) {
          if (model.busy) {
            return const Center(child: CircularProgressIndicator());
          }

          if (model.errorMessage != null) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                model.errorMessage!,
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          // 정상 표시
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                // ... 다른 위젯들
                EpisodesList(episodes: model.episodes),
              ],
            ),
          );
        },
      ),
    );
  }
}
