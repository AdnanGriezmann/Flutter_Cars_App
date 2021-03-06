import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState.validate()) {
      Navigator.of(context).pushNamed('/Homepage');
    }
  }

  


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    
    return Scaffold(
        resizeToAvoidBottomInset: false,
    
      body: SingleChildScrollView(
        reverse: true,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 22.0),
                child: RichText(
                  text: TextSpan(
                      text: "SignIn",
                      style: TextStyle(
                        fontSize: text *30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Holtwood One SC',
                        color: Colors.black87,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '...',
                          style: TextStyle(
                            fontSize: text * 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Holtwood One SC',
                            color: Colors.red,
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                height: height * 0.8,
                width: width * 1.2,
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.1, vertical: height * 0.1),
                child: Form(
                   autovalidateMode: AutovalidateMode.always,
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        cursorColor: Colors.black87,
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                       // cursorHeight: 1.0,

                        decoration: InputDecoration(
                          hintText: 'Email',
                           labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: (BorderRadius.circular(25.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          filled: true,
                          
                          prefixIcon: Icon(Icons.email),
                        ),
                        validator: MultiValidator([
                          EmailValidator(errorText: "not valid"),
                          RequiredValidator(errorText: "This field is Required"),
                        ]),
                      ),
                      SizedBox(height: height * 0.03),
                      TextFormField(
                        obscureText: true,
                        cursorColor: Colors.black87,
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                        //cursorHeight: 3.0,
                        decoration: InputDecoration(
                          hintText: 'Password',
                           labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: (BorderRadius.circular(25.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          filled: true,                       
                          prefixIcon: Icon(Icons.security_outlined),
                        ),
                         validator: MultiValidator([
                           RequiredValidator(errorText: "This field is Required"),
                           MinLengthValidator(6, errorText: "At least 6 characters Required"),
                         ]),
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: text * 16.2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.04),
                      Container(
                        height: height * 0.08,
                        width: width * 1.2,
                        child: RaisedButton(
                          onPressed: validate,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.0),
                          ),
                          child: Text(
                            'SignIn',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: text * 23.0,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.red[700],
                        ),
                      ),
                      SizedBox(height: height * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don,t have account?',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(width: width * 0.02),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed('/Signup');
                            },
                            child: Text(
                              'SignUp',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: text * 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
