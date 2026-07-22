import 'dart:convert';
import 'package:grace_church/core/request_management/data/models/eligibility_model.dart';
import 'package:http/http.dart' as http;

/// Interface du DataSource pour le test d'éligibilité
abstract class EligibilityRemoteDataSource {
  /// Vérifie l'éligibilité d'une adresse
  /// Throws [Exception] si erreur
  Future<EligibilityModel> checkEligibility({
    required double latitude,
    required double longitude,
  });
}

/// Implémentation du DataSource pour le test d'éligibilité
class EligibilityRemoteDataSourceImpl implements EligibilityRemoteDataSource {
  EligibilityRemoteDataSourceImpl({required this.client});
  final http.Client client;
  static const String baseUrl =
      'https://mabox.orange.ci/api/uberisation-diagnostic-api/uberisation_prod';

  @override
  Future<EligibilityModel> checkEligibility({
    required double latitude,
    required double longitude,
  }) async {
    final url = Uri.parse('$baseUrl/proposition_offre');

    print('start request to $url with lat: $latitude, long: $longitude');

    final response = await client.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'user': '1',
        'data': {'latitude': latitude, 'longitude': longitude, 'choix': []},
      }),
    );

    print('response status: ${response.statusCode}');
    print('response body: ${response.body}');

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;

      // Vérifier s'il y a une erreur dans la réponse
      final hasError = jsonResponse['hasError'] as bool? ?? false;
      if (hasError) {
        throw Exception(
          jsonResponse['status']?['message'] ??
              'Erreur lors de la vérification',
        );
      }
      final item = jsonResponse['item'] as Map<String, dynamic>;

      return EligibilityModel.fromJson(item);
    } else if (response.statusCode >= 500) {
      throw Exception('Erreur serveur: ${response.statusCode}');
    } else if (response.statusCode >= 400) {
      throw Exception('Erreur client: ${response.statusCode}');
    } else {
      throw Exception('Erreur inconnue: ${response.statusCode}');
    }
  }
}
