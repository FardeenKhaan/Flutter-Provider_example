import 'package:basic_provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Screen02 extends StatefulWidget {
  Screen02({super.key});

  @override
  State<Screen02> createState() => _Screen02State();
}

class _Screen02State extends State<Screen02> {
  @override
  Widget build(BuildContext context) {
    CountProvider provider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Screen02'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
          ),
          backgroundColor: Colors.grey,
          foregroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'The Count pressed as:',
                style: GoogleFonts.aboreto(fontSize: 30.0),
              ),
              Text(
                provider.counter.toString() + 'times',
                style: GoogleFonts.aboreto(fontSize: 35.0),
              ),
              MaterialButton(
                  child: Icon(Icons.arrow_back),
                  color: Colors.grey.shade800,
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
            onPressed: () {
              setState(
                () {
                  provider.setIncrement();
                },
              );
            },
            child: Icon(Icons.add)));
  }
}
