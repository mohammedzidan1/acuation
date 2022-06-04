import 'routs_name.dart';
import '../../view/pages/bidding_info/bidding_form.dart';
import '../../view/pages/details_onfo/details_page.dart';
import '../../view/pages/regeistration/login.dart';
import '../../view/pages/regeistration/sign_up.dart';
import '../../view_model/laye_out/cubit/laye_out_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view/pages/laye_out/laye_out_page.dart';
import '../../view_model/registration/cubit/registration_cubit.dart';

class AppRouts {
  Route? genirateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutsNames.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext contxt) => RegistrationCubit(),
                  child: const LoginPage(),
                ));
      case RoutsNames.sinUpScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext contxt) => RegistrationCubit(),
                  child: const SignUpPage(),
                ));
                case RoutsNames.drawerScreen:
       
        return MaterialPageRoute(builder: (_) => const Drawer());
      case RoutsNames.layeOutScreen:
        return MaterialPageRoute(
            builder: (_) => 
            BlocProvider(
                  create: (BuildContext contxt) => LayeOutCubit(),
                  child: const LayeOutPage(),
                ));
      case RoutsNames.detailsScreen:
      List<Widget> listImageUrl=settings.arguments as  List<Widget>;
     //  String imageUrl=settings.arguments as  String;
        return MaterialPageRoute(builder: (_) => DetailsPage(ListImageUrl:listImageUrl,));
         case RoutsNames.biddingFormScreen:
       List<Widget> listImageUrl=settings.arguments as  List<Widget>;
        return MaterialPageRoute(builder: (_) =>BiddingFormPage(listImageUrl: listImageUrl,));
        
    }
 //
}
}