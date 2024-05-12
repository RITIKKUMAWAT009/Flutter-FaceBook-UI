import 'package:flutter/material.dart';

class VideoModel {
  final VoidCallback avatarOnpressed;
  final String avatarimage;
  final String name;
  final String time;
  final String space;
  final VoidCallback moreOnPressed;
  final VoidCallback cutOnPressed;
  final String VideoTitle;
  final String videoid;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnpressed;
  final VoidCallback sendOnpressed;
  final VoidCallback shareOnPressed;
  final String like;
  final String comments;
  final String shares;
  final String views;

  VideoModel({
    required this.avatarOnpressed,
    this.avatarimage = "",
    this.name = "",
    this.time = "",
    this.space = "",
    required this.moreOnPressed,
    required this.cutOnPressed,
    this.VideoTitle = "",
    this.videoid = "",
    required this.likeOnPressed,
    required this.commentOnpressed,
    required this.sendOnpressed,
    required this.shareOnPressed,
    this.like = "",
    this.comments = "",
    this.shares = "",
    this.views = "",
  });
}

List<VideoModel> videoData = [
  VideoModel(
      avatarOnpressed: () {
        print("avatar on pressed");
      },
      avatarimage: "assets/images/profile/img.png",
      name: "Mandeep",
      time: "8 may 2023",
      space: '.',
      moreOnPressed: () {
        print("more on pressed");
      },
      cutOnPressed: () {
        print("cut on pressed");
      },
      VideoTitle: "Glorious I Arjan Dhillon I Chobar I Brown Studios",
      videoid: "Ib1_vhZGBrM",
      likeOnPressed: () {
        print("like on pressed");
      },
      commentOnpressed: () {
        print("comment on pressed");
      },
      sendOnpressed: () {
        print("send on pressed");
      },
      shareOnPressed: () {
        print("share on pressed");
      },
      like: "1.2k",
      comments: "1.2k",
      shares: "1.2k",
      views: "1.2k")
];
