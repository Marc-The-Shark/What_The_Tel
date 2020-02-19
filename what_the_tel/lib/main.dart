// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:what_the_tel/telegram_API/auth.dart';
import 'widgets/contact_list/ContactList.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TelegramAuth auth = TelegramAuth();
    
    return MaterialApp(
      title: '',            
      home: ContactList(),
    );
  }
}

