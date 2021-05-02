import 'package:flutter/material.dart';
import 'hiveClass.dart';
import 'package:hive/hive.dart';
import 'dart:io';

class OwnRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int value= ModalRoute.of(context).settings.arguments;
    double widthSize = MediaQuery.of(context).size.width;
    var box= Hive.box('newRecipes') ;
    var boxUse = box.getAt(value) as hiveClass;

    var assetBox= Hive.box('asset');
    var imageAsset= assetBox.getAt(value);
    File _image= File(imageAsset);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children:<Widget> [
              Stack(
                alignment: Alignment.topLeft,
                children:<Widget>[
                   LimitedBox(
                     maxHeight:400,
                        maxWidth: widthSize,
                           child: Image.file( _image, width: widthSize,fit: BoxFit.fitWidth, )

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

              SizedBox(height: 20,),
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
                itemCount: boxUse.ingredients.length,
                itemBuilder:(context,index) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(8, 0, 8,0),
                    child: Text(
                        ' - ' +  boxUse.ingredients[index] ,
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
                margin: EdgeInsets.fromLTRB(10, 0, 10,0),
                child: Text(
                  boxUse.howToMake,
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
