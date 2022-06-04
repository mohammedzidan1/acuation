import 'helper/routs/app_routs.dart';
import 'view/pages/laye_out/laye_out_page.dart';
import 'view_model/laye_out/cubit/laye_out_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp(
      appRouts: AppRouts(),
    ));

class MyApp extends StatelessWidget {
  final AppRouts? appRouts;
  const MyApp({Key? key, this.appRouts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouts!.genirateRoute,
    );
  }
}
