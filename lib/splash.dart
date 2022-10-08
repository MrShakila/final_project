import 'package:final_project/home_page.dart';
import 'package:final_project/util_functions.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      UtilFunctions.navigateTo(context, const LoginPage());
    });
    //Provider.of<AuthProvider>(context, listen: false).initializedUser(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeumorphicText(
              "Shaila",
              textStyle: NeumorphicTextStyle(fontSize: 25),
            ),
            NeumorphicButton(
              onPressed: () {
                print("onClick");
              },
              style: const NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.circle(),
              ),
              padding: const EdgeInsets.all(12.0),
              child: const Icon(Icons.favorite_border,
                  color: Colors.deepOrangeAccent),
            ),
          ],
        ),
      ),
    );
  }
}
