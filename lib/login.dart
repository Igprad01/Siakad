import 'package:flutter/material.dart';
import 'package:siakad/nav.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String validNIM = '1462100095';
  String validPassword = '1113';

  TextEditingController nimController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 255, 0, 90),
              Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "SIAKAD",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Sistem Informasi Akademik",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Image.asset(
                'assets/img/untag.png',
                width: 160,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Form(
                      key: formKey,
                      child: Container(
                        width: 600,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 210, 127, 127)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize
                                .min, 
                            children: <Widget>[
                              TextFormField(
                                controller: nimController,
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  labelText: 'NIM',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                validator: (value) {
                                  if (value != validNIM) {
                                    return 'Invalid NIM';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                controller: passwordController,
                                obscureText: true,
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                validator: (value) {
                                  if (value != validPassword) {
                                    return 'Invalid password';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () => validasi(),
                                child: Text('Login'),
                              ),
                            ],
                          ),
                        ),
                      ),
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

  void validasi() {
    if (formKey.currentState!.validate()) {
      if (nimController.text == validNIM &&
          passwordController.text == validPassword) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => navbar(),
          ),
        );
      } else {
        print('nim atau password salah');
      }
    }
  }
}
