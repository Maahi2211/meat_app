// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:flutter_application_2/screens/CartScreen/components/address.dart';
import 'package:sizer/sizer.dart';

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildItemsSection(),
              SizedBox(height: 20),
              buildBillDetailsSection(),
              SizedBox(height: 20),
              Address(),
              SizedBox(height: 20),
              _buildOrderStatusSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItemsSection() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Items",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            buildItemRow("Apples", 10, 99),
            buildItemRow("Mangoes", 6, 99),
            Divider(),
            Row(
              children: [
                Text(
                  "Total (16 items)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 36.w),
                Text("₹198"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildItemRow(String name, int quantity, double price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              Images.SMALLAPPLE,
              scale: 1.5,
            ),
            Text("$name x $quantity"),
          ],
        ),
        Text("₹$price"),
      ],
    );
  }

  Widget buildBillDetailsSection() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bill Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            _buildBillDetailRow("Item Total", 210),
            _buildBillDetailRow("Delivery Charge", 20),
            _buildBillDetailRow("Taxes", 20),
            Divider(),
            _buildBillDetailRow("Total (16 items)", 198),
          ],
        ),
      ),
    );
  }

  Widget _buildBillDetailRow(String label, double value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text("₹$value"),
      ],
    );
  }

  Widget _buildOrderStatusSection() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Delivered at 10, Sept 10:00AM",
              style: TextStyle(fontWeight: bold1, fontSize: 13, color: mgrey),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatusItem("Placed", "10.20AM", true),
                _buildStatusItem("Accepted", "10.30AM", true),
                _buildStatusItem("Picked Up", "10.32AM", true),
                _buildStatusItem("Delivered", "10.40AM", true),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusItem(String label, String time, bool completed) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(color: mred, fontSize: 10),
        ),
        Text(
          time,
          style: TextStyle(color: mred, fontSize: 10),
        ),
        Icon(Icons.check_circle, color: mred),
      ],
    );
  }
}
