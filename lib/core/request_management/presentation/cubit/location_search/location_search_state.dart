import 'package:equatable/equatable.dart';
import 'package:grace_church/core/geocoding/domain/entities/geocoding_result.dart';

abstract class LocationSearchState extends Equatable {
  const LocationSearchState();

  @override
  List<Object?> get props => [];
}

class LocationSearchInitial extends LocationSearchState {
  const LocationSearchInitial();
}

class LocationSearchLoading extends LocationSearchState {
  const LocationSearchLoading();
}

class LocationSearchSuccess extends LocationSearchState {
  final List<GeocodingResult> results;

  const LocationSearchSuccess(this.results);

  @override
  List<Object?> get props => [results];
}

class LocationSearchEmpty extends LocationSearchState {
  const LocationSearchEmpty();
}

class LocationSearchError extends LocationSearchState {
  final String message;

  const LocationSearchError(this.message);

  @override
  List<Object?> get props => [message];
}
