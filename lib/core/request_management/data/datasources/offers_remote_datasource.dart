import 'dart:convert';

import 'package:grace_church/core/request_management/data/models/offer_model.dart';
import 'package:grace_church/core/request_management/domain/entities/offer.dart';
import 'package:http/http.dart' as http;


/// Interface du DataSource pour les offres
abstract class OffersRemoteDataSource {
  /// Récupère la liste des offres selon le type
  /// Throws [Exception] si erreur
  Future<List<OfferModel>> getOffers(OfferType type);
}

/// Implémentation du DataSource pour les offres
class OffersRemoteDataSourceImpl implements OffersRemoteDataSource {
  OffersRemoteDataSourceImpl({required this.client});
  final http.Client client;
  static const String baseUrl =
        'https://mabox.orange.ci/api-fibre/uberisation-diagnostic-api';

  @override
  Future<List<OfferModel>> getOffers(OfferType type) async {
    final url = type == OfferType.fiber
        ? Uri.parse('$baseUrl/uberisation_prod/liste_offre_fibre')
        : Uri.parse('$baseUrl/formule_rechargeable/liste_offre_4g');

    final response = await client.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'user': '1',
        if (type == OfferType.fourG) 'isSimpleLoading': false,
        'data': {},
      }),
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;

      // Vérifier s'il y a une erreur dans la réponse
      final hasError = jsonResponse['hasError'] as bool? ?? false;
      if (hasError) {
        throw Exception(
          jsonResponse['status']?['message'] ??
              'Erreur lors de la récupération',
        );
      }

      // Les offres fiber sont dans 'item', les offres 4G dans 'items'
      final List<dynamic> offersJson;
      if (type == OfferType.fiber) {
        offersJson = jsonResponse['item'] as List<dynamic>? ?? [];
      } else {
        offersJson = jsonResponse['items'] as List<dynamic>? ?? [];
      }

      return offersJson
          .map(
            (json) => type == OfferType.fiber
                ? OfferModel.fromJsonFiber(json as Map<String, dynamic>)
                : OfferModel.fromJson4G(json as Map<String, dynamic>),
          )
          .toList();
    } else if (response.statusCode >= 500) {
      throw Exception('Erreur serveur: ${response.statusCode}');
    } else if (response.statusCode >= 400) {
      throw Exception('Erreur client: ${response.statusCode}');
    } else {
      throw Exception('Erreur inconnue: ${response.statusCode}');
    }
  }
}
