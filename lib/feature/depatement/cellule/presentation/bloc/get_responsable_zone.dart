import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:grace_church/core/bloc_state/bloc_state.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/usecase/get_list_zone.dart';
import 'package:grace_church/feature/depatement/cellule/presentation/bloc/event/cellule_event.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetZoneBloc
    extends Bloc<CelluleEvent, ApiState<List<ZoneResponse>>> {
  GetZoneBloc({required this.getListZoneUsercase})
    : super(ApiState<List<ZoneResponse>>.initial()) {
    on<CelluleEvent>(getReponsableSecteur);
  }

  final GetListZoneUsercase getListZoneUsercase;

  Future<void> getReponsableSecteur(
    CelluleEvent event,
    Emitter<ApiState<List<ZoneResponse>>> emit,
  ) async {
    switch (event) {
      case FetchCelluleEvent():
        emit(ApiState<List<ZoneResponse>>.load());
        final result = await getListZoneUsercase.call(
          RequestZone(),
        );
        emit(
          result.fold(
            (failure) => ApiState<List<ZoneResponse>>.failed(
              failure.message,
            ),
            (success) => ApiState<List<ZoneResponse>>.success(
              success,
              status: FormzSubmissionStatus.success,
            ),
          ),
        );
        break;
      default:
    }
  }
}
