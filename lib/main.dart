import 'package:amazone_colone/cubit/theme_cubit_cubit.dart';
import 'package:amazone_colone/screens/AuthScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubitCubit>(
      create: (context) => ThemeCubitCubit(),
      child: BlocBuilder<ThemeCubitCubit, ThemeCubitState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: state.themeData,
            home: AuthScreen(),
          );
        },
      ),
    );
  }
}
