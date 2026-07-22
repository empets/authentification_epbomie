

import 'package:freezed_annotation/freezed_annotation.dart';
part 'cellule_event.freezed.dart';

@freezed
abstract class CelluleEvent with _$CelluleEvent {
  const factory CelluleEvent.fetch() = FetchCelluleEvent;
  const factory CelluleEvent.fetchByCriteria({String? celluleId,}) = FetchByCriteriaCelluleEvent;
}


