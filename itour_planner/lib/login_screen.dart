import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: SizedBox(
              height: 60,
              child: Image.asset('assets/images/app_logo.png'),
            ),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(173, 37, 51, 1),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(173, 37, 51, 1),
                  Color.fromRGBO(173, 37, 51, 0.9),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 420,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 50, 5, 0),
                  child: TextFormField(
                    validator: null,
                    controller: null,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.mail_outline,
                        color: Color.fromRGBO(173, 37, 51, 1),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 2.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 2.0,
                        ),
                      ),
                      labelText: 'Email or phone number',
                      labelStyle: const TextStyle(
                        color: Color.fromRGBO(173, 37, 51, 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                  child: TextFormField(
                    validator: null,
                    obscureText: _isHidden,
                    controller: null,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromRGBO(173, 37, 51, 1),
                      ),
                      suffix: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          _isHidden ? Icons.visibility_off : Icons.visibility,
                          color: const Color.fromRGBO(173, 37, 51, 1),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 2.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        color: Color.fromRGBO(173, 37, 51, 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      primary: const Color.fromRGBO(173, 37, 51, 1),
                      padding: const EdgeInsets.all(0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      primary: const Color.fromRGBO(173, 37, 51, 1),
                      onPrimary: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign Up',
                        ),
                        style: TextButton.styleFrom(
                          primary: const Color.fromRGBO(173, 37, 51, 1),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            alignment: Alignment.bottomRight,
            width: double.infinity,
            child: SizedBox(
              height: 80,
              child: Image.asset("assets/images/footer_icon.png"),
            ),
          ),
        ],
      ),
    );
  }
}
