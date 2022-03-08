import 'package:injectable/injectable.dart';
import 'package:sih_flutter_app/core/injection.config.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);
