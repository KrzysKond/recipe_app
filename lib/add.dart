import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:hive/hive.dart';
import 'hiveClass.dart';


final   _formKey = GlobalKey<FormState>();

class Adding extends StatefulWidget {

  @override
  _AddingState createState() => _AddingState( );
}
class _AddingState extends State<Adding> {

  String howTo;
   String name;
  List ingredients=[];
  var ownBox = Hive.box('ownRecipeCounter');
  var assetBox= Hive.box('asset');
  var box = Hive.box('newRecipes');

    int ownRecipesCounter=0;
    int ingredientsIndex=1;

    File _image;
    final _picker = ImagePicker();

var asset;

 Future getImage() async {
   final pickedFile = await _picker.getImage(source: ImageSource.gallery);
   setState(() {
     if (pickedFile != null) {
       asset =pickedFile.path;
       _image = File(pickedFile.path,);
     } else {
       print('No image selected.');
     }
   });
 }
    var newIngredients = hiveClass(ingredients: [],);
  @override
  Widget build(BuildContext context) {

    double widthSize = MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children:<Widget> [
                SizedBox(
                  height : 10,
                ),
                Row(
                  children: <Widget> [
                    FlatButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: Icon(Icons.arrow_back_rounded,size: 30),
                    ),
                    Text(
                      'Add your own ',
                      textAlign: TextAlign.start ,
                      style: TextStyle(
                        fontFamily:'SourceSansPro-Light',
                        fontSize: 50, ),
                    ),
                  ],
                ),
                Text(
                  'Recipe!',
                  textAlign: TextAlign.center ,
                  style: TextStyle(
                    fontFamily:'SourceSansPro-Light',
                    fontSize: 50, ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: widthSize/1.3,
                  child: Text(
                    "Dish's name",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  width: widthSize/1.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type yours dish name',
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onSaved: (value){
                      setState(() {
                        name=value.toString();
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: widthSize/1.3,
                  child: Text(
                    "Add an image",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                LimitedBox(
                  maxHeight: 200,
                  maxWidth:  widthSize/1.3,
                  child: _image == null
                      ? Text('No image selected.')
                      :  Image.file(
                            _image,
                            fit: BoxFit.fill,
                            scale: 0.7,
                          )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    backgroundColor: Colors.grey[800],
                      onPressed: (){
                        getImage();
                      },
                    tooltip: 'Pick Image',
                    child: Icon(Icons.add_a_photo, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: widthSize/1.3,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: ingredientsIndex,
                      itemBuilder: (context,index){
                        return  TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Type an ingredient',
                            ),
                          validator: (value){
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          onSaved: (value){
                            setState(() {
                              ingredients.add(value.toString());
                               // newIngredients.ingredients.add(value.toString()) as hiveClass ;
                            });
                          },
                          );
                      },
                    ),

                ),
                Container(
                  width: widthSize/1.3,
                  child: FlatButton.icon(
                      minWidth: widthSize/1.3,
                      icon: Icon(Icons.add),
                      label: Text('Add an ingredient', style: TextStyle(fontSize: 18, color: Colors.grey[800]),),
                      onPressed: () {
                        setState(() {
                          ingredientsIndex++;
                        });
                      }
                      ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: widthSize/1.3,
                  child: Text(
                    "How to make",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  width: widthSize/1.3 ,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type how to make your meal',
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onSaved: (value){
                      setState(() {
                        howTo=value.toString();
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              RaisedButton(
                shape: RoundedRectangleBorder(),
                child: Text('Save',style:TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[900],
                  fontSize: 22,
                  fontFamily: 'SourceSansPro-Light',
                ),),
                  onPressed: (){
                    _formKey.currentState.save();
                    _formKey.currentState.validate();
                    if(ingredients != null && name != null && howTo !=null && asset != null){
                    setState(() {
                      var addToBox= hiveClass(howToMake: howTo, name: name, ingredients: List.from(ingredients) );
                     box.add(addToBox);
                     assetBox.add(asset);
                        ownRecipesCounter++;
                        ownBox.add(ownRecipesCounter);
                    });
                    Navigator.pushReplacementNamed(context, '/home');
                    }
                  }
              ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
