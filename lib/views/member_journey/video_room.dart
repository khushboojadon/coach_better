import 'package:cached_network_image/cached_network_image.dart';
import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/ViewModels/video_member_view_model.dart';
import 'package:coach_better/models/video_model.dart';
import 'package:coach_better/views/base_view.dart';
import 'package:flutter/material.dart';

class VideoRoom extends StatefulWidget {
  @override
  _VideoRoomState createState() => _VideoRoomState();
}

class _VideoRoomState extends State<VideoRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text('Video Room', style: Theme.of(context).textTheme.headline6)),
      body: BaseView<VideoMemberViewModel>(
        onModelReady: (model) => model.getVideos(),
        builder: (context, model, child) => model.state == ViewState.Busy
            ? CircularProgressIndicator()
            : model.videos == null
                ? CircularProgressIndicator()
                : model.videos.data.isEmpty
                    ? Center(child: Text('No Videos'))
                    : SafeArea(child: videolist(model.videos)),
      ),
    );
  }

  Widget videolist(Videos videos) {
    return ListView.builder(
        itemCount: videos.data.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, VideoPlayerViewRoute,
                  arguments: videos.data[index].videoUrl);
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => VideoDemo(
              //               videourl:
              //                   snapshot.data.data[index].videoUrl,
              //             )));
              // Navigator.pushNamed(context, '/video_player');
            },
            child: Card(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  CachedNetworkImage(
                    width: MediaQuery.of(context).size.width,
                    height: 150.0,
                    fit: BoxFit.contain,
                    imageUrl: videos.data[index].thumbnailUrl,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                  SizedBox(height: 10.0),
                  Text(videos.data[index].title),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
          );
        });
  }
}
