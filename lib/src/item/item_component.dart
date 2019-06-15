import 'package:angular/angular.dart';
import 'package:angular/di.dart';
import 'package:angular_router/angular_router.dart';

import '../items_service.dart';
import '../data_model/item.dart';
import '../routes.dart' as parent_routes;
import 'routes.dart';

@Component(
  selector: 'item',
  template: '''
  <fieldset>
    <legend>ItemComonent</legend>
    <p *ngIf="item != null">
      <h2>({{item.id}}) {{item.name}}</h2>
      <p>Details: <button (click)="onDetail(true)">basic</button> | <button (click)="onDetail(false)">advanced</button></p>
      <router-outlet [routes]="Routes.all"></router-outlet>
    </p>
  </fieldset>
  ''',
  providers: [ItemsService],
  directives: [coreDirectives],
  exports: [Routes]
)
class ItemComponent extends Object with CanReuse implements OnActivate {
  final ItemsService _itemsService;
  final Router _router;

  Item item;
  bool confirmationVisible = false;
  bool changed = false;

  ItemComponent(this._itemsService, this._router);

  @override
  void onActivate(RouterState previous, RouterState current) async {
    try {
      final id = parent_routes.getItemId(current.parameters);
      if (id != null) {
        item = await _itemsService.getItem(id);
      }
    } catch (e) {
      _router.navigate(parent_routes.RoutePaths.items.toUrl());
    }
  }

  void onDetail(bool basic) async {
    var path = RoutePaths.advanced;
    if (basic) {
      path = RoutePaths.basic;
    }
    var url = path.toUrl(parameters: {idParam: '${item.id}'});
    print(url);
    print(await _router.navigate(url));
  }
}
