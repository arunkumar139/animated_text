import 'package:animated_text/src/ui/dasboard2.dart';

import '../../all_package.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({super.key});

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 100.0,
                width: 20.0,
              ),
              const Text(
                "Be",
                style: TextStyle(
                  fontSize: 43,
                ),
              ),
              const SizedBox(
                height: 100.0,
                width: 20.0,
              ),
              DefaultTextStyle(
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: "Audiowide",
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  pause: const Duration(seconds: 0),
                  stopPauseOnTap: true,
                  animatedTexts: [
                    RotateAnimatedText("AWESOME"),
                    RotateAnimatedText("OPTIMISTIC"),
                    RotateAnimatedText("DIFFERENT"),
                  ],
                  onTap: () {
                    print('Top Event');
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard2()),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
