import 'package:hive_flutter/adapters.dart';
//
part 'hiveStorage.g.dart';

@HiveType(typeId: 0)
class AuthHive extends HiveObject {
  @HiveField(0)
  late String accesstoken;
  @HiveField(1)
  late bool isAuthenticated;
}
