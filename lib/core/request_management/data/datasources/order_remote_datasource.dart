import 'dart:convert';

import 'package:grace_church/core/request_management/data/models/order_model.dart';
import 'package:http/http.dart' as http;

/// Interface du DataSource pour la création de commandes
abstract class OrderRemoteDataSource {
  /// Crée une nouvelle commande
  /// Throws [Exception] si erreur
  Future<OrderModel> createOrder({
    required String contact,
    required String nom,
    required String prenom,
    required String latitude,
    required String longitude,
    required String codeOffre,
  });
}

/// Implémentation du DataSource pour la création de commandes
class OrderRemoteDataSourceImpl implements OrderRemoteDataSource {
  OrderRemoteDataSourceImpl({required this.client});
  final http.Client client;
  static const String baseUrl =
      'https://mabox.orange.ci/apie/api-fibre-orange-v4';

  @override
  Future<OrderModel> createOrder({
    required String contact,
    required String nom,
    required String prenom,
    required String latitude,
    required String longitude,
    required String codeOffre,
  }) async {
    final url = Uri.parse('$baseUrl/order/create');

    final response = await client.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'data': {
          'contact': contact,
          'nom': nom,
          'prenom': prenom,
          'latitude': latitude,
          'longitude': longitude,
          'codeOffre': codeOffre,
        },
      }),
    );

    print('object ${response.body}');

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;

      // Vérifier s'il y a une erreur dans la réponse
      final hasError = jsonResponse['hasError'] as bool? ?? false;

      if (hasError) {
        final errorMessage = jsonResponse['status']?['message'] as String? ??
            'Erreur lors de la création de la commande';
        throw Exception(errorMessage);
      }

      // Parser la réponse de succès
      // Format: {"status":{"code":"800","message":"Operation effectuee avec succes"},"hasError":false}
      final status = jsonResponse['status'] as Map<String, dynamic>?;
      final message =
          status?['message'] as String? ?? 'Commande créée avec succès';

      return OrderModel(
        success: true,
        message: message,
      );
    } else if (response.statusCode >= 500) {
      throw Exception('Erreur serveur: ${response.statusCode}');
    } else if (response.statusCode >= 400) {
      throw Exception('Erreur client: ${response.statusCode}');
    } else {
      throw Exception('Erreur inconnue: ${response.statusCode}');
    }
  }
}
