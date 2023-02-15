import 'package:flutter/material.dart';

import 'widgets/button_confirm_order.dart';
import 'widgets/custom_card_widget.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({super.key});

  @override
  State<ConfirmOrderScreen> createState() => _EcommerceScreenState();
}

class _EcommerceScreenState extends State<ConfirmOrderScreen> {
  int valueDelivery = 0;
  int valueContact = 0;
  int valuepaymentMethod = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Confirm Order'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            totals(),
            delivery(),
            contact(),
            const SizedBox(height: 10),
            paymentMethod(),
            const SizedBox(height: 10),
            const ButtonConfirmOrder()
          ],
        ),
      ),
    );
  }

  Widget totals() {
    const itemsStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
    const totalStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w600);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Subtotal', style: itemsStyle),
              Text('Rs. 500.0', style: itemsStyle),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Delivery fee', style: itemsStyle),
              Text('Rs. 100.0', style: itemsStyle),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Total', style: totalStyle),
              Text('Rs. 600.0', style: totalStyle),
            ],
          ),
        ],
      ),
    );
  }

  Widget delivery() {
    onChanged(value) => setState(() => valueDelivery = value);

    return Column(
      children: [
        const CustomCard(title: 'DELIVERY ADDRESS'),
        customRadioListTitle(
            1, valueDelivery, 'Chabahil, Kathmandu', onChanged, true),
        customRadioListTitle(
            2, valueDelivery, 'Choose new delivery address', onChanged),
      ],
    );
  }

  Widget contact() {
    onChanged(value) => setState(() => valueContact = value);

    return Column(
      children: [
        const CustomCard(title: 'CONTACT NUMBER'),
        customRadioListTitle(1, valueContact, '9818522122', onChanged, true),
        customRadioListTitle(
            2, valueContact, 'Choose new contact number', onChanged),
      ],
    );
  }

  Widget paymentMethod() {
    onChanged(value) => setState(() => valuepaymentMethod = value);

    return Column(
      children: [
        const CustomCard(title: 'PAYMENT OPTION'),
        customRadioListTitle(
            1, valuepaymentMethod, 'Cash on Delivery', onChanged),
      ],
    );
  }

  Widget customRadioListTitle(
          int value, int groupValue, String text, Function(int? a) onChanged,
          [bool isOldOption = false]) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: RadioListTile(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: Colors.deepPurple,
            title: Text(
              text,
              style: TextStyle(
                  fontSize: 18.5,
                  fontWeight: FontWeight.w400,
                  color: isOldOption ? Colors.deepPurple : Colors.black),
            )),
      );
}
