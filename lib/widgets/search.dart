import 'package:flutter/material.dart';
import 'package:geidi/studentsprofile/Joel.dart';
import 'package:geidi/studentsprofile/Li.dart';
import 'package:geidi/studentsprofile/Lyn.dart';
import 'package:geidi/studentsprofile/Mark.dart';
import 'package:geidi/studentsprofile/Mary.dart';
import 'package:geidi/studentsprofile/Mike.dart';
import 'package:geidi/studentsprofile/Mylah.dart';
import 'package:geidi/studentsprofile/gwen.dart';
import 'package:geidi/studentsprofile/nike.dart';

class Search extends SearchDelegate {
  List<String> data = [
    "gwen",
    "mike",
    "joel",
    "mark",
    "li",
    "mary",
    "mylah",
    "ly",
    "mylah",
    "nike",
  ];

  List<String> recentSearch = [
    "Gwen",
    "Mike",
    "Joel",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != null && data.contains(query.toLowerCase())) {
      return ListTile(
        title: Text(query),
        onTap: () {
          if (query.toLowerCase() == "gwen") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => gwenProfile()));
          } else if (query.toLowerCase() == "mike") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => mikeProfile()));
          }
          if (query.toLowerCase() == "joel") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => joelProfile()));
          } else if (query.toLowerCase() == "mark") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => markProfile()));
          }
          if (query.toLowerCase() == "li") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => liProfile()));
          } else if (query.toLowerCase() == "mary") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => maryProfile()));
          }
          if (query.toLowerCase() == "mylah") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => maylahProfile()));
          } else if (query.toLowerCase() == "ly") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => lynProfile()));
          }
          if (query.toLowerCase() == "nike") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => nikeProfile()));
          }
        },
      );
    } else if (query == "") {
      return Text("");
    } else {
      return ListTile(
        title: Text("No results found"),
        onTap: () {},
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
        itemCount: recentSearch.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recentSearch[index]),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: () {
              if (recentSearch[index] == "Gwen") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => gwenProfile()));
          } else if (recentSearch[index] == "Mike") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => mikeProfile()));
          }
          if (recentSearch[index] == "Joel") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => joelProfile()));
          }
            },
          );
        });
  }
}
