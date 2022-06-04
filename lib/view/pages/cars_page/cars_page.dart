import 'package:flutter/material.dart';

import '../../widgets/custom_list_view.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   CustomListView("assets/images/car_photo.jpg",context);
  }
}