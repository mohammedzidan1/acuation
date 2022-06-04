// import 'package:flutter/material.dart';
// import 'package:flutter_zoom_drawer/config.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

// class MainScreen extends StatelessWidget {
//   const MainScreen ({ Key? key ,this.zoomDrawerController}) : super(key: key);
//  final  ZoomDrawerController? zoomDrawerController;
//   @override
//   Widget build(BuildContext context) {
//     return 
//     Scaffold(
//       backgroundColor: Colors.amber,
// appBar: AppBar(
//   title: Text('data'),
//   leading: IconButton(onPressed: (){
  
//   ZoomDrawer.of(context)!.toggle();
// },icon: Icon(Icons.abc_outlined,color: Colors.amber,),),),
//     );
//   }
// }
// // class MainScreen extends StatefulWidget {
// //   final  ZoomDrawerController? zoomDrawerController;
// //    MainScreen({ Key? key,this.zoomDrawerController }) : super(key: key);

// //   @override
// //   State<MainScreen> createState() => _MainScreenState();
// // }

// // class _MainScreenState extends State<MainScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// // appBar: AppBar(leading: IconButton(onPressed: (){
// //   zoomDrawerController!.toggle();
// // },icon: Icon(Icons.abc_outlined,color: Colors.amber,),),),
// //     );
// //   }
// // }