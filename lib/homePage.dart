import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("$i"),
          centerTitle: true,
          actions: [
            InkWell(
                onTap: () {
                  setState(() {
                    i++;
                  });
                },
                child: Icon(Icons.add)),
            InkWell(
                onTap: () {
                  setState(() {
                    i--;
                  });
                },
                child: Icon(Icons.remove)),
            InkWell(
                onTap: () {
                  setState(() {
                    i = i * 2;
                  });
                },
                child: Icon(Icons.star)),
            InkWell(
                onTap: () {
                  setState(() {
                    i = i * 3;
                  });
                },
                child: Icon(Icons.account_box)),
            // InkWell(
            //     onTap: () {
            //       setState(() {
            //         i = i * 8;
            //       });
            //     },
            //     child: Icon(Icons.add_card)),
          ],
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                i = 1;
              });
            },
            child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(10),
              ),
              child: Text("Reset"),
            ),
          ),
        ),
      ),
    );
  }
}
