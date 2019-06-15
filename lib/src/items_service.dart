import 'package:http/http.dart';

import 'data_model/item.dart';

class ItemsService {
  List<Item> _items;

  ItemsService() {
    _items = [Item(0, 'a'), Item(1, 'b')];
  }

  Future<List<Item>> getItems() async {
    return _items;
  }

  Future<Item> getItem(int id) async {
    return _items.firstWhere((item) => item.id == id);
  }
}
