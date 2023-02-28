import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components/logo.dart';

class EditNumber extends StatefulWidget {
  const EditNumber({super.key});

  @override
  State<EditNumber> createState() => _EditNumberState();
}

class _EditNumberState extends State<EditNumber> {
  var _enterPhoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Edit Number"),
          previousPageTitle: "Back",
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Logo(width: 80.0, height: 80.0, radius: 30.0),
                Text(
                  "Verification . one step",
                  style: TextStyle(
                      color: Color(0xFF08C187).withOpacity(0.7), fontSize: 30),
                )
              ],
            ),
            Text(
              "Enter your phone number",
              style: TextStyle(
                  color: CupertinoColors.systemGrey.withOpacity(0.7),
                  fontSize: 30),
            ),
            CupertinoListTile(
              onTap: () {},
              title: Text(
                "India",
                style: TextStyle(color: Color(0xFF08C187)),
              ),
            ),
            Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "+91",
                  style: TextStyle(
                      fontSize: 25, color: CupertinoColors.secondaryLabel),
                ),
                Expanded(
                  child: CupertinoTextField(
                    placeholder: "Enter your phone number",
                    controller: _enterPhoneNumber,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        fontSize: 25, color: CupertinoColors.secondaryLabel),
                  ),
                ),
              ],
            )),

            Text("You will recieve an activation code in short time",
              style: TextStyle(color:CupertinoColors.systemGrey, fontSize: 15),
            ),
            Padding
            (
              padding: const EdgeInsets.symmetric(vertical: 40),
              child:
              CupertinoButton.filled(child: Text("Request Code"), onPressed: (){})
            )
          ],
        ));
  }
}
