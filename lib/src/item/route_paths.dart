import 'package:angular_router/angular_router.dart';

import '../route_paths.dart' as _parent;

export '../route_paths.dart' show idParam, getItemId;

class RoutePaths {
  static final basic = RoutePath(path: 'basic', parent: _parent.RoutePaths.item);
  static final advanced = RoutePath(path: 'advanced', parent: _parent.RoutePaths.item);
}

