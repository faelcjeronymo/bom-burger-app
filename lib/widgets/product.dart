import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int productAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(22, 32, 22, 32),
                      child: Icon(
                        Icons.lunch_dining,
                        size: 32,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 2),
                          child: Text('Lanche',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                        Text(
                          '\$ 5,00',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 32,
                      height: 32,
                      child: FittedBox(
                        child: FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              if (productAmount > 0) {
                                productAmount--;
                              }
                            });
                          },
                          child: Icon(
                            Icons.remove,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text('$productAmount',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600))),
                    SizedBox(
                      width: 32,
                      height: 32,
                      child: FittedBox(
                        child: FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              productAmount++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
