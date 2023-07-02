import 'package:en_hack/screens/home_main_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../config/themes.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _conUserName = TextEditingController();
  TextEditingController _conPassword = TextEditingController();
  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        //color: Theme.of(context).primaryColor,
        child: SafeArea(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 200.0, height: 200.0, child: Image.asset("assets/images/logo.png")),
              // SizedBox(height: 20.0),
              Text(
                "En-Biz",
                style: TextStyle(
                  color: ColorConstant.primaryColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  //fontStyle: FontStyle.italic
                ),
              ),
              const SizedBox(height: 20.0),
              Column(
                children: const <Widget>[
                  /*_TextInputUserName(
                    controller: _conUserName,
                  ),
                  SizedBox(height: 20.0),
                  _TextInputPassword(
                    showPassword: _showPassword,
                    controller: _conPassword,
                    funcShowPassword: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),*/
                  _TextInput(
                    placeholder: "Username",
                    prefixIcon: Icon(Icons.person),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  _TextInput(
                    placeholder: "Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              const SizedBox(height: 10.0),
              _ButtonLogin(
                function: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeMainTabScreen()),
                  );
                },
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed(RegisterScreen.routeName);
                },
                child: const Text("Register", style: TextStyle(color: Colors.black)),
              ),
              const SizedBox(height: 10.0),
              SignInButton(
                Buttons.Google,
                onPressed: () {},
              ),
              SignInButton(
                Buttons.Facebook,
                onPressed: () {},
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class _ButtonLogin extends StatelessWidget {
  final Function? function;

  const _ButtonLogin({this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide(color: Theme.of(context).primaryColor),
          ),
          padding: const EdgeInsets.all(10.0),
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Theme.of(context).primaryColor,
        ),
        onPressed: () => function!(),
        child: const Text(
          "Login",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            // fontStyle: "monserrat_regular",
          ),
        ),
      ),
    );
  }
}

class _TextInputUserName extends StatelessWidget {
  final TextEditingController controller;

  const _TextInputUserName({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 5.0),
          child: const Text(
            "Username",
            style: TextStyle(fontSize: 15.0),
          ),
        ),
        Card(
          elevation: 5.0,
          color: Colors.green[200],
          child: TextFormField(
            controller: controller,
            inputFormatters: <TextInputFormatter>[
              LengthLimitingTextInputFormatter(20),
            ],
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              fillColor: Colors.red,
              prefixIcon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              //hintText: "Enter your Username",
              hintStyle: TextStyle(
                color: Colors.grey[100],
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _TextInputPassword extends StatelessWidget {
  final TextEditingController controller;
  final bool showPassword;
  final Function? funcShowPassword;

  const _TextInputPassword({required this.controller, this.showPassword = false, this.funcShowPassword});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 5.0),
          child: const Text(
            "Password",
            style: TextStyle(fontSize: 15.0),
          ),
        ),
        Card(
          elevation: 5.0,
          color: Colors.green[200],
          child: TextFormField(
            obscureText: !showPassword,
            controller: controller,
            inputFormatters: <TextInputFormatter>[
              LengthLimitingTextInputFormatter(20),
            ],
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              fillColor: Colors.green,
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.white,
              ),
              suffixIcon: IconButton(
                color: Colors.white,
                onPressed: () => funcShowPassword!(),
                icon: showPassword ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
              ),
              //hintText: "Enter your Username",
              hintStyle: TextStyle(
                color: Colors.grey[100],
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _TextInput extends StatelessWidget {
  final String? placeholder;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function? onTap;
  final Function? onChanged;
  final TextEditingController? controller;
  final bool? autofocus;
  final Color borderColor;

  const _TextInput(
      {this.placeholder,
      this.suffixIcon,
      this.prefixIcon,
      this.onTap,
      this.onChanged,
      this.autofocus = false,
      this.borderColor = Colors.grey,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: Colors.grey,
        onTap: ()=> onTap!(),
        onChanged:  (element)=> onChanged!(),
        controller: controller,
       // autofocus: autofocus,
        style: const TextStyle(
          fontSize: 13.0,
          color: Colors.grey,
        ),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
            filled: true,
            fillColor: Colors.white,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: borderColor, width: 1.0, style: BorderStyle.solid)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: borderColor, width: 1.0, style: BorderStyle.solid)),
            hintText: placeholder));
  }
}
