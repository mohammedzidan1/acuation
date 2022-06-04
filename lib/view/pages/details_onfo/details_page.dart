import '../../../helper/colors/colors.dart';
import '../../../helper/routs/routs_name.dart';
import '../../widgets/custom_causal_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key, this.ListImageUrl}) : super(key: key);
  final List<Widget>? ListImageUrl;

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          automaticallyImplyLeading: false,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            "Product Info",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
         CustomCausal(listCausalImages: ListImageUrl,),   
        
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.all(18),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width * .4,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                        child: Column(
                          children: [
                            const Text(
                              "Current Price",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "999,999,999\$",
                              style: TextStyle(
                                color: ColorsApp.textMoneyColor,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            const Text(
                              "Firist Price",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "999\$",
                              style: TextStyle(
                                fontSize: 17,
                                color: ColorsApp.textMoneyColor,
                              ),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(12),
                        width: MediaQuery.of(context).size.width * .4,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                      )
                    ]),
              ]),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "The partnership between the Liverpool John Moores University and Unicaf brings together the resources and capabilities of both organisations to offer innovative  together the resources and capabilities of both organisations to offer innovative learning soluti.",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "textDetails",
                  height: 2,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: GestureDetector(
                onTap: (){

                  Navigator.pushNamed(context, RoutsNames.biddingFormScreen,arguments:ListImageUrl);
                },
                child: Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorsApp.primaryColor,
                    border: Border.all(color: Colors.grey)),
                  child: Center(child: const Text("Go To Bid",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold))),
              ),
                  ),
            )   
               ]
            ),
        ));
  }
}
