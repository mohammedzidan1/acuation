import '../../../helper/colors/colors.dart';
import '../../../view_model/laye_out/cubit/laye_out_cubit.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

class LayeOutPage extends StatefulWidget {
  const LayeOutPage({Key? key}) : super(key: key);

  @override
  State<LayeOutPage> createState() => _LayeOutPageState();
}

class _LayeOutPageState extends State<LayeOutPage> {
  bool _isSearching = false;
  List<Widget> _buildAppBarActions() {
    if (_isSearching) {
      return [
        IconButton(
          onPressed: () {
            _clearSearch();
            Navigator.pop(context);
          },
          icon: Icon(Icons.clear, color: Colors.black),
        ),
      ];
    } else {
      return [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: _startSearch,
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ];
    }
  }

  void _startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearching() {
    _clearSearch();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearch() {
    setState(() {
      //  _searchTextController.clear();
    });
  }

  Widget _buildAppBarTitle() {
    return Text(
      "Etqan's Acution",
      style: TextStyle(color: Colors.black),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      //controller: _searchTextController,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: 'Find a Product...',
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.black, fontSize: 18),
      ),
      style: TextStyle(color: Colors.black, fontSize: 18),
      onChanged: (searchedCharacter) {
        //  addSearchedFOrItemsToSearchedList(searchedCharacter);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var cubit = LayeOutCubit.get(context);
    return BlocBuilder<LayeOutCubit, LayeOutState>(
        builder: ((context, state) => Scaffold(
              // drawer: Drawer(
              //  // shape: ShapeBorder.lerp(ShapeBoa, b, t),
              //   backgroundColor: ColorsApp.primaryColor,
              //   child: ListView(
              //     padding: EdgeInsets.zero,
              //     children: [
              //       const DrawerHeader(
              //         decoration: BoxDecoration(
              //           color: Colors.blue,
              //         ),
              //         child: Text('Drawer Header'),
              //       ),
              //       ListTile(
              //         title: const Text('Item 1'),
              //         onTap: () {
              //           // Update the state of the app.
              //           // ...
              //         },
              //       ),
              //       ListTile(
              //         title: const Text('Item 2'),
              //         onTap: () {
              //           // Update the state of the app.
              //           // ...
              //         },
              //       ),
              //     ],
              //   ),
              // ),
              backgroundColor: Colors.white,
              appBar: AppBar(
                systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.white12,
                  statusBarIconBrightness: Brightness.dark,
                ),
                backgroundColor: Colors.white,
                leading: _isSearching
                    ? BackButton(
                        color: Colors.black,
                      ):Container(),
                    
                title: _isSearching ? _buildSearchField() : _buildAppBarTitle(),
                actions: _buildAppBarActions(),
                // leading: IconButton(icon: Icon(Icons.menu),onPressed: (){},),
                // systemOverlayStyle: const SystemUiOverlayStyle(
                //   statusBarColor: Colors.white12,
                //   statusBarIconBrightness: Brightness.dark,
                // ),
                // actions: const [],
                elevation: .4,
                // backgroundColor: Colors.white,
                // title: const Text(
                //   "Etqan's Acution",
                //   style: TextStyle(color: Colors.black),
                // ),
              ),
              body: cubit.screensList[cubit.buttomNavigationBarIndex],
              bottomNavigationBar: BubbleBottomBar(
                opacity: .2,
                currentIndex: cubit.buttomNavigationBarIndex,
                onTap: (index) {
                  cubit.changButtomNavigationBarIndex(index);
                },
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                elevation: 20,

                hasNotch: true, //new
                hasInk: true, //new, gives a cute ink effect
                inkColor: Colors
                    .black12, //optional, uses theme color if not specified
                items: cubit.bottumNavigatioBarItems,
              ),
            )));
  }
}
