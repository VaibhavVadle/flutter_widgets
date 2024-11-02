import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widgets/bloc/obscure_icon_bloc/obscure_icon_bloc.dart';
import 'package:flutter_widgets/common_text_field/text_field_1.dart';
import 'package:flutter_widgets/common_text_field/text_field_2.dart';

void main() {
  runApp(const MyApp());

  ErrorWidget.builder = (details) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.h),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            details.exception.toString(),
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, _) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => ObscureIconBloc()),
          ],
          child: MaterialApp(
            title: 'Flutter Widget\'s',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const MainScreen(),
          ),
        );
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widgets"),
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TextField1(controller: TextEditingController()),
            // TextField2(controller: TextEditingController()),
          ],
        ),
      ),
    );
  }
}
