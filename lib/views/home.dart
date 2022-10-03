part of 'pages.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Universitas Ciputra Surabaya'),
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.lightBlue])),
            child: Column(
              children: [
                Flexible(
                  flex: 3,
                  child: Stack(children: [
                    Image.asset("assets/images/uc_thumb.jpg"),
                  ]),
                )
              ],
            )),
      ),
    );
  }
}
