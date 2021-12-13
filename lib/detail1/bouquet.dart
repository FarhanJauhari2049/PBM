import 'package:flower_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flower_shop/home/navbar.dart';
import 'item_card.dart';
import 'package:flower_shop/detail2/body.dart';
import 'package:flower_shop/detail1/productBouquet.dart';
import 'data.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details())),
                  )),
        ),
      )
    ]);
  }
}

class LiveSearch extends StatefulWidget {
  @override
  _LiveSearchState createState() => _LiveSearchState();
}

class _LiveSearchState extends State<LiveSearch> {
  TextEditingController _controllerSearch = TextEditingController();
  
  Widget searchTextField;
  bool search = false;
  Color _bgColor = Colors.white;
  List list = [];

  @override
  void initState() {
    super.initState();
    list.addAll(items);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: _bgColor,
          title: searchTextField = Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                  "Bouquet",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
                  ]
                  
                ),
          leading: new IconButton(
            icon: SvgPicture.asset("assets/icons/back.svg"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LayoutNavigationBar()));
            },
          ),
          actions: <Widget>[
            (!search)
                ? IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        searchTextField = appSearch(
                            context); // Jika fase maka dilaukan set state
                        _bgColor = Colors.white; //
                        search = !search; //
                      });
                    })
                : IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        list.clear();
                        list.addAll(items);
                        _controllerSearch.clear();
                      });
                    })
          ],
        ),
        body: Body()
        // ListView.builder(
        //   itemCount: list.length,
        //   itemBuilder: (context, int index) {
        //     return ListTile(
        //       title: Text(
        //         list[index],
        //         style: TextStyle(fontSize: 18),
        //       ),
        //     );
        //   },
        // ),
        );
  }

  Widget appSearch(BuildContext context) {
    return TextField(
      controller: _controllerSearch,
      style: TextStyle(color: Colors.black, fontSize: 18),
      decoration: InputDecoration(
        
          icon: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                searchTextField = Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                  "Bouquet",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
                  ]
                  
                );
                
                search = !search;
                _bgColor = Colors.white;
                _controllerSearch.clear();
                list.clear();
                list.addAll(items);
              }),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.grey)),
      onChanged: (name) {
        _searchName(name);
      },
    );
  }

  _searchName(String name) {
    if (name.isNotEmpty) {
      setState(() {
        list.clear();
        items.forEach((item) {
          if (item.toLowerCase().contains(name.toLowerCase())) {
            list.add(item);
          }
        });
      });
    } else {
      setState(() {
        list.clear();
        list.addAll(items);
      });
    }
  }
}
