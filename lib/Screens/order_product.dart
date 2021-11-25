import 'package:flutter/material.dart';
import 'package:patient/Utils/colorsandstyles.dart';

class OrderProduct extends StatelessWidget {
  const OrderProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ProductList(context),
          SizedBox(height: 10),
          PriceDetails(context),
          SizedBox(height: 60),
          Center(child: Text('Place order button'))
        ],
      ),
    );
  }

  Widget dashedHorizontalLine() {
    return Row(
      children: [
        for (int i = 0; i < 20; i++)
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget ProductList(context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, int) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                //borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(2, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.purple,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Product Name', style: KHeader),
                              Text(
                                'Remove',
                                style: TextStyle(color: Color(0xffD68100)),
                              )
                            ],
                          ),
                          Container(
                            child: Text(
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut laborecn et.',
                              style: KBodyText,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text('Dropdown button', style: KPrice),
                              ),
                              Text(
                                '\$199',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget PriceDetails(context) {
    return Container(
      color: Colors.white,
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Price Details'),
            Divider(color: Colors.grey, thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price \(2 Iteams\)'),
                Text('\$398'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Discount'),
                Text('\$398'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery Charges'),
                Text('Free'),
              ],
            ),
            dashedHorizontalLine(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount'),
                Text('\$398'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
