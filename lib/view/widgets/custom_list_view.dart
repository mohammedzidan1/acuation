import '../../helper/colors/colors.dart';
import '../../helper/routs/routs_name.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final String? imageUrl;
// final List<Widget>? listImadeUrl;
  final BuildContext? context;
  CustomListView(this.imageUrl, this.context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> causalImages = [
      Image.asset(
        imageUrl!,
        fit: BoxFit.cover,
      ),
      Image.asset(
        imageUrl!,
        fit: BoxFit.cover,
      ),
      Image.asset(
        imageUrl!,
        fit: BoxFit.cover,
      ),
    ];
    Widget buildCategoryItem() => GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RoutsNames.detailsScreen,
                arguments: causalImages);
          },
          child: Container(
            margin: EdgeInsets.all(4),
            child: Row(children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey)),
                child: Image(
                  image: AssetImage(imageUrl!),
                  height: 200.0,
                  width: 120.0,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 45,
              ),
              Container(
                child: Column(
                  children: [
                    const Text(
                      "BMW",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "model",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Text(
                          "1Day-3hour-20minats",
                          style: TextStyle(),
                        ),
                        SizedBox(width: 7),
                        Icon(Icons.lock_clock),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "3700\$",
                      style: TextStyle(color: ColorsApp.textMoneyColor
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        );

    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 8,
        itemBuilder: ((context, index) => buildCategoryItem()));
  }
}
