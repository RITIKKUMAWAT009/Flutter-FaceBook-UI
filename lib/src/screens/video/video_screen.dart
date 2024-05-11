import 'package:facebook_clone/src/common/widgets/like_comment_section.dart';
import 'package:facebook_clone/src/common/widgets/like_comment_section_2.dart';
import 'package:facebook_clone/src/models/video_models/video_model.dart';
import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Videos",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
          Divider(
            thickness: 3,
            color: Colors.grey.shade400,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage(videoData[index].avatarimage),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                videoData[index].name,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                videoData[index].time,
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            videoData[index].space,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 2.0),
                            child: InkWell(
                              child: const Text(
                                "Follow",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              splashColor: Colors.blue,
                              radius: 7,
                              onTap: () {},
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.cancel_outlined),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    videoData[index].VideoTitle,
                    style: const TextStyle(fontSize: 17),
                    maxLines: 1,
                  ),
                  YoutubePlayerControllerProvider(
                    controller: YoutubePlayerController.fromVideoId(
                        videoId: videoData[index].videoid,
                        autoPlay: false,
                        params: const YoutubePlayerParams(
                          showControls: true,
                          mute: false,
                        )),
                    child: YoutubePlayer(
                      controller: YoutubePlayerController.fromVideoId(
                        videoId: videoData[index].videoid,
                        params: const YoutubePlayerParams(
                            showControls: true, showFullscreenButton: true),
                      ),
                      aspectRatio: 16 / 9,
                    ),
                  ),
                  const LikeCommentSection(),
                  const Divider(
                    thickness: 1,
                  ),
                  const LikeCommentSection2(),
                  const Divider(
                    thickness: 4,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
