import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GirisEkrani());
  }
}

class GirisEkrani extends StatefulWidget {
  @override
  _GirisEkraniState createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  girisYap() {
    // if (t1.text == "admin" && t2.text == "1234") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilEkrani()),
    );
    // } else {
    //   showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: new Text("Yanlış kullanıcı adı veya şifre"),
    //         content: new Text("Lütfen giriş bilgilerinizi gözden geçirin."),
    //         actions: <Widget>[
    //           new TextButton(
    //             child: new Text("Kapat"),
    //             onPressed: () {
    //               Navigator.of(context).pop();
    //             },
    //           ),
    //         ],
    //       );
    //     },
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Giriş Ekrani")),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextFormField(
              //   decoration: InputDecoration(hintText: "Kullanıcı Adı"),
              //   controller: t1,
              // ),
              // TextFormField(
              //   decoration: InputDecoration(hintText: "Şifre"),
              //   controller: t2,
              // ),
              ElevatedButton(
                  onPressed: () {
                    girisYap();
                  },
                  child: Text("Giriş Yap")),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilEkrani extends StatefulWidget {
  @override
  _ProfilEkraniState createState() => _ProfilEkraniState();
}

class _ProfilEkraniState extends State<ProfilEkrani> {
  cikisYap() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    // final VeriModeli iletilenArgumanlar =
    //     ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  cikisYap();
                },
                child: Text("Çıkış Yap"),
              ),
              // Text("Kullanıcı Adınız: ${iletilenArgumanlar.kullaniciAdi}"),
              // Text("Şifreniz: ${iletilenArgumanlar.sifre}"),
            ],
          ),
        ),
      ),
    );
  }
}

class VeriModeli {
  String kullaniciAdi, sifre;
  VeriModeli({required this.kullaniciAdi, required this.sifre});
}
