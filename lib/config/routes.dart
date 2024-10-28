import 'package:boma_farm/views/screen/settings.dart';
import 'package:boma_farm/views/screen/widgets/calculate.dart';
import 'package:get/get.dart';

import '../views/screen/login.dart';
import '../views/screen/widgets/register.dart';

List<GetPage> routes = [
  GetPage(name: "/", page: () => Calculator()),
  GetPage(name: "/login", page: () => const Login()),
  GetPage(name: "/register", page: () => const Register()),
  GetPage(name: "/settings", page: () => const Settings()),
  //GetPage(name: "/exit", page: () => const Exit())
];
