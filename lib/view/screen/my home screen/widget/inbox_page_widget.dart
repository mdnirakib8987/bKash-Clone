import 'package:flutter/material.dart';

class InboxPageWidget extends StatefulWidget {
  const InboxPageWidget({Key? key}) : super(key: key);

  @override
  State<InboxPageWidget> createState() => _InboxPageWidgetState();
}

class _InboxPageWidgetState extends State<InboxPageWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Inbox")),
    );
  }
}
