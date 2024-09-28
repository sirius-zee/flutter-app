import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';
import 'dart:developer' as developer;

const myColor = Color.fromRGBO(198, 124, 78, 1);

class CountPrice extends StatefulWidget {
  final String namaPenginapan;
  final String nomorWhatsapp;
  final int hargaPenginapan;
  const CountPrice(
      {super.key,
      required this.namaPenginapan,
      required this.nomorWhatsapp,
      required this.hargaPenginapan});

  @override
  CountPriceState createState() => CountPriceState();
}

class CountPriceState extends State<CountPrice> {
  int count = 0;
  final TextEditingController _controller = TextEditingController();

  void _updateCount(String value) {
    setState(() {
      count = int.tryParse(value) ?? 1;
      _controller.text = count.toString();
    });
  }

  void _incrementCount() {
    setState(() {
      count++;
      _controller.text = count.toString();
    });
  }

  void _decrementCount() {
    if (count > 1) {
      setState(() {
        count--;
        _controller.text = count.toString();
      });
    }
  }

  void _openWhatsApp() async {
    String message =
        'Halo, saya tertarik untuk menginap di "${widget.namaPenginapan} untuk $count Malam"!';

    final Uri url = Uri.parse(
        'https://api.whatsapp.com/send?phone=${widget.nomorWhatsapp}&text=${Uri.encodeComponent(message)}');

    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } else {
        await launchUrl(Uri.parse(
            'https://api.whatsapp.com/send?phone=${widget.nomorWhatsapp}&text=${Uri.encodeComponent(message)}'));
      }
    } catch (e) {
      developer.log('$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = count * widget.hargaPenginapan;

    final formattedPrice = NumberFormat.currency(
      //mengubah format number Rp
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(totalPrice);

    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: count > 1 ? Colors.redAccent : Colors.black12,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(1, 1),
                      blurRadius: 4,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: count > 1 ? _decrementCount : null,
                  color: Colors.white,
                  disabledColor: Colors.white,
                  iconSize: 30,
                  padding: EdgeInsets.all(16),
                  constraints: BoxConstraints(
                    minWidth: 50,
                    minHeight: 50,
                  ),
                  splashColor: Colors.redAccent,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextField(
                      controller: _controller,
                      keyboardType: TextInputType.number,
                      onChanged: _updateCount,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        labelText: totalPrice > 0 ? '' : 'Jumlah / Malam',
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: myColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 177, 79, 18)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(1, 1),
                      blurRadius: 4,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _incrementCount,
                  color: Colors.white,
                  iconSize: 30,
                  padding: EdgeInsets.all(16),
                  constraints: BoxConstraints(
                    minWidth: 50,
                    minHeight: 50,
                  ),
                  splashColor: Colors.redAccent,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: totalPrice > 0 ? _openWhatsApp : null,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: myColor,
              disabledBackgroundColor: Color.fromRGBO(198, 124, 78, 0.8),
              shadowColor: const Color.fromRGBO(100, 70, 13, 1),
              elevation: 5,
              padding: EdgeInsets.symmetric(
                  horizontal: totalPrice > 0 ? 10 : 30,
                  vertical: totalPrice > 0 ? 15 : 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Column(
                  children: [
                    if (totalPrice > 0)
                      Text(
                        'Total : $formattedPrice',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    Text(
                      totalPrice > 0
                          ? 'Order Now'
                          : 'Silahkan masukan jumlah/malam',
                      style: TextStyle(
                          fontSize: totalPrice > 0 ? 12 : 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
