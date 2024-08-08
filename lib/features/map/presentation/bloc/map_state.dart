part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.initial() = _Initial;
  const factory MapState.loadInProgress() = _LoadInProgress;
  const factory MapState.getCurrenLocationSuccess() = GetCurrentLocationSuccess;
  const factory MapState.fetchPredictionSuccess() = FetchPredictionSuccess;
  const factory MapState.fetchPredictionFailed() = FetchPredictionFailed;
  const factory MapState.getClusterSuccess() = GetClusterSuccess;
  const factory MapState.getClusterFail() = GetClusterFail;
}
