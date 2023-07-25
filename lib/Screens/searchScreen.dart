import 'package:flutter/material.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        toolbarHeight: 300,
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            margin: EdgeInsets.only(top: 50),
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15 )
            ),
            child: TextField(
              decoration: InputDecoration(
                // disabledBorder:
              ),
            ),
          ),
        ),
      ),
    );
  }
}
