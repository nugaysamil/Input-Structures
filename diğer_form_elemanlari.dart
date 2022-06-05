import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class DigerFormElemnalari extends StatefulWidget {
  const DigerFormElemnalari({super.key});

  @override
  State<DigerFormElemnalari> createState() => _DigerFormElemnalariState();
}

class _DigerFormElemnalariState extends State<DigerFormElemnalari> {
  bool checkBoxState = false;
  String sehir = "";
  bool switchState = false;
  double sliderDeger = 10;
  String secilenRenk = "Kırmızı";
  List<String> sehirler = ["Ankara", "Bursa", "İzmir", "Hatay"];
  String secilenSehir = "Ankara";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Diğer Form Elemanlari"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState = secildi!;
                });
              },
              activeColor: Colors.red.shade700,
              title: Text("CheckBox Title"),
              subtitle: Text("CheckBox SubTitle"),
              secondary: Icon(Icons.add),
              selected: true,
            ),
            RadioListTile<String?>(
              value: "Ankara",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  debugPrint("Secilen Değer : $deger");
                });
              },
              title: Text("Ankara"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            RadioListTile<String?>(
              value: "Bursa",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  debugPrint("Secilen Değer : $deger");
                });
              },
              title: Text("Bursa"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            RadioListTile<String?>(
              value: "İzmir",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  debugPrint("Secilen Değer : $deger");
                });
              },
              title: Text("İzmir"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (deger) {
                setState(() {
                  debugPrint("Anlaşma onayladındı $deger");
                  switchState = deger;
                });
              },
              title: Text("Switch title"),
              subtitle: Text("Switch subtitle"),
              secondary: Icon(Icons.refresh),
            ),
            Text(
              "Degeri sliderdan seciniz",
            ),
            Slider(
              value: sliderDeger,
              onChanged: (yeniDeger) {
                setState(() {
                  sliderDeger = yeniDeger;
                });
              },
              min: 10,
              max: 20,
              divisions: 20,
              label: sliderDeger.toString(),
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 15,
                          height: 12,
                          color: Colors.green,
                        ),
                        Text("Yeşil"),
                      ],
                    ),
                    value: "Yeşil"),
                DropdownMenuItem<String>(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 12,
                          height: 12,
                          color: Colors.red,
                        ),
                        Text("Kırmızı"),
                      ],
                    ),
                    value: "Kirmizi"),
                DropdownMenuItem<String>(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 15,
                          height: 12,
                          color: Colors.blue,
                        ),
                        Text("Mavi"),
                      ],
                    ),
                    value: "Mavi"),
              ],
              onChanged: (String? secilen) {
                setState(() {
                  secilenRenk = secilen!;
                });
              },
              hint: Text("Seciniz"),
              value: secilenRenk,
            ),
            DropdownButton<String>(
              items: sehirler.map((oankiSehir) {
                return DropdownMenuItem<String>(
                  child: Text(oankiSehir),
                  value: oankiSehir,
                );
              }).toList(),
              onChanged: (s) {
                setState(() {
                  secilenSehir = s!;
                });
              },
              value: secilenSehir,
            ),
          ],
        ),
      ),
    );
  }
}
