import 'package:flutter/material.dart';

String email = 'rulyoctareza@gmail.com';
String name = 'Ruly Octareza';



class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                //Photo Profil
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/person.png',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //Teks nama profil dan email
                Column(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      email,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Column(
                    children: [
                      // UPDATE PROFILE
                      Divider(),

                      Row(
                        children: [
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                          Icon(
                            Icons.person,
                            size: 30,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Update Profile',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_right,
                            size: 32,
                          ),
                        ],
                      ),
                      Divider(),

                      // CHANGE PASSWORD

                      Row(
                        children: [
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                          Icon(
                            Icons.lock,
                            size: 30,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Change Password',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_right,
                            size: 32,
                          ),
                        ],
                      ),
                      Divider(),

                      // SETTINGS

                      Row(
                        children: [
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                          Icon(
                            Icons.settings,
                            size: 30,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_right,
                            size: 32,
                          ),
                        ],
                      ),
                      Divider(),

                      // ABOUT US

                      Row(
                        children: [
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                          Icon(
                            Icons.question_mark,
                            size: 30,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'About Us',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_right,
                            size: 32,
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
                style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsets.zero)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Icon(
                          Icons.info,
                          color: Colors.red,
                          size: 48,
                        ),
                        content:
                            const Text("Are you sure you want to log out?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("No"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/', (route) => false);
                            },
                            child: const Text("Yes"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Log Out',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.output,
                          color: Colors.white,
                        )
                      ],
                    ))),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
