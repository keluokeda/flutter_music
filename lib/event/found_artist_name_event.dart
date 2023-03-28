import 'package:flutter/foundation.dart';

@immutable
class FoundArtistNameEvent {
  final int id;
  final String name;

  const FoundArtistNameEvent(this.id, this.name);
}
