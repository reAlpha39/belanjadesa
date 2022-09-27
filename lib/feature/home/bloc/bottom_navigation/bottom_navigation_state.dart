part of 'bottom_navigation_cubit.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState.initial() = _Initial;
  const factory BottomNavigationState.loading() = _Loading;
  const factory BottomNavigationState.loaded() = _Loaded;
}
