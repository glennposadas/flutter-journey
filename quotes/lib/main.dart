import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    Quote(text: "I love you guys.", author: "Diana."),
    Quote(text: "I'm tired", author: "Glenn")
  ];

  Widget getQuoteCard(Quote quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 10),
            Text(
              quote.author,
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
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
      body:
          Column(children: quotes.map((quote) => getQuoteCard(quote)).toList()),
    );
  }
}
