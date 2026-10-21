import 'package:brick_offline_first_with_rest/brick_offline_first_with_rest.dart';

@ConnectOfflineFirstWithRest()
class Hat extends OfflineFirstWithRestModel {
  final String color;
  final int width;

  Hat({required this.color, required int width}) : width = (width) + 1;
}
