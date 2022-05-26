import 'package:circle/pages/components/home_appbar.dart';
import 'package:circle/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;

import '../model/Invoice_data_model.dart';
import '../services/invoice_service.dart';
import '../static/static_values.dart';
import 'components/inovices/home_amount.dart';
import 'components/inovices/invoice_small.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;

  //invoices
  List<InvoiceDataModel>? invoices;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    //fetch data
    getData();
  }

  getData() async {
    var client = http.Client();
    var uri = Uri.parse(StaticValues.apiUrl);

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      print(response);
      var json = response.body;
      invoices = invoiceDataModelFromJson(json);
    } else {}

    if (invoices != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              HomeAppBar(),

              //money
              HomeAmount(),

              const SizedBox(
                height: 10,
              ),

              Expanded(
                child: Container(
                  // height: 300,
                  child: ListView.builder(
                    itemCount: invoices!.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return InvoiceSmall(
                        invoiceName: invoices?[index].company,
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
            ]),
      ),
      bottomNavigationBar: //nevigation
          BottomNavigationBar(
            currentIndex: _selectedIndex,
            elevation: 1,
            selectedItemColor: Color.fromARGB(255, 189, 158, 197),
            // unselectedItemColor: Color.fromARGB(255, 196, 196, 196),
            onTap: _onItemTapped,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.create),
                label: 'Create',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(index);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => Profile())));
    });
  }
}
