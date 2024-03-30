import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

void main() {
  runApp(const MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "Hello, world!", author: "Gavin."),
    Quote(text: "Let's freakin' go!", author: "Adam"),
    Quote(text: "I love you guys.", author: "Diana"),
    Quote(text: "I'm tired", author: "Glenn")
  ];

  Widget getQuoteCard(Quote quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Column(
        children: [Text(quote.text), Text(quote.author)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Awesome Quotes',
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          children: quotes
              .map((quote) => Text("${quote.text} - ${quote.author}"))
              .toList()),
    );
  }
}
