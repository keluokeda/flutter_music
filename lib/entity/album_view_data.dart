import 'package:flutter/material.dart';
import 'package:music/entity/album_detail_entity.dart';
import 'package:music/entity/album_dynamic_entity.dart';

@immutable
class AlbumViewData {
  final AlbumDetailEntity albumDetailEntity;
  final AlbumDynamicEntity albumDynamicEntity;

  const AlbumViewData(this.albumDetailEntity, this.albumDynamicEntity);
}
