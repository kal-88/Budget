import 'package:flutter/material.dart';

import '../utility.dart';

void main() => runApp(Homepage());

class Homepage extends StatefulWidget {
  //  static String id = 'homePage';
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


_gradientInfoContainer(context,startcolor,midcolor,endcolor,subtitle,title,slogan,icon){
  return Container(
    margin: EdgeInsets.all(14),
    padding: EdgeInsets.all(16),
    // height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width - 32,

    decoration: BoxDecoration(
      color: SemiBlackBg,
      // borderRadius: BorderRadius.only(
      //       topRight: Radius.circular(30.0),
      //       bottomLeft: Radius.circular(30.0)
      //     ),
      borderRadius: BorderRadius.circular(20),
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
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(60)
            ),
            child: Icon(icon,color: midcolor , size: 34,),
          ),
          // SizedBox(height: 4.0),
          Text(subtitle,
          style: cardTitleStyle
          ),
          // SizedBox(height: 2.0),
          Text(slogan,
          style: cDescStyle
          ),
          // SizedBox(height: 10),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('Balance', style: topSubTitleStyle
                  ),
                  Text(title, style: cDescStyle
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Expenses', style: topSubTitleStyle
                  ),
                  Text(title, style: expenseStyle
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

_dailyInfoWidget(context,day){
  return Container(
padding: EdgeInsets.all(16),
margin: EdgeInsets.only(left: 18.0, right: 18.0),
width: MediaQuery.of(context).size.width,
decoration: BoxDecoration(
color: SemiBlackBg,
borderRadius: BorderRadius.circular(20),

),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Text(day,
        style: cardTitleStyle),
        SizedBox(height: 4.0),
        ListTile(
          leading: Icon(
            Icons.shopping_cart,
            size: 26,
            color: Colors.grey[400],
          ),
          title: Text(
            'Grocery',
            style: cDescStyle,
          ),
          subtitle: Text(
            '240- Addis',
            style: cardSubTitleStyle,
          ),
          trailing: Text(
            '-78,852',
            style: cTrailingTitle,
          ),
        ),
      
        Divider(
        color: Colors.white24,
      ),

        ListTile(
          leading: Icon(
            Icons.fastfood,
            size: 26,
            color: Colors.grey[400],
          ),
          title: Text(
            'Corrupting',
            style: cDescStyle,
          ),
          subtitle: Text(
            '240- Addis',
            style: cardSubTitleStyle,
          ),
          trailing: Text(
            '-78,852',
            style: cTrailingTitle,
          ),
        ),
        
        Divider(
        color: Colors.white24,
      ),

        ListTile(
          leading: Icon(
            Icons.account_box,
            size: 26,
            color: Colors.grey[400],
          ),
          title: Text(
            'Hawking',
            style: cDescStyle,
          ),
          subtitle: Text(
            '240- Addis',
            style: cardSubTitleStyle,
          ),
          trailing: Text(
            '-78,852',
            style: cTrailingTitle,
          ),
        ),
      ],
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return
     SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      // SizedBox(height:100.0),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _gradientInfoContainer(context,StarBlue,MidBlue,EndBlue,'Budget','+52,785 ETB','waste no money!',Icons.account_balance_wallet),
                            // _gradientInfoContainer(context, StarPink, MidPink, EndPink, 'Expenses', 'ETB 15,852',Icons.indeterminate_check_box),
                            // _gradientInfoContainer(context, StarPurple, MidPurple, EndPurple, 'Bills', 'ETB 8,5421',Icons.payment),
                            // _gradientInfoContainer(context, StarYellow, MidYellow, EndYellow, 'Fueling', 'ETB 3,5421',Icons.ev_station),
                          ],
                        ),
                      ),
                      SizedBox(height:30),
          
                      _dailyInfoWidget(context,'Today, Jan 2019'),
                      SizedBox(height:10.0),
                      _dailyInfoWidget(context,'Yesterday, Jan 2020'),
                      SizedBox(height:10.0),
                      _dailyInfoWidget(context,'last our, Jan 2020'),
          
                    ],
                  ),
                );
  }
}