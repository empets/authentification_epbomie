// import 'dart:convert';

// import 'package:grace_church/core/request_management/data/models/order_tracking_response_model.dart';
// import 'package:http/http.dart' as http;

// abstract class OrderTrackingRemoteDatasource {
//   Future<OrderTrackingResponseModel> getOrderTracking({
//     required String dossierId,
//   });
// }

// class OrderTrackingRemoteDatasourceImpl
//     implements OrderTrackingRemoteDatasource {
//   OrderTrackingRemoteDatasourceImpl({required this.client});
//   final http.Client client;

//   @override
//   Future<OrderTrackingResponseModel> getOrderTracking({
//     required String dossierId,
//   }) async {
//     final url = Uri.parse(
//       'https://mabox.orange.ci/api/api-fibre-orange-v4/dossier/getInfosDossier',
//     );

//     final headers = {
//       'isEncrypte': 'false',
//       'Content-Type': 'application/json',
//     };

//     final body = jsonEncode({
//       'data': {
//         'dossierId': dossierId,
//       },
//     });

//     try {
//       final response = await client.post(
//         url,
//         headers: headers,
//         body: body,
//       );

//       if (response.statusCode == 200) {
//         final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
//         return OrderTrackingResponseModel.fromJson(jsonResponse);
//       } else {
//         throw FirebaseError(
//          'Erreur serveur: ${response.statusCode}',
//         );
//       }
//     } catch (e) {
//       if (e is FirebaseError) {
//         rethrow;
//       }
//       throw FirebaseError(
//        'Erreur de connexion: $e',
//       );
//     }
//   }
// }
