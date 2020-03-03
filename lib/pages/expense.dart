import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mymoney/utility.dart';


void main() => runApp(Expense());
class Expense extends StatefulWidget {
  // static String id = 'expensePage';
  @override
  _ExpenseState createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {

  DateTime _dateTime;
    DateTime _currentDate = DateTime.now();
    var catagory = ["Transportation","Food","Shopping","School"];
    var selectedCatagory = "Food";
  @override
  Widget build(BuildContext context) {
    String _formatdate = DateFormat.yMMMd().format(_currentDate);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
       title:Text('Expense',style:cardTitleStyle), 
       actions: <Widget>[
         IconButton(
                      icon: Icon(Icons.done),
                      iconSize: 30.0,
                      color: Colors.white,
                      onPressed: (){},
         ),
       ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 18.0, right: 18.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                        colors: <Color>[
                          StarBlue,MidBlue,EndBlue,
                         ],
                        stops: [0.1,0.8,1.0],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        ),
          ),
            child: ListTile(
              title: Text('Amount',style: cardTitleStyle),
              subtitle: TextField(
              style: cSubTitle,
              textCapitalization: TextCapitalization.sentences,
              keyboardType: TextInputType.number,
              onChanged: (value){},
              decoration: InputDecoration.collapsed(
                hintText: 'Amount of Income....',
                hintStyle: TextStyle(
                  color: Colors.white38,
                ),
              ),
            ),
            trailing: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                ),
                child: Text('ETB',style: cardSubTitleStyle),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 18.0, right: 18.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                        colors: <Color>[
                          StarBlue,MidBlue,EndBlue,
                         ],
                        stops: [0.1,0.8,1.0],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        ),
          ),
            child: ListTile(
              title: Text('Catagory',style: cardTitleStyle),
              subtitle: Theme(
                data: Theme.of(context).copyWith(
                canvasColor: Colors.black,
                ),
              child: DropdownButtonFormField(
                  onChanged: (String newValueSelected){
                    setState(() {
                      this.selectedCatagory = newValueSelected;
                    });
                  },
                  value: selectedCatagory,
                  hint: Row(
                    children: <Widget>[
                      Icon(Icons.list,size: 25,color: Colors.white70,),
                      SizedBox(width: 10.0,),
                      Text('Select Catagory',style: formSubTitle),
                    ],
                  ),
                  items: catagory.map((String dropDownStringItem){
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem,style: formSubTitle,),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 18.0, right: 18.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                        colors: <Color>[
                          StarBlue,MidBlue,EndBlue,
                         ],
                        stops: [0.1,0.8,1.0],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,

                        ),
          ),
            child: ListTile(
              title: Text('Date and Time',style: cardTitleStyle),
              subtitle: Text(_dateTime == null ? 'choose the day': _formatdate.toString(),style: cSubTitle,),
              trailing: IconButton(
              icon: Icon(Icons.date_range,size: 30,color: Colors.white,), 
              onPressed: (){
                showDatePicker(
                  context: context, 
                  initialDate: _dateTime == null ? DateTime.now():
                  _dateTime, 
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2040)
                ).then((date){
                  setState(() {
                    _dateTime = date;
                  });
                }); 
              },
            ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(left: 18.0, right: 18.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                        colors: <Color>[
                          StarBlue,MidBlue,EndBlue,
                         ],
                        stops: [0.1,0.8,1.0],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,

                        ),
          ),
            child: ListTile(
              title: Text('Description',style: cardTitleStyle),
              subtitle: TextField(
              style: cSubTitle,
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value){},
              decoration: InputDecoration.collapsed(
                hintText: 'Description....',
                hintStyle: TextStyle(
                  color: Colors.white38,
                ),
              ),
            ),
              // trailing: Text('hello',style: cSubTitle),
            ),
          ),
        ],
      ),
    );
    // Container(
    //   child:Center(
    //     child: Icon(Icons.money_off,size: 150.0,color: Colors.white)),
    // );
  }
}