import 'package:chapter_15_list_view/contact_list/contact_list.dart';
import 'package:chapter_15_list_view/contact_list/model.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContactList([
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
      ContactModel(fullname: '张三', email: '123@qq.com'),
    ]);
  }
}