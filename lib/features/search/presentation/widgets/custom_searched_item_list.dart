import 'package:flutter/material.dart';

class CustomSearchedItemList extends StatelessWidget {
  const CustomSearchedItemList({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> _filteredItems = [];
    return Expanded(
      child: _filteredItems.isNotEmpty
          ? ListView.builder(
        itemCount: _filteredItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_filteredItems[index]),
            leading: Icon(Icons.local_offer),
          );
        },
      )
          : Center(
        child: Text(
          'No results found.',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}
