import 'package:flutter/material.dart';
import 'package:smart_counter_app/styles.dart';

void main() {
  runApp( smartCounter());
}

class smartCounter extends StatefulWidget {
  @override
  State<smartCounter> createState() => _smartCounterState();
}

class _smartCounterState extends State<smartCounter> {
      int count=0;

      void increment(){
        setState(() {
          count +=1;
        });

      }

      void decrement () {
        setState(() {
          count = count>0 ? count -1 : 0;

        });
      }

      void reset () {
        setState(() {
          count =0;
        });
      }

  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("My Smart Counter",

          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Text("$count",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight(400),
              ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: increment, child: Icon(Icons.add),
                    style: buttonStyles.primaryRed,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(onPressed: decrement, child: Icon(Icons.minimize),
                  style: buttonStyles.primaryRed,),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: reset, child: Icon(Icons.lock_reset),style: buttonStyles.primaryRed,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),

    );
  }
}

