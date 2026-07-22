import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:grace_church/core/bloc_state/bloc_state.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/usecase/get_list_responsable_cellule_usercase.dart' show GetListResponsableCelluleUsercase;
import 'package:grace_church/feature/depatement/cellule/presentation/bloc/event/cellule_event.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetResponsableCelluleBloc
    extends Bloc<CelluleEvent, ApiState<List<ReponsableCelluleResponse>>> {
  GetResponsableCelluleBloc({required this.getListResponsableCelluleUsercase})
    : super(ApiState<List<ReponsableCelluleResponse>>.initial()) {
    on<CelluleEvent>(getCellule);
  }

  final GetListResponsableCelluleUsercase getListResponsableCelluleUsercase;

  Future<void> getCellule(
    CelluleEvent event,
    Emitter<ApiState<List<ReponsableCelluleResponse>>> emit,
  ) async {
    switch (event) {
      case FetchCelluleEvent():
        emit(ApiState<List<ReponsableCelluleResponse>>.load());
        final result = await getListResponsableCelluleUsercase.call(
          RequestReponsableCellule(),
        );
        emit(
          result.fold(
            (failure) => ApiState<List<ReponsableCelluleResponse>>.failed(
              failure.message,
            ),
            (success) => ApiState<List<ReponsableCelluleResponse>>.success(
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
