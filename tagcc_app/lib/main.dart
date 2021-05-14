import 'package:flutter/material.dart';
import 'routes/login.dart';

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
//        splashColor: Colors.transparent, // 点击时的高亮效果设置为透明
//        highlightColor: Colors.transparent, // 长按时的扩散效果设置为透明
//        brightness: Brightness.light,
//        primaryColor: Colors.lightGreen[200],
      ),
      home: MyHomePage(title: '书签'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // 布局子组件是Column，主轴为上下，默认尽量延展，纵轴为左右，默认子组件最大宽度。以下设置宽度为全屏
        constraints: BoxConstraints(minWidth: double.infinity),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login-background3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 40,right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 80,),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '您好，',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '欢迎使用',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 9,
                child: SizedBox(),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(3)
                        ),
                      ),
                      width: 800,
                      height: 50,
                      child: TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Colors.white)
                          ),
                          onPressed: () {
                            _login(context);
                          },
                          child: Text(
                              '登 录',
                          )
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                            Radius.circular(3)
                        ),
                      ),
                      width: 800,
                      height: 50,
                      child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(Colors.black54)
                          ),
                          onPressed: () {

                          },
                          child: Text(
                            '注 册',
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _login(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) {
              return UsernameRouter();
            }
        )
    );
  }
}

