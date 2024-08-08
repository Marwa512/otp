part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.getCurrentLocationEvent() = _GetCurrentLocationEvent;
  const factory MapEvent.fetchPredictionEvent() = _FetchPredictionEvent;
  const factory MapEvent.clusterEvent() = _ClusterEvent;
}
