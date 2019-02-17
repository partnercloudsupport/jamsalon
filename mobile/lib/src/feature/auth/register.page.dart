import 'package:jamsalon/src/feature/_.imports.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  String _validatePassword(String value) {
    if (value.length < 8) {
      return 'The Password must be at least 8 characters.';
    } else {
      return null;
    }
  }

  String _validateConfirmPassword(String value) {
    if (value != this._password) {
      return 'Passwords don\'t match';
    } else {
      return null;
    }
  }

  void submit(void Function(String username, String password) registerFn) {
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save();

      registerFn(_email, _password);
    }
  }

  @override
  Widget build(BuildContext context) {
    print('[Auth] -BUILDING- RegisterPage');
    return Scaffold(
      body: StoreConnectors.registerPage(
        builder: (vm) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              alignment: Alignment.center,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Container(
                  width: 300.0,
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'you@example.com',
                            border: OutlineInputBorder(),
                          ),
                          onSaved: (String value) => this._email = value,
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                          validator: _validatePassword,
                          onSaved: (String value) => this._password = value,
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                          validator: _validateConfirmPassword,
                        ),
                        SizedBox(height: 30.0),
                        SizedBox(
                          width: double.infinity,
                          height: 60.0,
                          child: AppRaisedButton(
                            label: 'Register',
                            onPressed: () => this.submit(vm.register),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
