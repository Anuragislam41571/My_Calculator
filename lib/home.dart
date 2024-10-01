import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  TextEditingController num1Econtroll= TextEditingController();
  TextEditingController num2Econtroll= TextEditingController();
  double result=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,


      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Calculator'),
      ),


      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(

          children: [
            Center(
              child: SizedBox(
                width: 150,
                child: TextField(
                  controller: num1Econtroll,
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(

                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,color: Colors.blue)
                      ),

                      labelText: 'First_Number',
                    labelStyle: TextStyle(

                      fontWeight: FontWeight.w700
                    ),

                    hintText: 'enter 1st number'
                  ),


                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 150,
              child: TextField(
                controller: num2Econtroll,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                    hintText: 'enter 1st number',


                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color: Colors.blue)
                    ),

                    labelText: 'Second_Number',
                  labelStyle: TextStyle(

                      fontWeight: FontWeight.w700
                  ),
                ),



              ),
            ),
            SizedBox(
              height: 25,
            ),

            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(onPressed: (){
                  add();
                },icon: Icon(Icons.add),label: Text('Add'),),
                SizedBox(
                  width: 100,
                ),
                ElevatedButton.icon(onPressed: (){
                  sub();
                },icon: Icon(Icons.remove),label: Text('Sub'),),


              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Wrap(
              children: [
                ElevatedButton.icon(onPressed: (){
                  multi();
                },icon: Icon(Icons.flare_rounded),label: Text('Multiply'),),
                SizedBox(
                  width: 100,
                ),
                ElevatedButton.icon(onPressed: (){
                  divi();
                },icon: Icon(Icons.linear_scale_sharp),label: Text('Division'),)
              ],
            ),

            SizedBox(
              height: 40,
            ),



Text('Result : $result',style: TextStyle(fontWeight: FontWeight.w900,
fontSize: 40
),)
          ],

        ),
      ),



    );
  }



  void add(){


    double num1=double.tryParse(num1Econtroll.text)??0;
    double num2=double.tryParse(num2Econtroll.text)??0;
 result=num1+num2;

setState(() {

});
  }

  void sub(){


    double num1=double.tryParse(num1Econtroll.text)??0;
    double num2=double.tryParse(num2Econtroll.text)??0;
    result=num1-num2;

    setState(() {

    });
  }
  void multi(){


    double num1=double.tryParse(num1Econtroll.text)??0;
    double num2=double.tryParse(num2Econtroll.text)??0;
    result=num1*num2;

    setState(() {

    });
  }
  void divi(){


    double num1=double.tryParse(num1Econtroll.text)??0;
    double num2=double.tryParse(num2Econtroll.text)??0;
    result=num1/num2;

    setState(() {

    });
  }









  @override
  void dispose() {
    // TODO: implement dispose
    num2Econtroll.dispose();
    num1Econtroll.dispose();
    super.dispose();
  }
}
