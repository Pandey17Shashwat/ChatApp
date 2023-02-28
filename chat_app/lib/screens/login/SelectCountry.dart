import 'dart:convert';

import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectCountry extends StatefulWidget {
  const SelectCountry({super.key});

  @override
  State<SelectCountry> createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  List<dynamic>? dataRetrieved;
  List<dynamic>? data;

  @override
  void initState() {
    _getData();
  }

  Future _getData() async {
    final String response =
        await rootBundle.loadString('assets/CountryCodes.json');
    dataRetrieved = await json.decode(response) as List<dynamic>;
    setState(() {
      data = dataRetrieved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(slivers: [
        CupertinoSliverNavigationBar(
          largeTitle: Text("Select Country"),
          previousPageTitle: "Edit Number",
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            (data)
                ? data!
                    .map<widget>((e) => CupertinoListTile(
                          title: Text(e['name']),
                          trailing: Text(e['dial_code']),
                        ))
                    .toList()
                : Center(
                    child: Text("Loading"),
                  ),
          ]),
        )
      ]),
    );
  }
}
