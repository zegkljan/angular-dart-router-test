import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../route_paths.dart';
import '../data_model/item.dart';
import '../items_service.dart';

@Component(
  selector: 'item-list',
  template: '''
  <fieldset>
    <legend>ItemListComponent</legend>
    <ul *ngIf="items.isNotEmpty">
      <li *ngFor="let item of items">
        <a [routerLink]="itemUrl(item.id)">{{item.id}} - {{item.name}}</a>
      </li>
    </ul>
  </fieldset>
  ''',
  styleUrls:  const [],
  directives: const [coreDirectives, routerDirectives],
  providers: [ItemsService, RoutePaths],
  exports: [RoutePaths]
)
class ItemListComponent implements OnActivate {
  final ItemsService _itemsService;
  final Router _router;
  List<Item> items = [];

  ItemListComponent(this._itemsService, this._router);

  @override
  void onActivate(RouterState previous, RouterState current) async {
    items = await _itemsService.getItems();
  }

  String itemUrl(int id) => RoutePaths.item.toUrl(parameters: {idParam: '$id'});
}
