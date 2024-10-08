import 'package:flutter/services.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:openid_client/openid_client.dart';
import 'package:openid_client/openid_client_io.dart';
import 'package:testbokotech/constants/constants.dart';
import 'package:testbokotech/features/auth/api/auth_api.dart';

class AuthService extends GetxService implements AuthApi {
  final FlutterAppAuth _appAuth =  FlutterAppAuth();
  final String clientId = 'angolar_test';
  final String realm = 'bitkap_dev';
  final String redirectUrl = 'net.bokotesh.app.//callback';

  final AuthorizationServiceConfiguration _serviceConfiguration =
      const AuthorizationServiceConfiguration(
 
        'https://sso.bitkap.africa/realms/bitkap_dev/protocol/openid-connect/auth',
   
        'https://sso.bitkap.africa/realms/bitkap_dev/protocol/openid-connect/token',
  );
  final List<String> scopes = ['openid', 'profile', 'email','api'];
  @override
  Future<Map<String, dynamic>?> login() async {
    try {
      AuthorizationTokenResponse? result =
          await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          clientId,
          redirectUrl,
          scopes: scopes,
          serviceConfiguration: _serviceConfiguration,
        ),
      );
      print(result);

      String? accessToken = result!.accessToken;
      Map<String, dynamic> decodedToken = JwtDecoder.decode(accessToken!);

      // Décoder les informations utilisateur
      return decodedToken;
    } on PlatformException catch (e) {
      print(e.code);
      print(e.message);
      print(e.details);
      print('Erreur de connexion : $e');
    }
    return null;
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
