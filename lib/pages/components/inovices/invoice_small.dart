import 'package:circle/pages/components/profile_image.dart';
import 'package:flutter/material.dart';

class InvoiceSmall extends StatefulWidget {
  final invoiceName;

  InvoiceSmall({
    required this.invoiceName,
  });

  @override
  State<StatefulWidget> createState() {
    return customeWidget(invoiceName: invoiceName);
  }
}

class customeWidget extends State<InvoiceSmall> {
  final String invoiceName;

  customeWidget({
    required this.invoiceName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 234, 238, 242),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //invoice icon
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 241, 246),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Color.fromARGB(255, 187, 204, 237),
                ),
              ),
              child: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  'icons/invoice.PNG',
                  height: 20,
                ),
              ),
            ),

            //incvoice data
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 189, 158, 197),
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //date
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                      'icons/calender.PNG',
                                      height: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    child: SizedBox(
                                      width: 10,
                                    ),
                                  ),
                                  Text('21-08-2022'),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                      'icons/calender.PNG',
                                      height: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    child: SizedBox(
                                      width: 10,
                                    ),
                                  ),
                                  Text('21-08-2022'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(
                      child: SizedBox(
                        height: 5,
                      ),
                    ),
                    //title
                    Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Text(
                        invoiceName,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 59, 59, 59),
                        ),
                      ),
                    ),

                    //title
                    Container(
                      decoration: BoxDecoration(
                          // color: Color.fromARGB(255, 198, 107, 221),
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '£',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 59, 59, 59),
                            ),
                          ),
                          Text(
                            '150',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 59, 59, 59),
                            ),
                          ),
                          Text(
                            '.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 59, 59, 59),
                            ),
                          ),
                          Text(
                            '40',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 59, 59, 59),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
