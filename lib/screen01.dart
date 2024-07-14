import 'package:basic_provider/count_provider.dart';
import 'package:basic_provider/screen02.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Screen01 extends StatefulWidget {
  const Screen01({super.key});

  @override
  State<Screen01> createState() => _Screen01State();
}

class _Screen01State extends State<Screen01> {
  @override
  Widget build(BuildContext context) {
    CountProvider provider = Provider.of<CountProvider>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Screen01'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
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
                provider.counter.toString() + ' times',
                style: GoogleFonts.aboreto(fontSize: 35.0),
              ),
              MaterialButton(
                  child: Icon(Icons.arrow_forward),
                  color: Colors.grey.shade800,
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Screen02()));
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
