import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 150,
              ),
              const Text.rich(
                TextSpan(
                  text: "Hello ",
                  children: [
                    TextSpan(
                      text: "Username",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                style: TextStyle(
                  color: Color(0xFFfd3330),
                ),
              )
            ],
          ),
        ),
        Expanded(
          
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Container(
              height: Get.height,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Menu"),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.close,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Image.asset(
                        'assets/images/user.png',
                        width: 40,
                      ),
                       trailing: const Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      title: const Text(
                        "Username",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        "Profile and Preferences",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Image.asset(
                        'assets/images/identity_verified.png',
                        width: 40,
                      ),
                      
                      trailing: const Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      title: const Text(
                        "Identity Verification",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        "Verified",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      // contentPadding: EdgeInsets.zero,
                      tileColor: Colors.white,
                      leading: Image.asset(
                        'assets/images/payment.png',
                        width: 40,
                      ),
                       trailing: const Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      title: const Text(
                        "Payments Methods",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Image.asset(
                        'assets/images/account_security.png',
                        width: 40,
                      ),
                       trailing: const Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      title: const Text(
                        "Account Security",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Image.asset(
                        'assets/images/logout.png',
                        width: 40,
                      ),
                       trailing: const Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      title: const Text(
                        "Logout",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Terms and Conditions",
                          maxLines: 1,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          "Terms and Conditions",
                          maxLines: 1,
                           style: TextStyle(
                            fontStyle: FontStyle.italic,
                             color: Colors.blue,
                          ),
                        ),
                        Text(
                          "V 1.0.0",
                          maxLines: 1,
                           style: TextStyle(
                            fontStyle: FontStyle.italic,
                             color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
