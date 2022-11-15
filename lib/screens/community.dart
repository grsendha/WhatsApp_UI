import 'package:flutter/material.dart';

class Community extends StatelessWidget {

  button(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.baseline,

            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage('images/was.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Introducing Communities',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Easily organise your related groups and send announcements. Now, your communities, like neighbourhoods or schools, can have their own space.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: button,
                color: const Color(0xff128C7E),
                minWidth: 300,
                height: 45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Text(
                  'START YOUR COMMUNITY',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
