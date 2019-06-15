import 'package:angular_router/angular_router.dart';

import 'basic/basic_component.template.dart' as basic_template;
import 'advanced/advanced_component.template.dart' as advanced_template;

import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  static final basic = RouteDefinition(
    routePath: RoutePaths.basic,
    component: basic_template.BasicComponentNgFactory
  );

  static final advanced = RouteDefinition(
    routePath: RoutePaths.advanced,
    component: advanced_template.AdvancedComponentNgFactory
  );

  static final all = <RouteDefinition>[
    basic,
    advanced,
  ];
}
