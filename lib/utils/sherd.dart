import 'package:shared_preferences/shared_preferences.dart';
class Share {

  void create(String Email,String pw,bool ) async{
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setString("e", Email);
    shr.setString("p", pw);
  }
  Future<Map> read() async{
    SharedPreferences shr =  await SharedPreferences.getInstance();
    String? email = shr.getString("e");
    String? passw = shr.getString("p");
    bool? islogin = shr.getBool("islogin");
    Map m1 = {"e":email ,"p":passw};
    return m1;
  }

  void clear()
  async{
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.clear();
  }

}