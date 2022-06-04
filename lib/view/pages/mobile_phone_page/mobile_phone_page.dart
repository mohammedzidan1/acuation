import 'package:flutter/material.dart';

import '../../widgets/custom_list_view.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   CustomListView("assets/images/phone_photo.jpg",context);
  }
}