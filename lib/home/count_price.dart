import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const myColor = Color.fromRGBO(198, 124, 78, 1);

class CountPrice extends StatefulWidget {
  const CountPrice({super.key});

  @override
  CountPriceState createState() => CountPriceState();
}

class CountPriceState extends State<CountPrice> {
  int count = 0;
  final double price = 50.0;
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
    // Ganti dengan nomor telepon dan pesan Anda
    String phoneNumber =
        '6281215027197'; // Nomor telepon (harus dalam format internasional)
    String message =
        'Halo, saya tertarik dengan produk Anda!'; // Pesan yang ingin dikirim
    final Uri url = Uri.parse(
        'https://api.whatsapp.com/send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}');

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Tidak bisa membuka WhatsApp';
    }
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = count * price;

    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          // Text(
          //   'Price per item: \$${price.toStringAsFixed(2)}',
          //   style: TextStyle(fontSize: 18),
          // ),
          // SizedBox(height: 20),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: count > 1 ? Colors.redAccent : Colors.black12,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
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
                        labelText: 'Jumlah / Malam',
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                              color: myColor), // Warna border saat enabled
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                              color: myColor), // Warna border saat fokus
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
                      color: Colors.black.withOpacity(0.1),
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
          SizedBox(height: 10),
          Text(
            'Total Price: \$${totalPrice.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: _openWhatsApp,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: myColor,
              shadowColor: const Color.fromRGBO(100, 70, 13, 1),
              elevation: 5,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              shape: RoundedRectangleBorder(
                // Button shape
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  'Order Now',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
