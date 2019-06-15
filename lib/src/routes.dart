import 'package:angular_router/angular_router.dart';

import 'item_list/item_list_component.template.dart' as item_list_template;
import 'item/item_component.template.dart' as item_template;

import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  static final items = RouteDefinition(
    routePath: RoutePaths.items,
    component: item_list_template.ItemListComponentNgFactory
  );

  static final item = RouteDefinition(
    routePath: RoutePaths.item,
    component: item_template.ItemComponentNgFactory
  );

  static final all = <RouteDefinition>[
    items,
    item,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.items.toUrl()
    )
  ];
}
