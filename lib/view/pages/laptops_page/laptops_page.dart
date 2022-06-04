import 'package:flutter/material.dart';

import '../../widgets/custom_list_view.dart';

class LaptopsPage extends StatelessWidget {
  const LaptopsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomListView("assets/images/lapto_photo.jpg",context);
  }
}