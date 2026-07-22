import 'dart:developer';

import 'package:firebase_database/firebase_database.dart' as databaseReference;
import 'package:grace_church/feature/dashboard/data/model/home_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart' as shareData;

@lazySingleton
class ImpleSteamRemoteService {
  Stream<ProfileResponseModel?> getProfileStream() async* {
    final shared = await shareData.SharedPreferences.getInstance();
    log(
      "🔥 Firebase getProfileStream → menberkey: ${await shared.getString('menberkey')}",
    );
    final menberkey = await shared.getString('menberkey');
    if (menberkey == null || menberkey.isEmpty) {
      return;
    }

    yield* databaseReference.FirebaseDatabase.instance
        .ref('menber')
        .child(menberkey)
        .onValue
        .map((event) {
          final data = event.snapshot.value;

          if (data == null) {
            // Si l'utilisateur n'existe pas encore
            return null;
          }
          // Conversion sécurisée en Map<String, dynamic>
          return ProfileResponseModel.fromJson(
            Map<String, dynamic>.from(data as Map),
          );
        });
  }
}
