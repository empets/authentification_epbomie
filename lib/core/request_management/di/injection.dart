// import 'package:http/http.dart' as http;
// import 'package:ma_box_orange/features/request_management/data/datasources/eligibility_remote_datasource.dart';
// import 'package:ma_box_orange/features/request_management/data/datasources/offers_remote_datasource.dart';
// import 'package:ma_box_orange/features/request_management/data/datasources/order_remote_datasource.dart';
// import 'package:ma_box_orange/features/request_management/data/repositories/eligibility_repository_impl.dart';
// import 'package:ma_box_orange/features/request_management/data/repositories/offers_repository_impl.dart';
// import 'package:ma_box_orange/features/request_management/data/repositories/order_repository_impl.dart';
// import 'package:ma_box_orange/features/request_management/domain/repositories/eligibility_repository.dart';
// import 'package:ma_box_orange/features/request_management/domain/repositories/offers_repository_new.dart';
// import 'package:ma_box_orange/features/request_management/domain/repositories/order_repository.dart';
// import 'package:ma_box_orange/features/request_management/domain/usecases/check_eligibility_usecase.dart';
// import 'package:ma_box_orange/features/request_management/domain/usecases/get_offers_usecase.dart';
// import 'package:ma_box_orange/features/request_management/presentation/cubits/eligibility/eligibility_cubit.dart';
// import 'package:ma_box_orange/features/request_management/presentation/cubits/offers/offers_cubit.dart';
// import 'package:ma_box_orange/features/request_management/presentation/cubits/order/order_cubit.dart';

// /// Classe pour l'injection de dépendances du module Request Management
// class RequestManagementInjection {
//   // HTTP Client (singleton)
//   static final http.Client _httpClient = http.Client();

//   // DataSources
//   static EligibilityRemoteDataSource get eligibilityDataSource =>
//       EligibilityRemoteDataSourceImpl(client: _httpClient);

//   static OffersRemoteDataSource get offersDataSource =>
//       OffersRemoteDataSourceImpl(client: _httpClient);

//   static OrderRemoteDataSource get orderDataSource =>
//       OrderRemoteDataSourceImpl(client: _httpClient);

//   // Repositories
//   static EligibilityRepository get eligibilityRepository =>
//       EligibilityRepositoryImpl(remoteDataSource: eligibilityDataSource);

//   static OffersRepositoryNew get offersRepository =>
//       OffersRepositoryImpl(remoteDataSource: offersDataSource);

//   static OrderRepository get orderRepository =>
//       OrderRepositoryImpl(remoteDataSource: orderDataSource);

//   // UseCases
//   static CheckEligibilityUseCase get checkEligibilityUseCase =>
//       CheckEligibilityUseCase(eligibilityRepository);

//   static GetOffersUseCase get getOffersUseCase =>
//       GetOffersUseCase(offersRepository);

//   // Cubits
//   static EligibilityCubit createEligibilityCubit() {
//     return EligibilityCubit(checkEligibilityUseCase: checkEligibilityUseCase);
//   }

//   static OffersCubit createOffersCubit() {
//     return OffersCubit(getOffersUseCase: getOffersUseCase);
//   }

//   static OrderCubit createOrderCubit() {
//     return OrderCubit(orderRepository: orderRepository);
//   }

//   /// Méthode pour disposer des ressources
//   static void dispose() {
//     _httpClient.close();
//   }
// }
