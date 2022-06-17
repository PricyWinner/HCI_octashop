part of 'pages.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController usernameController = TextEditingController();

TextEditingController passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  bool isUserNameValidate = false;

  // @override
  // void dispose() {
  //   usernameController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }
  var _username = '';
  var _password = '';
  bool _submited = false;

  void loginClickHandler() {
    print("lch");
    if (userRegister(usernameController.text, passwordController.text)) {
      Navigator.pushReplacementNamed(context, "/");
    }
  }

  bool validateTextField(String userInput) {
    if (userInput.isEmpty) {
      setState(() {
        isUserNameValidate = true;
      });
      return false;
    }
    setState(() {
      isUserNameValidate = false;
    });
    return true;
  }

  String? get _errorUsername {
    // at any time, we can get the text from _controller.value.text
    final text = usernameController.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 6) {
      return 'Too short';
    }

    // return null if the text is valid
    return null;
  }

  String? get _errorPassword {
    // at any time, we can get the text from _controller.value.text
    final password = passwordController.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code

    if (password.isEmpty) {
      return 'Can\'t be empty';
    }
    if (password.length < 4) {
      return 'Too short';
    }
    if (password.length > 16) {
      return 'Too long';
    }

    // return null if the text is valid
    return null;
  }

  void _submit() {
    setState(() {
      _submited = true;
    });
    // print("ABCSDADA");
    if (_errorUsername == null && _errorPassword == null) {
      UserClass newUser = UserClass(
          usernameController.value.text, passwordController.value.text);
      userDB.add(newUser);
      currentUser = newUser;
      // print(usernameController.value.text);
      Navigator.pushReplacementNamed(context, '/');
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => HomePage(currentUser: newUser,),
      //     ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Octashop Login"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage('assets/images/logo.jpg')),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        labelText: 'Enter your Username',
                        errorText: _submited ? _errorUsername : null,
                      ),
                      onChanged: (value) => setState(() => _username),
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          labelText: 'Enter your Password',
                          errorText: _submited ? _errorPassword : null),
                      onChanged: (value) => setState(() => _password),
                    ),
                    ElevatedButton(onPressed: _submit, child: Text('Login'))
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
