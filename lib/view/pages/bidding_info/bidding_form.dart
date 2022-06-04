import '../../widgets/custom_causal_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:awesome_dialog/awesome_dialog.dart';
import '../../../helper/colors/colors.dart';

class BiddingFormPage extends StatefulWidget {

  final List <Widget>?listImageUrl;
     const BiddingFormPage({ Key? key,this.listImageUrl }) : super(key: key);
 
  @override
  State<BiddingFormPage> createState() => _BiddingFormPageState();
}

class _BiddingFormPageState extends State<BiddingFormPage> {
      bool checkBoxValue=false;
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        
        onPressed: (){
          Navigator.of(context).pop();
        },),
        backgroundColor: Colors.white,
        elevation: .8,
        title: const Text("Bidding Form",style:TextStyle(color: Colors.black),),
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark
        ),
      ),
      body: Column(
        children: [
Container(child: CustomCausal(listCausalImages:[ Image.asset(
        "assets/images/car_photo.jpg",
        fit: BoxFit.cover,
      ),
      Image.asset(
     "assets/images/car_photo.jpg",
        fit: BoxFit.cover,
      ),
      Image.asset(
       "assets/images/car_photo.jpg",
        fit: BoxFit.cover,
      ),])
      ),
      const SizedBox(height: 10,),
      Container(
                        padding: const EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width * .8,
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
                                  fontSize: 18, fontWeight: FontWeight.w700),
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
                      const SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 39),
                        child: Text("The partnership between the Liverpool John Moores University and Unicaf brings together the resources and capabilities "),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 26),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(value: checkBoxValue, 
                            activeColor: ColorsApp.primaryColor,
                            onChanged: (newValue){
                              setState(() {
                                checkBoxValue = newValue!;
                              });

                            }),
                           
                            
                          ],
                        ),
                      ),
                      
         checkBoxValue?Center(
              child: GestureDetector(
              
               
                onTap: (){
                 showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 237, 237, 237),
          title: Center(child: const Text("Mind",style: TextStyle(color: Colors.black,fontSize: 22),)),
          content: const Text("You will lose the money that you select if you win the car ",style: TextStyle(color: Colors.black,fontSize: 18)),
          actions: [TextButton(onPressed: (){}, child:Text("OK")),
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child:Text("Cancel"))
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
         ) );


      });
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
            ) :Container()
       ],
      ),
    );
  }
}