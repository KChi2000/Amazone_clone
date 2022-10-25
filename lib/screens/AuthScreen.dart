import 'package:amazone_colone/CONSTANT.dart';
import 'package:amazone_colone/cubit/theme_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController sdtController = TextEditingController();
  TextEditingController mkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: context.read<ThemeCubitCubit>().state.changeThemeToDark
                    ? [
                        const Color(0xFF0D1441),
                        const Color(0xFF283584),
                        const Color(0xFF6384B2),
                        const Color(0xFF6486B7),
                      ]
                    : [
                        Color(0xFF8C2480),
                        Color(0xFFCE587D),
                        Color(0xFFFF9485),
                        Color(0xFFFF9D80),
                      ])),
        child: Stack(
          children: [
            Image.asset(
              context.read<ThemeCubitCubit>().state.changeThemeToDark
                  ? 'assets/night.png'
                  : 'assets/day.png',
              fit: BoxFit.fill,
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: screenHeight * 0.15,
                ),
                SizedBox(
                    width: screenWidth,
                    child: Text(
                      'Welcome to My House',
                      style: TextStyle(color: primaryColor, fontSize: 25),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 50,
                ),
                textfieldCustom('Enter name...', nameController),
                SizedBox(
                  height: 20,
                ),
                textfieldCustom('Enter phone number', sdtController),
                SizedBox(
                  height: 20,
                ),
                textfieldCustom('Enter password', mkController),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: screenWidth * 0.4,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: primaryColor),
                  ),
                ),
                Switch(
                    value:
                        context.read<ThemeCubitCubit>().state.changeThemeToDark,
                    onChanged: (value) {
                      context.read<ThemeCubitCubit>().toggleSwitch(value);
                      print(context
                          .read<ThemeCubitCubit>()
                          .state
                          .changeThemeToDark);
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox textfieldCustom(String hint, TextEditingController controller) {
    return SizedBox(
        width: screenWidth * 0.8,
        child: TextFormField(
          controller: controller,
          style: TextStyle(color: primaryColor),
          cursorColor: primaryColor,
          decoration: InputDecoration(
              isDense: true,
              hintText: hint,
              hintStyle: TextStyle(color: primaryColor.withOpacity(0.7)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: primaryColor)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: primaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: primaryColor))),
        ));
  }
}
