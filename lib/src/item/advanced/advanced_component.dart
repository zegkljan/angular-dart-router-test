import 'package:angular/angular.dart';

@Component(
  selector: 'advanced',
  template: '''
  <fieldset>
    <legend>AdvancedComponent</legend>
    <p>TODO advanced</p>
  </fieldset>
  ''',
  directives: [coreDirectives]
)
class AdvancedComponent {
}
