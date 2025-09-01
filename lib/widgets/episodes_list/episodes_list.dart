import 'package:flutter/material.dart';
import 'package:flutter_web_project/datamodels/episode_item_model.dart';
import 'package:flutter_web_project/viewmodels/episode_list_view_model.dart';
import 'package:provider/provider.dart';

import 'episode_item.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({super.key, required this.episodes});

  final List<EpisodeItemModel> episodes;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EpisodeListViewModel>(
      create: (_) => EpisodeListViewModel(),
      child: Consumer<EpisodeListViewModel>(
        builder: (context, model, _) {
          return Wrap(
            spacing: 30,
            runSpacing: 30,
            children: [
              for (var entry in episodes.asMap().entries)
                GestureDetector(
                  onTap: () => model.navigateToEpisode(entry.key),
                  child: EpisodeItem(model: entry.value),
                ),
            ],
          );
        },
      ),
    );
  }
}
