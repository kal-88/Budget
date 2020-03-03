import 'package:flutter/material.dart';
import 'package:mymoney/pages/report.dart';
import 'package:mymoney/pages/setting.dart';
import 'package:mymoney/utility.dart';


class Menu extends StatelessWidget {

_gradientTopContainer(context,startcolor,midcolor,endcolor,title){
  return Column(
    children: <Widget>[
      Container(
        // margin: EdgeInsets.all(30),
        margin: EdgeInsets.only(
          left: 5.0,
          top: 36.0
        ),
        padding: EdgeInsets.all(16),
        height: 200,
        width: MediaQuery.of(context).size.width - 32,

        decoration: BoxDecoration(
          color: SemiBlackBg,
          // borderRadius: BorderRadius.circular(20),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0)
          ),
          gradient: LinearGradient(
            colors: <Color>[
              startcolor,midcolor,endcolor,
            ],
            stops: [0.0,0.5,1.0],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,

          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(80)
                ),
                // child: Icon(icon,color: midcolor , size: 40,),
              ),
              // SizedBox(height: 4.0),
              // Text(subtitle,
              // style: cardSubTitleStyle
              // ),
              SizedBox(height: 8),
              
              Text(title, style: cardTitleStyle
              ),
            ],
          ),
        ),
      ),

      Divider(
        color: Colors.white10,
      ),
      ListTile(
        onTap: (){
        },
          leading: Icon(
            Icons.insert_chart,
            size: 26,
            color: Colors.grey[400],
          ),
          title: Text(
            'Dashboard',
            style: sideTitleStyle,
          ),
        ),
        Divider(
        color: Colors.white10,
      ),
      
       ListTile(
         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Report()));
        },
          leading: Icon(
            Icons.receipt,
            size: 26,
            color: Colors.grey[400],
          ),
          title: Text(
            'Reports',
            style: sideTitleStyle,
          ),
          // subtitle: Text(
          //   '240- Addis',
          //   style: cardSubTitleStyle,
          // ),
          // trailing: Text(
          //   '-78,852',
          //   style: cTrailingTitle,
          // ),
        ),
      
        Divider(
        color: Colors.white10,
      ),
      ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
        },
          leading: Icon(
            Icons.settings,
            size: 26,
            color: Colors.grey[400],
          ),
          title: Text(
            'Settings',
            style: sideTitleStyle,
          ),
          // subtitle: Text(
          //   '240- Addis',
          //   style: cardSubTitleStyle,
          // ),
          // trailing: Text(
          //   '-78,852',
          //   style: cTrailingTitle,
          // ),
        ),
        Divider(
        color: Colors.white10,
      ),
      
      ListTile(
        onTap: (){
        },
          leading: Icon(
            Icons.style,
            size: 26,
            color: Colors.grey[400],
          ),
          title: Text(
            'Theme',
            style: sideTitleStyle,
          ),
          // subtitle: Text(
          //   '240- Addis',
          //   style: cardSubTitleStyle,
          // ),
          // trailing: Text(
          //   '-78,852',
          //   style: cTrailingTitle,
          // ),
        ),
        Divider(
        color: Colors.white10,
      ),
       ListTile(
         onTap: (){
        },
          leading: Icon(
            Icons.exit_to_app,
            size: 26,
            color: Colors.grey[400],
          ),
          title: Text(
            'Logout',
            style: sideTitleStyle,
          ),
          // subtitle: Text(
          //   '240- Addis',
          //   style: cardSubTitleStyle,
          // ),
          // trailing: Text(
          //   '-78,852',
          //   style: cTrailingTitle,
          // ),
        ),
      
        Divider(
        color: Colors.white10,
      ),
    ],
  );
}

  @override
  Widget build(BuildContext context) {
    return Drawer( 
      child: Scaffold(
        backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          _gradientTopContainer(context,StarBlue,MidBlue,EndBlue,'My Name'),
          // _dashboardWidget(context,'Today, Jan 2019'),
    //   Expanded(
    //     flex: 1,
    //           child: Container(
    //       height: 270,
    //       decoration: BoxDecoration(
    //       color: SemiBlackBg,
    //       borderRadius: BorderRadius.only(
    //       topRight: Radius.circular(40.0),
    //       bottomLeft: Radius.circular(40.0),
    //       // bottomRight: Radius.circular(30.0),
    //     ),
    //     // borderRadius: BorderRadius.circular(30),
    //     gradient: LinearGradient(
    //       colors: <Color>[
    //         StarBlue,MidBlue,EndBlue,
    //       ],
    //       stops: [0.0,0.5,1.0],
    //       begin: Alignment.topRight,
    //       end: Alignment.bottomLeft,

    //     ),
    // ),
    //     child: Column(
    //           children: <Widget>[
    //             Container(
    //             padding: EdgeInsets.only(top:80.0),
    //             ),
    //             CircleAvatar(
    //               backgroundColor: Colors.white,
    //               radius: 50.0,
    //                   ),
    //             SizedBox(height:5),
    //             Text('My Name',style: cardTitleStyle),
    //             // SizedBox(height:3),
    //             Text('sdfg',style: cardSubTitleStyle),
    //             SizedBox(height:20),
    //           ],
    //         ),
    // ),
    //   ),
    // Expanded(
    //   flex: 3,
    //       child: Padding(
    //     padding: const EdgeInsets.only(left: 20.0),
    //     child: Align(
    //       alignment: Alignment.centerLeft,
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: <Widget>[
    //           Row(
    //             children: <Widget>[
    //               Icon(Icons.insert_chart, color: Colors.white,),
    //               SizedBox(width:10.0),
    //               Text('Dashboard',style: sideTitleStyle),
    //             ],
    //           ),
    //           SizedBox(height:15),
    //           Text('Messages',style: sideTitleStyle),
    //           SizedBox(height:15),
    //           Text( 'Utility Bills',style: sideTitleStyle),
    //           SizedBox(height:15),
    //           Text('Branch',style: sideTitleStyle),
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
          // menu(context),
          // Container(
          //   width: double.infinity,
          //   padding: EdgeInsets.all(20),
          //   color: Colors.transparent,
          //   child: menu(context),
          //   ),
          // dashboard(context),
        ],
      ),
    )
    );
   
  }

  // Widget menu(context){
  //   return ;
  // }

}
