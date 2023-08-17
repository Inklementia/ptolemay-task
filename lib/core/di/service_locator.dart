// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'service_locator.config.dart';

final sl = GetIt.instance;

@InjectableInit(
  asExtension: true,
  initializerName: 'init',
  preferRelativeImports: true,
)
void configureDependencies() => sl.init();

Future<void> resetDependencies() async {
  await sl.reset();
  configureDependencies();
}
