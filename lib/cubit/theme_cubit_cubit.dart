import 'package:amazone_colone/cubit/MyTheme.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_cubit_state.dart';

class ThemeCubitCubit extends Cubit<ThemeCubitState> {
  ThemeCubitCubit() : super(ThemeCubitState(changeThemeToDark: false));
  void toggleSwitch(bool value)=> emit(state.copyWith(value));
}
