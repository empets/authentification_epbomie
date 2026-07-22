import 'package:grace_church/core/request_management/domain/entities/order_tracking_response.dart';

class OrderTrackingResponseModel extends OrderTrackingResponse {
  const OrderTrackingResponseModel({
    required super.itemsSav,
    required super.hasError,
    required super.status,
  });

  factory OrderTrackingResponseModel.fromJson(Map<String, dynamic> json) {
    return OrderTrackingResponseModel(
      itemsSav: (json['itemsSav'] as List<dynamic>)
          .map((item) => OrderItemModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      hasError: json['hasError'] as bool,
      status: ApiStatusModel.fromJson(json['status'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'itemsSav':
          itemsSav.map((item) => (item as OrderItemModel).toJson()).toList(),
      'hasError': hasError,
      'status': (status as ApiStatusModel).toJson(),
    };
  }
}

class OrderItemModel extends OrderItem {
  const OrderItemModel({
    required super.dateCreation,
    required super.nd,
    required super.id,
    required super.login,
    required super.steps,
    required super.status,
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) {
    return OrderItemModel(
      dateCreation: json['dateCreation'] as String? ?? '',
      nd: json['nd'] as String? ?? '',
      id: json['id'] as String? ?? '',
      login: json['login'] as String? ?? '',
      steps: (json['steps'] as List<dynamic>)
          .map((step) => OrderStepModel.fromJson(step as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dateCreation': dateCreation,
      'nd': nd,
      'id': id,
      'login': login,
      'steps': steps.map((step) => (step as OrderStepModel).toJson()).toList(),
      'status': status,
    };
  }
}

class OrderStepModel extends OrderStep {
  const OrderStepModel({
    required super.dateCreation,
    required super.dateFin,
    required super.displayOrder,
    required super.isInstallationStep,
    required super.message,
    required super.status,
    required super.template,
    required super.title,
  });

  factory OrderStepModel.fromJson(Map<String, dynamic> json) {
    return OrderStepModel(
      dateCreation: json['dateCreation'] as String? ?? '',
      dateFin: json['dateFin'] as String? ?? '',
      displayOrder: (json['displayOrder'] as num?)?.toDouble() ?? 0.0,
      isInstallationStep: json['isInstallationStep'] as String? ?? 'false',
      message: json['message'] as String? ?? '',
      status: json['status'] as String? ?? '',
      template: json['template'] as String? ?? '',
      title: json['title'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dateCreation': dateCreation,
      'dateFin': dateFin,
      'displayOrder': displayOrder,
      'isInstallationStep': isInstallationStep,
      'message': message,
      'status': status,
      'template': template,
      'title': title,
    };
  }
}

class ApiStatusModel extends ApiStatus {
  const ApiStatusModel({
    required super.code,
    required super.message,
  });

  factory ApiStatusModel.fromJson(Map<String, dynamic> json) {
    return ApiStatusModel(
      code: json['code'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message,
    };
  }
}
