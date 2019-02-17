import 'package:jamsalon/src/feature/_.imports.dart';

class SignInPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  String _validatePassword(String value) {
    if (value.length < 8) {
      return 'The Password must be at least 8 characters.';
    }
    return null;
  }

  void submit(void Function(String username, String password) signInFn) {
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save();

      signInFn(_email, _password);
    }
  }

  @override
  Widget build(BuildContext context) {
    print('[Auth] -BUILDING- SignInPage');
    return Scaffold(
      body: StoreConnectors.signInPage(
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
                        SizedBox(height: 30.0),
                        SizedBox(
                          width: double.infinity,
                          height: 60.0,
                          child: AppRaisedButton(
                            label: 'Sign In',
                            onPressed: () => this.submit(vm.signIn),
                          ),
                        ),
                        SizedBox(height: 30.0),
                        SizedBox(
                          width: double.infinity,
                          height: 60.0,
                          child: AppRaisedButton(
                            label: 'Sign In With Google',
                            onPressed: () => vm.signInWithGoogle(),
                          ),
                        ),
                        SizedBox(height: 30.0),
                        vm.loading ?? false
                            ? SizedBox(
                                width: 60.0,
                                height: 60.0,
                                child: CircularProgressIndicator(),
                              )
                            : Text(vm.user?.name ?? 'Unable to log you in!'),
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
