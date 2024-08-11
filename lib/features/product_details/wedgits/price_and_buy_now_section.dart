import 'package:flutter/material.dart';

class PriceAndBuyNowSection extends StatelessWidget {
  const PriceAndBuyNowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0,right:16.0,top: 4.0,bottom: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
                height: MediaQuery.of(context).size.height / 12,
                decoration: const BoxDecoration(
                  color: Color(0xff7b61ff),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      topLeft: Radius.circular(16.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 24.0, right: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '\$140.00',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Unit price',
                        style: TextStyle(
                            color: Colors.grey.shade300, fontSize: 16),
                      ),
                    ],
                  ),
                )),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 12,
              decoration: const BoxDecoration(
                color: Color(0xff6953d9),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16.0),
                    topRight: Radius.circular(16.0)),
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                    top: 16.0, bottom: 16.0, left: 40.0, right: 40.0),
                child: Center(
                    child: Text(
                  'Buy Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                )),
              ))
        ],
      ),
    );
  }
}
