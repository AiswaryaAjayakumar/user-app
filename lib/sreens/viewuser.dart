

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_app/main.dart';
import 'package:user_app/sreens/register.dart';

class ViewUser extends StatefulWidget {
  const ViewUser({Key? key}) : super(key: key);

  @override
  State<ViewUser> createState() => _ViewUserState();
}

class _ViewUserState extends State<ViewUser> {
  var name=[];
  var address=[];
  var place=[];
  var pincode=[];
  var email=[];
  var phone=[];
  var secondphone=[];
  var username=[];
  var password=[];
  var confirmpassword=[];
  TextEditingController uname=TextEditingController();
  TextEditingController uaddr=TextEditingController();
  TextEditingController uplc=TextEditingController();
  TextEditingController upin=TextEditingController();
  TextEditingController uid=TextEditingController();
  TextEditingController uph=TextEditingController();
  TextEditingController usecph=TextEditingController();
  TextEditingController uuser=TextEditingController();
  TextEditingController upass=TextEditingController();
  TextEditingController uconpass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("VIEW USER",
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 35
          ),
          ),
        ),
        body:SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 15,),
                TextField(
                  controller: uname,
                  decoration: InputDecoration(
                      labelText: "Enter you name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),

                TextField(
                  controller: uaddr,
                  decoration: InputDecoration(
                      labelText: "Enter you address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),

                TextField(
                  controller: uplc,
                  decoration: InputDecoration(
                      labelText: "Enter you place",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),

                TextField(
                  controller: upin,
                  decoration: InputDecoration(
                      labelText: "Enter you pincode",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),

                TextField(
                  controller: uid,
                  decoration: InputDecoration(
                      labelText: "Enter you mail id",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),

                TextField(
                  controller: uph,
                  decoration: InputDecoration(
                      labelText: "Enter you phone number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),

                TextField(
                  controller: usecph,
                  decoration: InputDecoration(
                      labelText: "Enter you secondary phone no:",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),

                TextField(
                  controller: uuser,
                  decoration: InputDecoration(
                      labelText: "Enter you username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),

                TextField(
                  obscureText: true,
                  controller: upass,
                  decoration: InputDecoration(

                      labelText: "Enter you password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),

                ),
                SizedBox(height: 15,),

                TextField(
                  obscureText: true,
                  controller: uconpass,
                  decoration: InputDecoration(
                      labelText: "Re-enter your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),

                ),
                SizedBox(height: 15,),

                SizedBox(height: 55,
                  width: double.infinity,
                  child:RaisedButton(
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    onPressed: (){
                      var getname=uname.text;
                      var getaddress=uaddr.text;
                      var getplace=uplc.text;
                      var getpincode=upin.text;
                      var getmail=uid.text;
                      var getphone=uph.text;
                      var getsecph=usecph.text;
                      var getuser=uuser.text;
                      var getpass=upass.text;
                      var getconpass=uconpass.text;

                      setState(() {
                        name.add(getname);
                        address.add(getaddress);
                        place.add(getplace);
                        pincode.add(getpincode);
                        email.add(getmail);
                        phone.add(getphone);
                        secondphone.add(getsecph);
                        username.add(getuser);
                        password.add(getpass);
                        confirmpassword.add(getconpass);
                        uname.text="";
                        uaddr.text="";
                        uplc.text="";
                        upin.text="";
                        uid.text="";
                        uph.text="";
                        usecph.text="";
                        uuser.text="";
                       upass.text="";
                       uconpass.text="";
                      });
                    },
                    child: Text("ADD",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35
                      ),
                    ),
                  ) ,
                ),
                SizedBox(height: 15,),

                SizedBox(height: 55,
                  width: double.infinity,
                  child:RaisedButton(
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>UserApp()));

                    },
                    child: Text("BACK TO MENU",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35
                      ),
                    ),
                  ) ,
                ),


                ListView.builder(
                    shrinkWrap: true,
                    itemCount: address.length,

                    itemBuilder: (context,index){
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.account_circle,
                            color: Colors.grey,
                            size: 40,
                          ),
                          trailing: GestureDetector(
                              onTap: (){
                                setState(() {
                                  name.removeAt(index);
                                  address.removeAt(index);
                                  place.removeAt(index);
                                  pincode.removeAt(index);
                                  email.removeAt(index);
                                  phone.removeAt(index);
                                  secondphone.removeAt(index);
                                  username.removeAt(index);
                                  password.removeAt(index);
                                  confirmpassword.removeAt(index);
                                });
                              },

                              child: Icon(Icons.delete_forever,
                                color: Colors.brown,
                                size: 40,
                              )),
                          subtitle: Text( "Name : "+ name[index].toString()+"\n"+ "Address : "+ address[index].toString()+"\n"+ "Place : "+ place[index].toString()+"\n"+ "Pincode : "+ pincode[index].toString()+"\n"+
                              "mail id : "+ email[index].toString()+"\n"+ "phone : "+ phone[index].toString()+"\n"+ "Secondary ph : "+ secondphone[index].toString()+"\n"+ "Username : "+ username[index].toString()+"\n"+
                              "Password : "+ password[index].toString()+"\n"+ "Confirm Password : "+ confirmpassword[index].toString()),
                          title: Text(name[index].toString()),
                        ),
                      );

                    }

                )

              ],
            ),
          ),
        ),

       
      ),

    );

  }
}
