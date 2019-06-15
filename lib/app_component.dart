import 'package:angular/angular.dart';

import 'package:angular_router/angular_router.dart';

import 'src/routes.dart';

@Component(
  selector: 'app',
  template: '''
  <fieldset>
    <legend>AppComponent</legend>
    <h1>{{title}}</h1>
    <p><a [routerLink]="RoutePaths.items.toUrl()">home</a></p>
    <router-outlet [routes]="Routes.all"></router-outlet>
  </fieldset>
  ''',
  directives: [
    routerDirectives
  ],
  exports: [Routes, RoutePaths]
)
class AppComponent implements OnInit {
  final Router _router;

  final title = 'Item manager';

  AppComponent(this._router);

  @override
  void ngOnInit() {
    _router.onRouteActivated.listen((newState) {
      print('Navigating from ${_router.current} to $newState');
    });
  }
}
