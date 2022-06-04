import 'package:auction/helper/colors/colors.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view/pages/cars_page/cars_page.dart';
import '../../../view/pages/home/home_page.dart';
import '../../../view/pages/laptops_page/laptops_page.dart';
import '../../../view/pages/mobile_phone_page/mobile_phone_page.dart';

part 'laye_out_state.dart';

class LayeOutCubit extends Cubit<LayeOutState> {
  LayeOutCubit() : super(LayeOutInitial());
  static LayeOutCubit get(context) => BlocProvider.of(context);

  int buttomNavigationBarIndex = 0;
  List<Widget> screensList = [
    const HomePage(),
    const CarsPage(),
    const MobilePage(),
    const LaptopsPage(),
  ];
  List<BubbleBottomBarItem> bottumNavigatioBarItems =[
                  BubbleBottomBarItem(
                      backgroundColor: Colors.indigo,
                      icon: Icon(
                        Icons.dashboard,
                        color: Colors.black,
                      ),
                      activeIcon: Icon(
                        Icons.dashboard,
                        color:ColorsApp.primaryColor,
                      ),
                      title: Text("Home")),
                  BubbleBottomBarItem(
                      backgroundColor: Colors.indigo,
                      icon: Icon(
                        Icons.car_repair,
                        color: Colors.black,
                      ),
                      activeIcon: Icon(
                        Icons.car_repair,
                        color: ColorsApp.primaryColor,
                      ),
                      title: Text("Car")),
                  BubbleBottomBarItem(
                      backgroundColor: Colors.indigo,
                      icon: Icon(
                        Icons.mobile_screen_share,
                        color: Colors.black,
                      ),
                      activeIcon: Icon(
                        Icons.mobile_screen_share,
                        color: ColorsApp.primaryColor,
                      ),
                      title: Text("Mobile")),
                  BubbleBottomBarItem(
                      backgroundColor: Colors.indigo,
                      icon: Icon(
                        Icons.computer_outlined,
                        color: Colors.black,
                      ),
                      activeIcon: Icon(
                        Icons.computer_outlined,
                        color:ColorsApp.primaryColor,
                      ),
                      title: Text("Laptop"))
                ];
  // List<Widget> bottumNavigatioBarItems = [
  //   Image.asset(
  //     'assets/images/icons8-home-50.png',
  //     fit: BoxFit.contain,
  //     width: 20,
  //   ),
  //   Image.asset(
  //     'assets/images/icons8-car-50.png',
  //     fit: BoxFit.contain,
  //     width: 20,
  //   ),
  //   Image.asset(
  //     'assets/images/icons8-iphone-80.png',
  //     fit: BoxFit.contain,
  //     width: 20,
  //   ),
  //   Image.asset(
  //     'assets/images/icons8-laptop-50.png',
  //     fit: BoxFit.contain,
  //     width: 20,
  //   ),
  // ];
  
  void changButtomNavigationBarIndex(index) {
    buttomNavigationBarIndex = index;
    emit(ChangButtomNavigationBarIndexState());
  }
}
