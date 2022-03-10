import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  // SAVE DATA

  static void saveTokens(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('tokensValue', token);
  }

  static void saveUserId(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('idUser', id);
  }

  static void saveName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameUser', name);
  }

  static void saveEmail(String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('emailUser', email);
  }

  static void saveNoHp(String noHp) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('noHpUser', noHp);
  }

  static void saveAddress(String address) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('addressUser', address);
  }

  static void saveStatus(String status) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('statusUser', status);
  }

  // GET DATA

  Future<String?> getTokens() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString('tokensValue');
    return stringValue;
  }

  Future<String?> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString('idUser');
    return stringValue;
  }

  Future<String?> getName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString('nameUser');
    return stringValue;
  }

  Future<String?> getEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString('emailUser');
    return stringValue;
  }

  Future<String?> getNoHp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString('noHpUser');
    return stringValue;
  }

  Future<String?> getAddress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString('addressUser');
    return stringValue;
  }

  Future<String?> getStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString('statusUser');
    return stringValue;
  }

  // DELETE DATA

  static void deleteTokens() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("tokensValue");
  }

  static void deleteName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("nameUser");
  }

  static void deleteUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("idUser");
  }

  static void deleteEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("emailUser");
  }

  static void deleteNoHp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("noHpUser");
  }

  static void deleteAddress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("addressUser");
  }

  static void deleteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("statusUser");
  }
}
