import 'package:flutter/material.dart';
import 'package:kostekli_saat/yanmen%C3%BC.dart';

void main() => runApp(MaterialApp(
  title: 'My Clock',
  home:MainPage(),
    theme: ThemeData(fontFamily: 'Berlin'),
));

class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return MainPageState();
  }
}

class MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{

  Animation animation;
  AnimationController animationController;

  MainPageState();

  _currentTime(){
    return "${DateTime.now().hour} : ${DateTime.now().minute}";
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController.addListener((){

      if(animationController.isCompleted){
        animationController.reverse();
      } else if(animationController.isDismissed){
        animationController.forward();
      }
      setState(() {

      });
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {

    animation = CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    animation = Tween(begin: -0.8,end: 0.8).animate(animation);
    
    return Scaffold(
      appBar: AppBar(
        title: Text("SAAT"), centerTitle: true, backgroundColor: new Color(0xFF957dad),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 23.0),
        color:  Color(0xFFfec8d8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                elevation: 10.0,
                color: Color(0xFF957dad),
                child: Container(
                  width: 320,
                  height: 320,
                  child: Center(
                    child: Text(_currentTime(),style: TextStyle(
                      fontSize: 60.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
              Transform(
                alignment: FractionalOffset(0.5,0.1),
                transform: Matrix4.rotationZ(animation.value),
                child: Container(
                  child: Image.asset('assets/pandulum.png',width: 100,height: 250,),
                ),
              )
            ],
          ),
        ),
      ),
    drawer:YanMenu(),
    );
  }

}