import 'package:angular/angular.dart';


import 'src/little_tour_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [

    LittleTourComponent,
  ],
)
class AppComponent {}