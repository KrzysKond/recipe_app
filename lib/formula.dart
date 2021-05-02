import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'recipes.dart';



class Formula extends StatefulWidget {
  @override
  _FormulaState createState() => _FormulaState();
}

class _FormulaState extends State<Formula> {

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    int value= ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.white,
      body:   SafeArea(
          child: ListView(
            shrinkWrap: true,
                 children:<Widget>[

                        Stack(
                          alignment: Alignment.topLeft,
                          children:<Widget>[
                            LimitedBox(
                                child: Image.asset(form[value].image, width: widthSize, fit: BoxFit.fitWidth, ),
                              maxHeight: 400,
                            ),
                            FlatButton(

                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Stack(
                                children: [

                                  Icon( Icons.arrow_back_rounded, color: Colors.black, size: 52,),
                                  Icon(Icons.arrow_back_rounded, color: Colors.white, size: 50,)
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox( height: 20,),
                        Center(
                          child: Text(' Ingredients',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontFamily: 'SourceSansPro-Light',
                              fontSize: 40,
                            ),
                          ),
                        ),
                        SizedBox( height: 20,),

                               ListView.builder(
                                 physics: NeverScrollableScrollPhysics(),
                                 shrinkWrap: true,
                                 itemCount: form[value].ingredients.length,
                                 itemBuilder:(context,index) {
                                   return Container(
                                     margin: EdgeInsets.fromLTRB(8, 0, 8,0),
                                     child: Text(
                                      ' - ' +  form[value].ingredients[index] ,
                                         style: TextStyle(fontSize:20 )
                                     ),
                                   );
                                 },
                               ),

                               SizedBox( height: 20,),
                               Center(
                                 child: Text('How to make', style: TextStyle(
                                   fontWeight: FontWeight.w900,
                                   fontFamily: 'SourceSansPro-Light',
                                   fontSize: 40,
                                 ),),
                               ),
                                  SizedBox( height: 15,),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(8, 0, 8,0),
                                    child: Text(
                                      form[value].description,
                                      style: TextStyle(fontSize: 19),
                                ),
                                  ),

                  ],
              ),
      ),
    );
  }
}

