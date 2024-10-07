import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:openid_client/openid_client.dart';
import 'package:openid_client/openid_client_io.dart';
import 'package:testbokotech/constants/constants.dart';
import 'package:testbokotech/features/auth/api/auth_api.dart';

class AuthService extends GetxService implements AuthApi {

   final FlutterAppAuth _appAuth = const FlutterAppAuth();
  final String clientId = 'angolar_test'; 
  final String realm = 'bitkap_dev';
  final String issuer = 'https://sso.bitkap.africa/realms/bitkap_dev';
  final String redirectUrl = 'com.test.bokoteck.com.testbokotech:/oauth2redirect';
//com.test.bokoteck.com.testbokotech:/oauth2redirect
//com.test.bokoteck.com:/oauth2redirect
 final AuthorizationServiceConfiguration _serviceConfiguration =
      const AuthorizationServiceConfiguration(
    authorizationEndpoint: 'https://sso.bitkap.africa/realms/bitkap_dev/protocol/openid-connect/auth',
    tokenEndpoint: 'https://sso.bitkap.africa/realms/bitkap_dev/protocol/openid-connect/token',
  );
  final List<String> scopes = ['openid', 'profile', 'email'];
  @override
  Future<Map<String,dynamic>?> login() async{

   try {
       AuthorizationTokenResponse? result = await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          clientId,
          redirectUrl,
         //issuer: issuer,
          serviceConfiguration: _serviceConfiguration,
          scopes: scopes,
        ),
      );
      print(result);

      String? accessToken = result!.accessToken;
      Map<String, dynamic> decodedToken = JwtDecoder.decode(accessToken!);

      // Décoder les informations utilisateur
      return decodedToken;
    } catch (e) {
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