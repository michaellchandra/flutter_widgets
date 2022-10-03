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
        title: const Text('Universitas Ciputra Surabaya'),
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
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
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.favorite)),
                  ]),
                ),
                Flexible(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(55), // Image radius
                          child: Image.asset('assets/images/uc_thumb.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(55), // Image radius
                          child: Image.asset('assets/images/uc_thumb.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(55), // Image radius
                          child: Image.asset('assets/images/uc_thumb.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(55), // Image radius
                          child: Image.asset('assets/images/uc_thumb.jpg',
                              fit: BoxFit.cover),
                        ),
                      )
                    ]),
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Selamat Datang Jangan Salah Jurusan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
