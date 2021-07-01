import 'package:flutter/material.dart';
import 'package:flutter_autosize/flutter_autosize.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BaseOnHeight(),
      //home: BaseOnHeight(),
    );
  }
}

class BaseOnWidth extends StatefulWidget {
  BaseOnWidth({Key key, this.title}) : super(key: key);
  final String title;
  @override
  BaseOnWidthState createState() => BaseOnWidthState();
}

class BaseOnWidthState extends State<BaseOnWidth> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    AutoSize().initSetting(context, 750, 1334);
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello New'),
        ),
        body: Container(
          color: Colors.green,
          width: AutoSize().width(375),
          height: AutoSize().height(200),
        )
    );
  }
}

class BaseOnHeight extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BaseOnHeightState();
  }

}

class BaseOnHeightState extends State<BaseOnHeight>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AutoSize().initSetting(context, MediaQuery.of(context).size.width, (MediaQuery.of(context).size.height));
    AutoSize().setAdapterMode(false);
    return Scaffold(
        appBar: AppBar(
          title: Text('hello Text'),
        ),
        body: Container(
          width: AutoSize().width(MediaQuery.of(context).size.width),
          height: AutoSize().height(MediaQuery.of(context).size.height),
          child: Column(
            children: [
              Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width,
                  height: 100,
              ),
              Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width,
                height: 75,
              ),
              Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: 25,
              ),
            ],
          ),
        ));
  }

}