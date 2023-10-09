import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showtitle = true;

  void toggleTitle() {
    setState(() {
      showtitle = !showtitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              titleLarge: TextStyle(
        color: Colors.blue,
      ))),
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showtitle ? const MyTitle() : const Text("noting"),
              IconButton(
                  onPressed: toggleTitle, icon: const Icon(Icons.access_alarm))
            ],
          ),
        ),
      ),
    );
  }
}

class MyTitle extends StatefulWidget {
  const MyTitle({
    super.key,
  });

  @override
  State<MyTitle> createState() => _MyTitleState();
}

class _MyTitleState extends State<MyTitle> {
  @override
  void initState() {
    // TODO: implement initState
    // api 와 같이 데이터를 가져와 초기화 할때 사용할 수 있다.
    print("initState");
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // 화면이 사라지고 있을때 동작
    print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Text(
      "My Larger Title",
      style: TextStyle(
          fontSize: 40, color: Theme.of(context).textTheme.titleLarge!.color),
    );
  }
}
