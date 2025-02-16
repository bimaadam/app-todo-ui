import 'package:flutter/material.dart';
import 'package:flutter_app_todo/pages/second_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Selamat Datang di Aplikasi Todo List',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Jangan lupa ngopi kawann\n kalo ga ngopi ga sik',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Container(
                  height: 55,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 228, 34),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Text(
                            'Mulai Sekarang',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 255, 255, 255),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ))
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
