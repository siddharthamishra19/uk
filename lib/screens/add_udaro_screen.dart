import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udaro/constants/color_constants.dart';
import 'package:udaro/constants/common_constants.dart';
import 'package:udaro/models/udaro_data.dart';

class AddUdaroScreen extends StatefulWidget {
  @override
  _AddUdaroScreenState createState() => _AddUdaroScreenState();
}

class _AddUdaroScreenState extends State<AddUdaroScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController myController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController itemsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff392D67),
      child: Container(
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Udaro Khata",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return '*required';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      controller: myController,
                      cursorWidth: 3,
                      cursorColor: kTopBoxColor,
                      textAlign: TextAlign.center,
                      autofocus: true,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kTopBoxColor),
                        ),
                        hintText: "Enter the amount",
                        hintStyle: TextStyle(
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: kDeviceHeight * 0.02,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "*required";
                        }
                        return null;
                      },
                      controller: nameController,
                      cursorWidth: 3,
                      cursorColor: kTopBoxColor,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kTopBoxColor),
                        ),
                        hintText: "Enter the customer's name",
                        hintStyle: TextStyle(
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: kDeviceHeight * 0.02,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "*required";
                        }
                        return null;
                      },
                      controller: itemsController,
                      cursorWidth: 3,
                      cursorColor: kTopBoxColor,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kTopBoxColor),
                        ),
                        hintText: "Enter the items bought",
                        hintStyle: TextStyle(
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: kDeviceHeight * 0.05,
              ),
              FlatButton(
                height: kDeviceHeight * 0.07,
                color: kTopBoxColor,
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Provider.of<UdaroData>(context, listen: false).addUdaro(
                      newUdaroName: nameController.text,
                      newUdaroAmount: myController.text,
                      items: itemsController.text,
                    );
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
