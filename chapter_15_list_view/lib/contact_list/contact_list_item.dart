import 'package:chapter_15_list_view/contact_list/model.dart';
import 'package:flutter/material.dart';

class ContactListItem extends StatelessWidget {
  final ContactModel model;

  ContactListItem(this.model);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(model.fullname[0]),
      ),
      title: Text(model.fullname),
      subtitle: Text(model.email),
    );
  }
}