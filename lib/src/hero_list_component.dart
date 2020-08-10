import 'package:angular/angular.dart';


@Component(
  selector: 'hero-list',
  templateUrl: 'hero_list_component.html',
  directives: [coreDirectives, formDirectives, HeroDetailComponent],
  providers: [ClassProvider(HeroService)],
)
class HeroListComponent implements OnInit {
  // ···
}
class HeroService {
  final BackendService _backendService;
  final Logger _logger;
  List<Hero> heroes;

  HeroService(this._logger, this._backendService);

  Future<List<Hero>> getAll() async {
    heroes = await _backendService.getAll(Hero);
    _logger.log('Fetched ${heroes.length} heroes.');
    return heroes;
  }
}
final HeroService _heroService;

HeroListComponent(this._heroService);