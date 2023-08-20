import '../../all_package.dart';

class Dashboard2 extends StatefulWidget {
  const Dashboard2({super.key});

  @override
  State<Dashboard2> createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  final colorizeColors = [
    Colors.purple,
    Colors.green,
    Colors.blueAccent,
    Colors.yellow,
    Colors.red,
  ];
  final colorizeTextStyle = TextStyle(fontSize: 36.0, fontFamily: "Audiowide");
  String images = "assets/images/google_icon.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // colors animated text
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image.asset(
            //   images,
            //   height: 40,
            //   width: 40,
            // ),
            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  "arunkumar@gmail.com",
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  "gideo@gmail.com",
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  "kabilesh@gmail.com",
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              repeatForever: true,
              isRepeatingAnimation: true,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
