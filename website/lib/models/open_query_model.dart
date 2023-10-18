import 'package:deact/deact.dart';

class OpenQueryModel {
  OpenQueryModel({this.open = false, this.query});

  final bool open;
  final DeactNode? query;
}
