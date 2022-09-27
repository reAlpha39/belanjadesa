import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_state.dart';
part 'bottom_navigation_cubit.freezed.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(const BottomNavigationState.initial());

  int selectedIndex = 0;

  void onNavigationTapped(int index) {
    emit(const BottomNavigationState.loading());
    selectedIndex = index;
    emit(const BottomNavigationState.loaded());
  }
}
