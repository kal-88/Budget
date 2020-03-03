// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mymoney/pages/addpage.dart';
import 'package:mymoney/pages/constants.dart';
import 'package:mymoney/pages/expense.dart';
// import 'package:mymoney/pages/expense.dart';
import 'package:mymoney/pages/home.dart';
import 'package:mymoney/pages/menu.dart';
import 'package:mymoney/utility.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My Budget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  // int _page = 0;

  // final _pageOption=[
  //   Homepage(),
  //   Addpage(),
  //   Expense(),
  // ];
          
            @override
            Widget build(BuildContext context) {
              return Scaffold(
                backgroundColor: Colors.black,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                            'My Budget',
                            style: cardTitleStyle
                          ),
                  elevation: 0.0,
                  actions: <Widget>[
                    PopupMenuButton<String>(
                      onSelected: choiceAction,
                      itemBuilder: (BuildContext context){
                        return Constants.choices.map((String choice){
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(choice,style: darkSubTitleStyle,),
                          );
                        }).toList();
                      },
                    ),
                  ],
                ),
                drawer: Menu(),
                body: Homepage(),
                floatingActionButton: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                      color: SemiBlackBg,
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: <Color>[
                          StarBlue,MidBlue,EndBlue,
                         ],
                        stops: [0.1,0.8,1.0],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,

                        ),
                      ),
                      child: FloatingActionButton(
                        heroTag: 'add',
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child: Icon(Icons.add,size: 38,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Addpage()));
                        }
                        ),
                    ),
                      Container(
                        decoration: BoxDecoration(
                        color: SemiBlackBg,
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                        colors: <Color>[
                          StarPink,MidPink,EndPink,
                         ],
                        stops: [0.0,0.7,1.0],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,

                        ),
                      ),
                        child: FloatingActionButton(
                          heroTag: 'expence',
                          backgroundColor: Colors.white.withOpacity(0.2),
                        child: Icon(Icons.remove,size: 38,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Expense()));
                        }
                        ),
                      ),
                  ],
                ),
              );
            }
          void choiceAction(String choice){
            // print(Constants.RateUs);
            setState(() {
            switch (choice) {
              case Constants.RateUs:
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Addpage()));
              break;
              case Constants.Feedback:
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Expense()));
              break;
              case Constants.Share:
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Expense()));
              break;
              case Constants.Privacy:
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Expense()));
              break;
              case Constants.Terms:
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Expense()));
              break;
              default:
                   print(choice);
              break;
              }
            });
            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Addpage()));
          }
          }
          
// class NavBarClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     var sw = size.width;
//     var sh = size.height;

//     path.cubicTo(sw/12, 0, sw/12, 2*sh/5, 2*sw/12, 2*sh/5);
//     path.cubicTo(3*sw/12, 2*sh/5, 3*sw/12, 0, 4*sw/12, 0);
//     path.cubicTo(5*sw/12, 0, 5*sw/12, 2*sh/5, 6*sw/12, 2*sh/5);
//     path.cubicTo(7*sw/12, 2*sh/5, 7*sw/12, 0, 8*sw/12, 0);
//     path.cubicTo(9*sw/12, 0, 9*sw/12, 2*sh/5, 10*sw/12, 2*sh/5);
//     path.cubicTo(11*sw/12, 2*sh/5, 11*sw/12, 0, sw, 0);
//     path.lineTo(sw, sh);
//     path.lineTo(0, sh);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false; 
// }

// _buildNavItem(){
//   return CircleAvatar(
//     radius: 30,
//     backgroundColor: Colors.blueAccent.shade700,
//     child: CircleAvatar(
//       radius: 25,
//       backgroundColor: Colors.white.withOpacity(0.9),
//       child: Icon(Icons.add,color:Colors.blueAccent.shade700),
//     ),
//   );
// }

// _getBottomNavBar(context){
//   return Stack(
//     children: <Widget>[
//       Positioned(
//         bottom: 0,
//         child: ClipPath(
//           clipper: NavBarClipper(),
//                     child: Container(
//                       height: 60,
//                       width: MediaQuery.of(context).size.width,
//                       decoration: BoxDecoration(
//                 color: SemiBlackBg,
//                 borderRadius: BorderRadius.circular(20), 
//                 gradient: LinearGradient(
//                   colors: <Color>[
//                     StarBlue,MidBlue,EndBlue,
//                   ],
//                   stops: [0.0,0.5,1.0],
//                   begin: Alignment.topRight,
//                   end: Alignment.bottomLeft,
//                 ),
//               ),
//                     ),
//                   ),
//                 ),
//                 // Positioned(
//                 //   bottom: 45,
//                 //   width: MediaQuery.of(context).size.width,
//                 //   child: Row(
//                 //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 //     children: <Widget>[
//                 //       _buildNavItem(),
//                 //       SizedBox(width:1),
//                 //       _buildNavItem(),
//                 //       SizedBox(width:1),
//                 //       _buildNavItem(),
//                 //     ],
//                 //   ),
//                 // ),

//               ],
//             );
//           }