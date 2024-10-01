import 'package:flutter/material.dart';

class MarketplaceProductsScreen extends StatefulWidget {
  const MarketplaceProductsScreen({Key? key}) : super(key: key);

  @override
  State<MarketplaceProductsScreen> createState() => _MarketplaceProductsScreenState();
}

class _MarketplaceProductsScreenState extends State<MarketplaceProductsScreen> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace Products'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Sort by :',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                _buildDropdownMenuItem('Popularity'),
                _buildDropdownMenuItem('Seller Details'),
                _buildDropdownMenuItem('Budget'),
                _buildDropdownMenuItem('Delivery Time'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownMenuItem(String text) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            const Icon(Icons.expand_more),
          ],
        ),
      ),
    );
  }
}