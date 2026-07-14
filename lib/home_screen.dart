import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> filtersData = const ['All', 'Adidas', 'Nike', 'Bata'];

  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filtersData[0];
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Shoes\nCollection",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                      prefixIcon: Icon(Icons.search_outlined),
                      hintText: 'Search',
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filtersData.length,
                itemBuilder: (context, index) {
                  final filters = filtersData[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                      onTap: () {
                        selectedFilter = filters;
                        print('$selectedFilter');
                        setState(() {
                          
                        });
                      },
                      child: Chip(
                        padding: EdgeInsets.all(12),
                        side: BorderSide(
                          width: 1,
                          color:Color.fromRGBO(225, 225, 225, 1),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor:selectedFilter == filters?Theme.of(context).primaryColor : Color.fromRGBO(245, 247, 249, 1),
                        label: Text(filtersData[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
