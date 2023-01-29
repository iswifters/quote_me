import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const quotedPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class  quotedPage extends StatefulWidget {
  const quotedPage ({Key? key}) : super(key: key);

  @override
  State<quotedPage> createState() => _quotedPageState();
}

class _quotedPageState extends State< quotedPage> {

  List<String> quoteList = [
    "STAY HAPPY",
    "NEVER QUIT",
    "SMILE ALWAYS",
    "BE HUMBLE",
    "STAY GRATEFUL",
    "THANK GOD",
    "NEVER LOOK BACK",
    "NO REGRETS",
    "HAKUNA MATATA",
  ];

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Motivate Me")),
      body: SafeArea(
          child:  Column(
            children: [
              SizedBox(height: 40, width: 40,),
              Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.all(33),
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount (
                      crossAxisCount: 3,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 3,

                    ) ,
                    itemCount: 9,
                    itemBuilder: (context, index){
                      return Container(

                        padding: EdgeInsets.all(9),
                        color: Colors.grey,
                        child: Center(
                          child: Text("${quoteList[index]}"),
                        ),
                      );
                    }
                ),
              )


            ],

          )

      ),

    );

  }
}