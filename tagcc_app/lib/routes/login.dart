import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class UsernameRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/appbar-background.jpg'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft
          )),
      child: Scaffold(
        // 背景透明色
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Colors.transparent,
          // 去掉下划线阴影
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.only(top: 200),
          constraints: BoxConstraints(minWidth: double.infinity),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              ),
              boxShadow: [
                BoxShadow(color: Color(0xfff0f6f7), blurRadius: 40)
              ],
          ),
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xfff0f6f7),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      // 文本框提示文字
                        hintText: '请输入手机号码',
                        hintStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Color(0xffcacbcc)),
                        prefixText: '+86 | ',
                        prefixStyle: TextStyle(fontSize: 22, color: Color(0xff767778)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Color(0xffeeeff0),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Color(0xffeeeff0),
                            width: 1,
                          ),
                        )
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  width: double.infinity,
                  height: 60,
                  child: TextButton(
                    onPressed: _next,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      // 水波纹颜色
                      overlayColor: MaterialStateProperty.all(Color(0xFF081726)),
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        // 按下时颜色
                        if(states.contains(MaterialState.pressed)) {
                          return Color(0xFF081726);
                        }
                        return Color(0xFF152947);
                      })
                    ),
                    child: Text(
                      '下一步',
                      style: TextStyle(
                        color: Color(0xFFf7f7f7),
                        fontSize: 16,
                      )
                    )
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
void _next() async{
  try {
    print('xxxgcc');
    var response = await Dio().get('http://www.baidu.com');
    print(response);
  } catch (e) {
    print(e);
  }
}