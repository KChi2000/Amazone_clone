part of 'theme_cubit_cubit.dart';

@immutable
 class ThemeCubitState {
  late final bool changeThemeToDark;
  late ThemeData themeData;
  ThemeCubitState({required this.changeThemeToDark}){
      if(changeThemeToDark){
        themeData = appThemeData[AppTheme.Dark]!;
      }else{
        themeData = appThemeData[AppTheme.Light]!;
      }

  }
  ThemeCubitState copyWith(bool changestate){
    return ThemeCubitState(changeThemeToDark: changestate?? this.changeThemeToDark);
  }
 }


