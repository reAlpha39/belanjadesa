import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  int selectedIndex = 0;

  void setIndex(int index) {
    emit(const HomeState.loading());
    selectedIndex = index;
    emit(const HomeState.loaded());
  }
}
