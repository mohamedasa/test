import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List arr=[0, 1, 21, 33, 45, 45, 45, 45, 45, 45,61,71,73];
  int x = 45;

  void findFirstAndLast(arr,  x)
  {
  int n = arr.length;
  int first = -1, last = -1;
  for (int i = 0; i < n; i++) {
  if (x != arr[i])
  continue;
  if (first == -1)
  first = i;
  last = i;
  }
  if (first != -1) {
  // print("First Occurrence = $first");
  // print("Last Occurrence = $last");
  print( '[''$first'',''$last'']');
  }
  else
  print('[''-1'',''-1'']');
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    findFirstAndLast(arr, x);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        child: Column(
            children: [
              Stack(
                children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,

                          image: AssetImage('assets/bck.PNG'),

                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Image(
                              image: AssetImage('assets/nnn.PNG'),
                              fit: BoxFit.cover),
                          Expanded(child: SizedBox()),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children:
                        [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,

                              child: Image(
                                  image: AssetImage('assets/prof.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Hi,Mohamed Mustafa",
                                    style:TextStyle(color:Colors.white )),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Let's Find Out Today",
                                    style:TextStyle(color:Colors.white ))
                                    // .font(Font.custom("IBM Plex Sans", size: 18).weight(.light))
                                    // .foregroundColor(Color(red: 0.75, green: 0.82, blue: 1))
                              ],
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                 Container(
                                  height: 50,

                                  child: Image(
                                      image: AssetImage('assets/qr.png'),
                                      fit: BoxFit.cover),
                                ),
                                Text("QR Code",
                                  style:TextStyle(color:Colors.white )),
                              ],
                            ),
                          )

                        ],
                      ),
                    ],
                  ),
                ),
                  Container(
                    //color: Colors.white,
                    width: 600.0,
                    padding: EdgeInsets.only(top: 223, left: 55, right: 55),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        hintText: 'Find A Gust...',
                        hintStyle: TextStyle(
                            fontSize: 18.0
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30.0,
                          color: Colors.redAccent,
                        ),
                        filled: true,
                      ),
                      //onSubmitted :
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 359,
                  height: 61,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 173,
                        height: 61,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 30,
                              child: Text(
                                '2 Hours, 35 Min',
                                style: TextStyle(
                                  color: Color(0xFF3A4255),
                                  fontSize: 24,
                                  fontFamily: 'IBM Plex Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'Your Next Meeting In:',
                                style: TextStyle(
                                  color: Color(0xFF3A4255),
                                  fontSize: 16,
                                  fontFamily: 'IBM Plex Sans',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 81),
                      Expanded(
                        child: Text(
                          'Sun, 2/7/2023',
                          style: TextStyle(
                            color: Color(0xFF3A4255),
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,

                      image: AssetImage('assets/basv.PNG'),

                    ),
                  ),
                  width: 358,
                  height: 182,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 163.14,
                        top: 7.24,
                        child: Opacity(
                          opacity: 0.05,
                          child: Container(
                            width: 194.86,
                            height: 174.41,
                            child: Stack(
                                children: [

                                ]
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        top: 94,
                        child: Text(
                          'Dell Technology ',
                          style: TextStyle(
                            color: Color(0xFF007DB8),
                            fontSize: 16,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 94,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,

                              image: AssetImage('assets/dell.png'),

                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 62,
                        child: Row(
                          children: [


                               Text(
                                'Ahmed Mohamed Yasser',
                                style: TextStyle(
                                  color: Color(0xFF3A4255),
                                  fontSize: 20,
                                  fontFamily: 'IBM Plex Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                           SizedBox(
                             width: 20,
                           ),
                            Image(
                                image: AssetImage('assets/gh.png'),
                                fit: BoxFit.cover),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 19,
                        child: Text(
                          'Meeting Title Here',
                          style: TextStyle(
                            color: Color(0xFF067E8B),
                            fontSize: 20,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18,
                        top: 152,
                        child: Text(
                          '10 AM - 12 PM',
                          style: TextStyle(
                            color: Color(0xFF3A4255),
                            fontSize: 16,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 254,
                        top: 152,
                        child: Text(
                          'Hall No. 16',
                          style: TextStyle(
                            color: Color(0xFF3A4255),
                            fontSize: 16,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 255,
                        top: 137,
                        child: Text(
                          'Room:',
                          style: TextStyle(
                            color: Color(0xFF7B8292),
                            fontSize: 10,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,

                      image: AssetImage('assets/bga.PNG'),

                    ),
                  ),
                  width: 358,
                  height: 182,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 163.14,
                        top: 7.24,
                        child: Opacity(
                          opacity: 0.05,
                          child: Container(
                            width: 194.86,
                            height: 174.41,
                            child: Stack(
                                children: [

                                ]
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        left: 19,
                        top: 62,
                        child: Column(
                          children: [
                            Text(
                              'Ahmed Mohamed Yasser',
                              style: TextStyle(
                                color: Color(0xFF3A4255),
                                fontSize: 20,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),


                          ],
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 100,
                        child: Column(
                          children: [

                            Image(
                                image: AssetImage('assets/gh.png'),
                                fit: BoxFit.cover),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 19,
                        child: Text(
                          'Meeting Title Here',
                          style: TextStyle(
                            color: Color(0xFFCF8749),
                            fontSize: 20,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ),
                      Positioned(
                        left: 18,
                        top: 152,
                        child: Text(
                          '10 AM - 12 PM',
                          style: TextStyle(
                            color: Color(0xFF3A4255),
                            fontSize: 16,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 254,
                        top: 152,
                        child: Text(
                          'Hall No. 16',
                          style: TextStyle(
                            color: Color(0xFF3A4255),
                            fontSize: 16,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 255,
                        top: 137,
                        child: Text(
                          'Room:',
                          style: TextStyle(
                            color: Color(0xFF7B8292),
                            fontSize: 10,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,

                      image: AssetImage('assets/bg.PNG'),

                    ),
                  ),
                  width: 358,
                  height: 182,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 163.14,
                        top: 7.24,
                        child: Opacity(
                          opacity: 0.05,
                          child: Container(
                            width: 194.86,
                            height: 174.41,
                            child: Stack(
                                children: [

                                ]
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 62,
                        child: Column(
                          children: [
                            Text(
                              'Ahmed Mohamed Yasser',
                              style: TextStyle(
                                color: Color(0xFF3A4255),
                                fontSize: 20,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 100,
                        child: Column(
                          children: [

                            Image(
                                image: AssetImage('assets/gh.png'),
                                fit: BoxFit.cover),
                          ],
                        ),
                      ),
                      Positioned(
                          left: 19,
                          top: 19,
                          child: Text(
                            'Meeting Title Here',
                            style: TextStyle(
                              color: Color(0xFF24AC63),
                              fontSize: 20,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                      ),
                      Positioned(
                        left: 18,
                        top: 152,
                        child: Text(
                          '10 AM - 12 PM',
                          style: TextStyle(
                            color: Color(0xFF3A4255),
                            fontSize: 16,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 254,
                        top: 152,
                        child: Text(
                          'Hall No. 16',
                          style: TextStyle(
                            color: Color(0xFF3A4255),
                            fontSize: 16,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 255,
                        top: 137,
                        child: Text(
                          'Room:',
                          style: TextStyle(
                            color: Color(0xFF7B8292),
                            fontSize: 10,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                width: 213,
                height: 52,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,

                    image: AssetImage('assets/group.png'),

                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
      ),


    );
  }
}
