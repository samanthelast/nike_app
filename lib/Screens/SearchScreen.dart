import 'package:flutter/material.dart';

import '../ProductCard.dart';
import 'DetailScreen.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SearchScreenState createState() => new _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController editingController = TextEditingController();
  List<ProductCard> Products = [
ProductCard(0xFFff9800, "assets/shoes_01.png", "Gray Sneakers",
                "\$200.00", "\$190"),
                ProductCard(0xFF03a9f4, "assets/shoes_02.png", "Nike Bob",
                "\$150.00", "\$139"),
                ProductCard(0xFFfe23a1, "assets/shoes_03.png", "Green Running Sheos",
                "\$100.00", "\$95"),
                ProductCard(0xFFfa3c4b, "assets/shoes_04.png", "Hybrid Rocket WNS",
                "\$300.00", "\$278"),
                ProductCard(0xFFf2ec3b, "assets/shoes_05.png", "Nike White Sneakers",
                "\$150.00", "\$135"),
                ProductCard(0xFFfb2cdb, "assets/shoes_06.png", "Nike Black Sneakers",
                "\$140.00", "\$120")
  ];
  final duplicateItems = [
    ProductCard(0xFFff9800, "assets/shoes_01.png", "Gray Sneakers",
                "\$200.00", "\$190").getTitle(),
    ProductCard(0xFF03a9f4, "assets/shoes_02.png", "Nike Bob",
                "\$150.00", "\$139").getTitle(),
    ProductCard(0xFFfe23a1, "assets/shoes_03.png", "Green Running Sheos",
                "\$100.00", "\$95").getTitle(),
    ProductCard(0xFFfa3c4b, "assets/shoes_04.png", "Hybrid Rocket WNS",
                "\$300.00", "\$278").getTitle(),
    ProductCard(0xFFf2ec3b, "assets/shoes_05.png", "Nike White Sneakers",
                "\$150.00", "\$135").getTitle(),
    ProductCard(0xFFfb2cdb, "assets/shoes_06.png", "Nike Black Sneakers",
                "\$140.00", "\$120").getTitle()
  ];
  var items = List<String>();

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 64, left: 32, right: 32),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              controller: editingController,
              decoration: InputDecoration(
                  labelText: "Search Products",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${items[index]}'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: (){ _RouteToDetailScreen(context,Products[index].getcardColor(),Products[index].getimgUrl(),Products[index].getpreviousPrice(),Products[index].getprice(),Products[index].getTitle());},
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  
                      void _RouteToDetailScreen(BuildContext context, int cardColor, String imgUrl,
      String title, String previousPrice, String price) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            cardColor: cardColor,
            imgUrl:imgUrl,
            title:title,
            previousPrice:previousPrice,
            price:price,
          ),
        ));
  }
}

