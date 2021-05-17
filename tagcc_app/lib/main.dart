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
      title: 'Flutter tagcc',
      theme: ThemeData(
          buttonTheme: ButtonThemeData(
            // 统一设置按钮样式
          ),
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
        width: double.infinity,
        padding: EdgeInsets.only(left: 30,right: 30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login-background2.jpg'),
            // 背景图铺平
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
        // 居左居上
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '您好,',
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  '欢迎使用',
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          //  不可滚动的界面，Spacer弹簧效果会把内容撑满，下面的Container就会在底部
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff4593ec),
                    borderRadius: BorderRadius.all(
                        Radius.circular(3)
                    ),
                  ),
                  width: double.infinity,
                  height: 40,
                  child: TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.white)
                      ),
                      onPressed: () {
                        _login(context);
                      },
                      child: Text(
                        '登录',
                        style: TextStyle(letterSpacing: 1),
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
                  height: 40,
                  width: double.infinity,
                  child: TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Color(0xff434a65))
                      ),
                      onPressed: () {
                      },
                      child: Text(
                        '注册',
                        style: TextStyle(letterSpacing: 1),
                      )
                  ),
                ),
              ],
            ),
          ),
        ],
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

