import 'package:flutter/foundation.dart';

@immutable
class LoadListResult<T> {
  final List<T> list;
  final bool more;

  const LoadListResult(this.list, this.more);
}
