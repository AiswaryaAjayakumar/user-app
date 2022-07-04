
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_app/sreens/viewuser.dart';
class Register extends StatelessWidget {
 // const ({Key? key}) : super(key: key);
TextEditingController uname = TextEditingController();
TextEditingController uaddr = TextEditingController();
TextEditingController upl = TextEditingController();
TextEditingController upin = TextEditingController();
TextEditingController uid = TextEditingController();
TextEditingController uph1 = TextEditingController();
TextEditingController uph2 = TextEditingController();
TextEditingController uusr = TextEditingController();
TextEditingController upass1 = TextEditingController();
TextEditingController upass2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 10,),
              TextField(
                controller: uname,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.people_alt_outlined,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
                    labelText: " Name",
                    hintText: "Enter your name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: uaddr,
                maxLines: 2,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.home_filled,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
                    labelText: " Address",
                    hintText: "Enter your address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: upl,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.home_outlined,
                      color: Colors.blueGrey,
                      size: 30,
                    ),
                    labelText: "Place",
                    hintText: "Enter your place",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: upin,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.local_post_office_outlined,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
                    labelText: "Pincode",
                    hintText: "Enter your pincode",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: uid,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
                    labelText: "email id",
                    hintText: "Enter your email id",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: uph1,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
                    labelText: "Phone number",
                    hintText: "Enter your phone number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: uph2,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
                    labelText: "Secondary phone number",
                    hintText: "Enter your secondary phone number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: uusr,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
//  helperText: "Your Username should be simple enough to remember but hard to guess.Never use easy to guess numbers with your usernames(for eg: address or date of birth).",
                    labelText: "Username",
                    hintText: "Enter your username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: upass1,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_outlined,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
//   helperText: "At least 12 characters.. A mixture of both uppercase and lowercase letters.. A mixture of letters and numbers.. Inclusion of at least one special character,e.g..,!@#?]....",
                    labelText: "Password",
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: upass2,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_sharp,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
// helperText: "The re-typed password, to ensure that it has been entered correctly..",
                    labelText: "Confirm password",
                    hintText: "Enter your confirm password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(height: 60,
                width: double.infinity,

                child:

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)
                  ),
                  color: Colors.cyanAccent,
                  onPressed: (){
                    var getUname = uname.text;
                    var getUadd = uaddr.text;
                    var getUpl = upl.text;
                    var getUpin = upin.text;
                    var getUid = uid.text;
                    var getUph1 = uph1.text;
                    var getUph2 = uph2.text;
                    var getUsr = uusr.text;
                    var getUpass1 = upass1.text;
                    var getUpass2 = upass2.text;
                    print(getUname);
                    print(getUadd);
                    print(getUpl);
                    print(getUpin);
                    print(getUid);
                    print(getUph1);
                    print(getUph2);
                    print(getUsr);
                    print(getUpass1);
                    print(getUpass2);


//print("Successfully registered",);
                  },
                  child: Text("REGISTER",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                    ),
                  ),
                ),
              ),


              SizedBox(height: 15,),
              SizedBox(height: 60,
                width: double.infinity,

                child:

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)
                  ),
                  color: Colors.cyanAccent,
                  onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewUser()));

//print("Successfully registered",);
                  },
                  child: Text("VIEW USER",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                    ),
                  ),
                ),
              )



            ],
          ),
        ),
      );
  }
}



