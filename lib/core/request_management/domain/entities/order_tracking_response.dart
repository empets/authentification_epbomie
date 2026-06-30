import 'package:equatable/equatable.dart';

class OrderTrackingResponse extends Equatable {
  final List<OrderItem> itemsSav;
  final bool hasError;
  final ApiStatus status;

  const OrderTrackingResponse({
    required this.itemsSav,
    required this.hasError,
    required this.status,
  });

  @override
  List<Object?> get props => [itemsSav, hasError, status];
}

class OrderItem extends Equatable {
  final String dateCreation;
  final String nd;
  final String id;
  final String login;
  final List<OrderStep> steps;
  final String status;

  const OrderItem({
    required this.dateCreation,
    required this.nd,
    required this.id,
    required this.login,
    required this.steps,
    required this.status,
  });

  @override
  List<Object?> get props => [dateCreation, nd, id, login, steps, status];
}

class OrderStep extends Equatable {
  final String dateCreation;
  final String dateFin;
  final double displayOrder;
  final String isInstallationStep;
  final String message;
  final String status;
  final String template;
  final String title;

  const OrderStep({
    required this.dateCreation,
    required this.dateFin,
    required this.displayOrder,
    required this.isInstallationStep,
    required this.message,
    required this.status,
    required this.template,
    required this.title,
  });

  /// Vérifie si l'étape est terminée
  bool get isCompleted => status == 'Terminé';

  /// Vérifie si l'étape est en cours
  bool get isInProgress => status == 'En cours';

  /// Vérifie si l'étape est à venir
  bool get isPending => status == 'A venir';

  @override
  List<Object?> get props => [
        dateCreation,
        dateFin,
        displayOrder,
        isInstallationStep,
        message,
        status,
        template,
        title,
      ];
}

class ApiStatus extends Equatable {
  final String code;
  final String message;

  const ApiStatus({
    required this.code,
    required this.message,
  });

  /// Vérifie si l'opération a réussi
  bool get isSuccess => code == '800';

  @override
  List<Object?> get props => [code, message];
}
