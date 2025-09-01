import 'package:flutter/material.dart';
import 'package:flutter_web_project/viewmodels/episode_details_view_model.dart';
import 'package:provider/provider.dart';

class EpisodeDetails extends StatelessWidget {
  final int id;
  const EpisodeDetails({key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EpisodeDetailsViewModel>(
      create: (_) => EpisodeDetailsViewModel()..getEpisodeData(id),
      child: Consumer<EpisodeDetailsViewModel>(
        builder: (context, model, child) {
          return Column(
            children: <Widget>[
              model.episode == null
                  ? Container()
                  : SizedBox(
                    height: 320,
                    child: Image.network(
                      model.episode!.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
              model.episode == null
                  ? CircularProgressIndicator()
                  : Text(model.episode!.title, style: TextStyle(fontSize: 60)),
            ],
          );
        },
      ),
    );
  }
}
