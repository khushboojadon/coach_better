import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/models/video_model.dart';
import 'package:coach_better/services/videos_service.dart';

class VideoMemberViewModel extends BaseModel {
  VideoService _videoService = VideoService();
  Videos videos;
  Future getVideos() async {
    setstate(ViewState.Busy);
    videos = await _videoService.fetchVideos();
    setstate(ViewState.Idle);
  }
}
