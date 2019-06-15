import 'package:angular_router/angular_router.dart';

const idParam = 'id';

class RoutePaths {
  static final items = RoutePath(path: 'items');
  static final item = RoutePath(path: 'items/:$idParam');
}

int getItemId(Map<String, String> params) {
  final id = params[idParam];
  return id == null ? null : int.tryParse(id);
}
