import 'package:flutter/material.dart';

enum ShareResourceType { song, playlist, album }

@immutable
class ShareResourceRequest {
  final int id;
  final String title;
  final String subTitle;
  final String imageUrl;

  final ShareResourceType resourceType;

  const ShareResourceRequest(
      this.id, this.title, this.subTitle, this.imageUrl, this.resourceType);
}
