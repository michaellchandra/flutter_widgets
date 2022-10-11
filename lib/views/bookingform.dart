part of 'pages.dart';

class Bookingform extends StatefulWidget {
  const Bookingform({Key? key}) : super(key: key);
  static const String routeName = '/Bookingform';
  @override
  _BookingformState createState() => _BookingformState();
}

class _BookingformState extends State<Bookingform> {
  final _loginKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlName.dispose();
    ctrlPhone.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _loginKey,
          child: Column(children: [
            /// NAMA
            SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Full Name",
                prefixIcon: Icon(Icons.person),
              ),
              controller: ctrlName,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),

            ///EMAIL
            SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
              controller: ctrlEmail,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                // return !EmailValidator.validate(value.toString())
                //     ? 'Email tidak valid!'
                //     : null;
                if (!EmailValidator.validate(value.toString())) {
                  return 'Email tidak valid!';
                } else {
                  return null;
                }
              },
            ),

            ///PHONE NUMBER
            SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Phone Number",
                prefixIcon: Icon(Icons.phone),
              ),
              controller: ctrlPhone,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                // if (!value.isValidPhone) {
                //   return "Enter Valid Phone Number";
                // } else {}
              },
            ),

            ///CITY
            SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "City",
                prefixIcon: Icon(Icons.location_city),
              ),
              controller: ctrlCity,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null) {
                  return "Please enter your City";
                } else {
                  return null;
                }
              },
            ),

            ///BUTTON BOOK
            SizedBox(height: 32),
            Container(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                  onPressed: (() {
                    if (ctrlEmail.text.isEmpty ||
                        ctrlName.text.isEmpty ||
                        ctrlPhone.text.isEmpty ||
                        ctrlCity.text.isEmpty) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Booking Failed!"),
                              content: Text("You must fill all the fields!"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: (() {
                                    Navigator.of(context).pop(context);
                                  }),
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          });
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Book success!"),
                              actions: <Widget>[
                                Align(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("Full Name : " + ctrlName.text),
                                        Text("Email : " + ctrlEmail.text),
                                        Text("Phone : " + ctrlPhone.text),
                                        Text("City : " + ctrlCity.text),
                                      ]),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil<dynamic>(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  homePage())),
                                          (route) => false);
                                    },
                                    child: Text("OK")),
                              ],
                            );
                          });
                    }
                  }),
                  child: Text("Book Now!")),
            )
          ]),
        ),
      ),
    );
  }
}
