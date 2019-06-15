import 'package:angular/angular.dart';

import '../../data_model/item.dart';

@Component(
  selector: 'basic',
  template: '''
  <fieldset>
    <legend>BasicComponent</legend>
    <p>TODO basic</p>
  </fieldset>
  ''',
  directives: [coreDirectives]
)
class BasicComponent {
  Item item;
}
