import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textnew/layout/Home.dart';
import 'package:textnew/shared/cubit/bloc_observer.dart';
import 'package:textnew/shared/cubit/cubit.dart';
void main(){
  BlocOverrides.runZoned(
        () {
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(

          create: (BuildContext context) => AppCubit(),
          child: Home()),
    );
  }
}
