import 'package:flutter/material.dart';
import 'package:mymoney/utility.dart';

void main() => runApp(Setting());

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {

    // DateTime _dateTime;
    String currency;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Setting',style: cardTitleStyle,),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 18.0, right: 18.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: SemiBlackBg,
              borderRadius: BorderRadius.circular(20),
              ),
            child: ListTile(
              title: Text('Pro Version(ads Free)',style: sideTitleStyle),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 18.0, right: 18.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: SemiBlackBg,
              borderRadius: BorderRadius.circular(20),
              ),
            child: ListTile(
              title: Text('Currency',style: sideTitleStyle),
               subtitle: Text(
                 currency == null ? 'choose currency':'ETB',
                  // DateFormat.yMMMd().format(_dateTime).toString(),
                  style: cSubTitle,
                 ),
                trailing: IconButton(
                icon: Icon(Icons.arrow_drop_down,size: 45,color: Colors.white,), 
                onPressed: (){}
                //   showDatePicker(
                //     context: context, 
                //     initialDate: _dateTime == null ? _currentDate:
                //     _dateTime, 
                //     firstDate: DateTime(2000),
                //     lastDate: DateTime(2040)
                //   ).then((date){
                //     setState(() {
                //       _dateTime = date;
                //     });
                //   }); 
                // },
              ),
              ),
            ),
          SizedBox(height: 10.0,),
         Container(
            padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 18.0, right: 18.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: SemiBlackBg,
              borderRadius: BorderRadius.circular(20),
              ),
            child: ListTile(
              title: Text('Date Format',style: sideTitleStyle),
              subtitle: Text(
                 currency == null ? 'DD/MM/YYYY':'ETB',
                  // DateFormat.yMMMd().format(_dateTime).toString(),
                  style: cSubTitle,
                 ),
                trailing: IconButton(
                icon: Icon(Icons.arrow_drop_down,size: 45,color: Colors.white,), 
                onPressed: (){}
                ),
            ),
          ),
          SizedBox(height: 10.0,),
         Container(
            padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 18.0, right: 18.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: SemiBlackBg,
              borderRadius: BorderRadius.circular(20),
              ),
            child: ListTile(
              title: Text('Time Format',style: sideTitleStyle),
              subtitle: Text(
                 currency == null ? 'hh:mm a':'ETB',
                  // DateFormat.yMMMd().format(_dateTime).toString(),
                  style: cSubTitle,
                 ),
                trailing: IconButton(
                icon: Icon(Icons.arrow_drop_down,size: 45,color: Colors.white,), 
                onPressed: (){}
                ),
            ),
          ),
          SizedBox(height: 10.0,),
         Container(
            padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 18.0, right: 18.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: SemiBlackBg,
              borderRadius: BorderRadius.circular(20),
              ),
            child: ListTile(
              title: Text('Category',style: sideTitleStyle),
              subtitle: Text(
                 currency == null ? 'Add edit Category':'ETB',
                  // DateFormat.yMMMd().format(_dateTime).toString(),
                  style: cSubTitle,
                 ),
                trailing: IconButton(
                icon: Icon(Icons.arrow_drop_down,size: 45,color: Colors.white,), 
                onPressed: (){}
                ),
            ),
          ),
          SizedBox(height: 10.0,),
         Container(
            padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 18.0, right: 18.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: SemiBlackBg,
              borderRadius: BorderRadius.circular(20),
              ),
            child: ListTile(
              title: Text('Payment Mode',style: sideTitleStyle),
              subtitle: Text(
                 currency == null ? 'Add edit Payment mode':'ETB',
                  // DateFormat.yMMMd().format(_dateTime).toString(),
                  style: cSubTitle,
                 ),
                trailing: IconButton(
                icon: Icon(Icons.arrow_right,size: 45,color: Colors.white,), 
                onPressed: (){}
                ),
            ),
          ),
          SizedBox(height: 10.0,),
         Container(
            padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 18.0, right: 18.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: SemiBlackBg,
              borderRadius: BorderRadius.circular(20),
              ),
            child: ListTile(
              title: Text('Export Reports',style: sideTitleStyle),
              subtitle: Text(
                 currency == null ? 'exported pdf and excel reports':'ETB',
                  // DateFormat.yMMMd().format(_dateTime).toString(),
                  style: cSubTitle,
                 ),
                trailing: IconButton(
                icon: Icon(Icons.arrow_right,size: 45,color: Colors.white,), 
                onPressed: (){}
                ),
            ),
          ),
          SizedBox(height: 10.0,),
         Container(
            padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 18.0, right: 18.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: SemiBlackBg,
              borderRadius: BorderRadius.circular(20),
              ),
            child: ListTile(
              title: Text('Take Backup',style: sideTitleStyle),
              subtitle: Text('Take backup of data',
                  style: cSubTitle,
                 ),
            ),
          ),
          SizedBox(height: 10.0,),
         Container(
            padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 18.0, right: 18.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: SemiBlackBg,
              borderRadius: BorderRadius.circular(20),
              ),
            child: ListTile(
              title: Text('Local Backup',style: sideTitleStyle),
              subtitle: Text('Restore data your local backups',
                  style: cSubTitle,
                 ),
                trailing: IconButton(
                icon: Icon(Icons.arrow_right,size: 45,color: Colors.white,), 
                onPressed: (){}
                ),
            ),
          ),
          SizedBox(height: 10.0,),
         Container(
            padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 18.0, right: 18.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: SemiBlackBg,
              borderRadius: BorderRadius.circular(20),
              ),
            child: ListTile(
              title: Text('Clear All Records',style: sideTitleStyle),
              subtitle: Text('This will clear all income and expence data entirely',
                  style: cSubTitle,
                 ),
                 onTap: (){
                 },
            ),
          ),
        ],
      ),
    );
  }
}