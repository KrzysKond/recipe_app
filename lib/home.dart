import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:recipee_app/hiveClass.dart';
import 'recipes.dart';
import 'package:hive/hive.dart';
import 'dart:io';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


int toRemOwn;
int toAdd=0;
int toRem;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var box= Hive.box('newRecipes') ;
    var ownBox = Hive.box('ownRecipeCounter');
    var assetBox= Hive.box('asset');

    int ownRecipeSize(){
      if(ownBox.length!=null){
       return ownBox.length;
      }
      else{
        return 0;
      }
    }



     return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
            children:<Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[

                  FlatButton.icon(
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: Colors.black,
                      size: 60,
                    ),
                    label:  Text('Add your own recipe',
                    style: TextStyle(
                      fontSize: 13
                    ),
                    ),
                    onPressed: () {
                  Navigator.pushReplacementNamed(context, '/add');

                    },
                  ),
               ],
                ),
              SizedBox(height: 20,),
              Text(
                  'Check out',
                style: TextStyle(
                     fontFamily: 'SourceSansPro-Light',
                    fontSize: 50,
                ),
              ),
              Text('the recipes',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro-Light',
                      fontSize: 50
                  ),
              ),

              SizedBox(height: 20),

              SingleChildScrollView(
                child: Container(
                  height: 219.2,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount:  recipes.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                            decoration: BoxDecoration(
                          ),
                              child: InkWell(
                                       child:  Column(
                                         children:<Widget> [
                                           Image.asset(form[index].image, height: 168, width: 160,
                                           fit: BoxFit.cover,

                                           ),
                                           SizedBox( height: 10,),

                                           Text(
                                             recipes[index].name,
                                             style: TextStyle(color: recipes[index].fontColour, fontSize: 20),

                                           ),
                                         ],
                                       ),
                                    onTap: (){
                                      setState(() {
                                        toRem=index;
                                        Navigator.pushNamed(context, '/formula',arguments: toRem );
                                      });
                                    },
                                      ),
                          ),
                          );
                        },
                      ),
                  ),
              ),

                 SizedBox(
                  height: 30,
                ),
                Text(
                  'Drinks',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro-Light',
                    fontSize: 50,
                  ),
                ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 219.2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: drinks.length,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: InkWell(

                               child:  Column(
                                 children:<Widget> [
                                   Image.asset(
                                     form[index+recipes.length].image, height: 168, width: 160,
                                      fit: BoxFit.cover,

                                   ),
                                     SizedBox(
                                       height: 10,
                                     ),
                                     Text(
                                       drinks[index].name,
                                         style: TextStyle(color: drinks[index].fontColour, fontSize: 20),
                        ),
                        ],
                      ),
                      onTap:  (){
                        setState(() {
                          toRem=index+recipes.length;
                          Navigator.pushNamed(context, '/formula',arguments: toRem );
                        });
                      },),
                        ),
                      );
                    },
                  ),
                  ),
                ),
              Container(
                child: Text(
                    'Your recipes',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro-Light',
                    fontSize: 50,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ownRecipeSize() !=0 ?
               Container(
                height: 219.2,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: ownRecipeSize(),
                  itemBuilder: (context,index) {
                  var boxName = box.getAt(index) as hiveClass;
                  var imageAsset= assetBox.getAt(index);
                  File _image= File(imageAsset);
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      child: InkWell(
                        child:  Column(
                          children:<Widget> [

                            Image.file (
                              _image,
                              height: 168, width: 160,
                              fit: BoxFit.cover,

                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              boxName.name,
                              style: TextStyle(color: drinks[index].fontColour, fontSize: 20),
                            ),
                          ],
                        ),
                        onTap:  (){
                          setState(() {
                            toRemOwn=index;
                          });
                          Navigator.pushNamed(context, '/ownRecipe', arguments: toRemOwn);


                        },),
                    ),
                  );
                  },
                ),
              )
              :  Container(

                height: 40,
                  child: Text(
                      "You didn't add any recipe",
                    style: TextStyle(fontSize: 15),
                  ),
              ),


              ],
            ),
          ),
        ),
      );

  }
}



