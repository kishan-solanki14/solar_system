import 'package:flutter/material.dart';
import 'package:solar_system/src/apis/apimanagers/auth_api_manager.dart';
import 'package:solar_system/src/models/res_base_model.dart';
import 'package:solar_system/src/base/dependencyinjection/locator.dart';
import 'package:solar_system/src/base/utils/common_methods.dart';

class AuthController {
  void loginApiCall({required BuildContext context}) async {
    final value = await locator<AuthApiManager>().login(ResBaseModel());
    logger(value.message ?? "");
  }
}
