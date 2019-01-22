import 'package:chapter_15_list_view/contact_list/contact_list_item.dart';
import 'package:chapter_15_list_view/contact_list/model.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final List<ContactModel> models;

  ContactList(this.models);

  @override
  Widget build(BuildContext context) {

    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: models.map((ContactModel model) => ContactListItem(model)).toList(),
    );
  }
}