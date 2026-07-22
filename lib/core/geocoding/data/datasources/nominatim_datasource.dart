import 'dart:async';
import 'dart:convert';

import 'package:grace_church/core/geocoding/data/datasources/geocoding_remote_datasource.dart';
import 'package:grace_church/core/geocoding/data/models/nominatim_response_model.dart';
import 'package:http/http.dart' as http;


class NominatimDatasource implements GeocodingRemoteDatasource {
  const NominatimDatasource({required this.client});
  final http.Client client;
  static const String baseUrl = 'https://nominatim.openstreetmap.org';
  static const String userAgent = 'OrangeFiberApp/1.0';

  // Rate limiting: max 1 request per second
  static DateTime? _lastRequestTime;
  static const Duration _minRequestInterval = Duration(milliseconds: 1100);

  /// Ensure rate limiting of 1 request per second
  Future<void> _enforceRateLimit() async {
    if (_lastRequestTime != null) {
      final timeSinceLastRequest = DateTime.now().difference(_lastRequestTime!);
      if (timeSinceLastRequest < _minRequestInterval) {
        final waitTime = _minRequestInterval - timeSinceLastRequest;
        await Future.delayed(waitTime);
      }
    }
    _lastRequestTime = DateTime.now();
  }

  @override
  Future<List<NominatimResponseModel>> searchLocation(String query) async {
    await _enforceRateLimit();

    final uri = Uri.parse('$baseUrl/search').replace(
      queryParameters: {
        'q': query,
        'format': 'json',
        'addressdetails': '1',
        'limit': '10',
        'countrycodes': 'ci', // Côte d'Ivoire
      },
    );

    try {
      final response = await client.get(
        uri,
        headers: {
          'User-Agent': userAgent,
        },
      ).timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = json.decode(response.body) as List;
        return data
            .map(
              (item) =>
                  NominatimResponseModel.fromJson(item as Map<String, dynamic>),
            )
            .toList();
      } else if (response.statusCode == 429) {
        throw Exception('Rate limit exceeded. Please wait before retrying.');
      } else {
        throw Exception('Failed to search location: ${response.statusCode}');
      }
    } on TimeoutException {
      throw Exception('Request timeout. Please check your connection.');
    } catch (e) {
      throw Exception('Error searching location: $e');
    }
  }

  @override
  Future<NominatimResponseModel?> reverseGeocode({
    required double latitude,
    required double longitude,
  }) async {
    await _enforceRateLimit();

    final uri = Uri.parse('$baseUrl/reverse').replace(
      queryParameters: {
        'lat': latitude.toString(),
        'lon': longitude.toString(),
        'format': 'json',
        'addressdetails': '1',
      },
    );

    try {
      final response = await client.get(
        uri,
        headers: {
          'User-Agent': userAgent,
        },
      ).timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = json.decode(response.body) as Map;
        return NominatimResponseModel.fromJson(data as Map<String, dynamic>);
      } else if (response.statusCode == 429) {
        throw Exception('Rate limit exceeded. Please wait before retrying.');
      } else {
        return null;
      }
    } on TimeoutException {
      throw Exception('Request timeout. Please check your connection.');
    } catch (e) {
      throw Exception('Error reverse geocoding: $e');
    }
  }
}
