part of 'pages.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});
  static const String routeName = '/Bookingform';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool _isPressed = false;

  void buttonPress() {
    setState(
      () {
        if (_isPressed) {
          _isPressed = false;
        } else {
          _isPressed = true;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Universitas Ciputra Surabaya'),
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.orangeAccent,
                  Color.fromARGB(255, 217, 240, 250)
                ])),
            child: Column(
              children: [
                Flexible(
                  flex: 3,
                  child: Stack(children: [
                    Image.asset("assets/images/uc_thumb.jpg"),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white),
                          child: IconButton(
                              color: Colors.red,
                              onPressed: buttonPress,
                              icon: _isPressed
                                  ? const Icon(Icons.favorite)
                                  : const Icon(Icons.favorite_border)),
                        ),
                      ),
                    ),
                  ]),
                ),
                Flexible(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(55), // Image radius
                            child: Image.asset('assets/images/uc_thumb.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(55), // Image radius
                            child: Image.asset('assets/images/uc_thumb.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(55), // Image radius
                            child: Image.asset('assets/images/uc_thumb.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(55), // Image radius
                            child: Image.asset('assets/images/uc_thumb.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(55), // Image radius
                            child: Image.asset('assets/images/uc_thumb.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Selamat Datang Salah Jurusan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                ),
                Flexible(
                    flex: 4,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                            "Sejak didirikan 12 tahun yang lalu, Universitas Ciputra saat menerima mahasiswa pertamanya hingga saat ini dengan komitmen penuh terhadap pengembangan kualitas pendidikan, kami terus berinovasi untuk memberikan upaya terbaik dengan terus mengembangkan diri. \nPuji syukur kepada Tuhan Yang Maha Esa atas rahmat dan berkatNya serta terima kasih yang sebesar-besarnya kami ucapkan kepada semua pihak karena dukungan dan kepercayaannya kami dapat meraih Akreditasi Perguruan Tinggi A. \n \nKami sungguh bersyukur karena dengan pencapaian ini Universitas Ciputra bukan saja sebagai penerima akreditasi A bersama perguruan-perguruan tinggi hebat lainnya namun juga menjadi universitas termuda di Jawa Timur dan nomor 4 termuda pada level nasional yang meraih predikat tersebut.Pencapaian ini menjadi pemacu semangat kami dalam berkarya, memberikan yang terbaik dalam dunia pendidikan bagi pembangunan bangsa Indonesia seutuhnya. Mari terus berkarya dan berinovasi.\n \nSalam Entrepreneur!!!"),
                      ),
                    )),
                Container(
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Bookingform.routeName);
                      },
                      child: Text('Book Now')),
                ),
              ],
            )),
      ),
    );
  }
}
