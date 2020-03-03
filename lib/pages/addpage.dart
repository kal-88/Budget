import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mymoney/model/income_model.dart';
import 'package:mymoney/utility.dart';

void main() => runApp(Addpage());
class Addpage extends StatefulWidget {
  final Income income;

  Addpage({this.income});
  

  @override
  _AddpageState createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {

  final formKey = GlobalKey<FormState>();
  Income income = Income();
  String _amount,_catagory,_description;
    DateTime _dateTime;
    DateTime _currentDate = DateTime.now();
    var catagory = ["Salary","Income","Sell","Common"];
    var selectedCatagory = "Salary";
  
  @override
  Widget build(BuildContext context) {
    // String _formatdate = DateFormat.yMMMd().format(_currentDate);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Add Income',style: cardTitleStyle,),
         actions: <Widget>[
         IconButton(
                      icon: Icon(Icons.done),
                      iconSize: 30.0,
                      color: Colors.white,
                      onPressed: (){
                        formKey.currentState.save();
                        print(_dateTime);
                        print(_amount);
                        print(_catagory);
                        print(_description);
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage( income: this.income )));
                      },
         ),
       ],
      ),
      body: Form(
        key: formKey,
        child: ListView(
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
                          stops: [0.1,0.9,1.0],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,

                          ),
            ),
              child: ListTile(
                title: Text('Amount',style: cardTitleStyle),
                subtitle: Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    // color: Colors.black.withOpacity(0.1),
                  ),
                  child: Center(
                    child: TextFormField(
                        style: cSubTitle,
                        keyboardType: TextInputType.number,
                        textCapitalization: TextCapitalization.sentences,
                        onSaved: (input) => _amount = input,
                        onChanged: (value){},
                        decoration: InputDecoration.collapsed(
                          hintText: 'Amount of Income....',
                          hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
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
                          stops: [0.1,0.9,1.0],
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
                    onSaved: (input) => _catagory = input,
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
                          stops: [0.1,0.9,1.0],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,

                          ),
            ),
              child: ListTile(
                title: Text('Date and Time',style: cardTitleStyle),
                subtitle: Text(_dateTime == null ? 'choose the day': DateFormat.yMMMd().format(_dateTime).toString(),style: cSubTitle,),
                trailing: IconButton(
                icon: Icon(Icons.date_range,size: 30,color: Colors.white,), 
                onPressed: (){
                  showDatePicker(
                    context: context, 
                    initialDate: _dateTime == null ? _currentDate:
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
                          stops: [0.1,0.9,1.0],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,

                          ),
            ),
              child: ListTile(
                title: Text('Description',style: cardTitleStyle),
                subtitle: TextFormField(
                style: cSubTitle,
                textCapitalization: TextCapitalization.sentences,
                onSaved: (input)=> _description = input,
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
      ),
    );
  }

  // void _submit(){
  //   // if(formKey.cu){
  //   // }
  //   formKey.currentState.save();

  //   // Navigator.push(
  //   //                 context,
  //   //                 MaterialPageRoute(
  //   //                     builder: (context) => Result(income: this.income)));
  //   //           }
  // }
}
