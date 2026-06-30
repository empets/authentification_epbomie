import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;



class PushNotification {
   static final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  bool _initialized = false;

  bool get initialized => _initialized;

  Future<void> initNotification() async {
    if (_initialized) return;

     // ✅ 1. D'abord initialiser les données timezone
   
  tz.initializeTimeZones();
 
  // ✅ 2. ENSUITE définir la location locale
  tz.setLocalLocation(tz.getLocation('Africa/Abidjan'));


  
    // Android
    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    // iOS
    const DarwinInitializationSettings iosSettings =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    // Settings
    const InitializationSettings settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await notificationsPlugin.initialize(settings);

    _initialized = true;
  }

  NotificationDetails notificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'Epbomi',
        'Epbomi Notifications',
        channelDescription: 'Nous domme fidèlement',
        importance: Importance.max,
        priority: Priority.high,
        showWhen: true,
      ),
      iOS: DarwinNotificationDetails(),
    );
  }

  Future<void> showNotification({
    required int id,
    required String title,
    required String body,
  }) async {
    if (!_initialized) {
      await initNotification();
    }

    await notificationsPlugin.show(
      id,
      title,
      body,
      notificationDetails(),
    );
  }





    static Future<void> schedulerNotification({
    required int id,
    required String titre,
    required String corps,
    required int heure,   // ex: 14
    required int minute,  // ex: 30
  }) async {
    final now = tz.TZDateTime.now(tz.local);

    // Calcule la prochaine occurrence de cette heure
    var scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      heure,
      minute,
    );

    // Si l'heure est déjà passée aujourd'hui → programme pour demain
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    await notificationsPlugin.zonedSchedule(
      id,
      titre,
      corps,
      scheduledDate,
      NotificationDetails(
        android: AndroidNotificationDetails(
          'channel_id',
          'Canal principal',
          channelDescription: 'Notifications planifiées',
          importance: Importance.max,
          priority: Priority.high,
        ),
        iOS: const DarwinNotificationDetails(),
      ),
      // Répète chaque jour à la même heure
      matchDateTimeComponents: DateTimeComponents.time,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle, 
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  /// Annule une notification
  static Future<void> cancel(int id) async {
    await notificationsPlugin.cancel(id);
  }

  /// Annule toutes les notifications
  static Future<void> cancelAll() async {
    await notificationsPlugin.cancelAll();
  }






  
}