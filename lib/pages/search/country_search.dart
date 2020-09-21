import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:world_breaking_news/model/country_list.dart';
import '../web.dart';

class CountrySearch extends SearchDelegate<String> {
  final recentSearch = [
    'USA',
    'China',
    'Uk',
    'India',
    'France',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(
            Icons.search,
            size: 25,
            color: Color(0xff0f356d),
          ),
          onPressed: () {
            showResults(context);
            // query = "";
          }),
      IconButton(
          icon: Icon(Icons.clear, color: Colors.black),
          onPressed: () {
            query = "";
          }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
          title: Text('$query', style: GoogleFonts.aBeeZee()),
          subtitle: Text(
            DateFormat.yMMMMd().format(DateTime.now()),
          ),
          trailing: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WebView(
                            selectedUrl: 'https://news.google.com/topstories',
                            title: '$query',
                          )));
            },
            child: Chip(
                label: Text(
              'View Lastest Happenings',
              style: GoogleFonts.righteous(fontWeight: FontWeight.w400),
            )),
          )),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final buildSuggestion = query.isEmpty
        ? recentSearch
        : countryList.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemCount: buildSuggestion.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            showResults(context);
          },
          leading: FaIcon(
            FontAwesomeIcons.flag,
            size: 20,
            color: Colors.grey[700],
          ),
          title: RichText(
              text: TextSpan(
                  text: buildSuggestion[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                  text: buildSuggestion[index].substring(query.length),
                  style: TextStyle(color: Colors.grey),
                )
              ])),
        );
      },
    );
  }
}
