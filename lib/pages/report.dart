import 'package:flutter/material.dart';
import 'package:mymoney/utility.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() => runApp(Report());
class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {


  List<charts.Series<Task,String>> _seriesPieData;

  _generateData(){
    var pieData=[
      Task('Work',35.8,MidBlue),
      Task('Eat',8.3,MidPink),
      Task('Commute',10.8,MidYellow),
      Task('TV',15.6,MidPurple),
      Task('Sleep',19.2,EndBlue),
      Task('Other',10.3,StarPink),
    ];
    _seriesPieData.add(
      charts.Series(
        data: pieData,
        domainFn: (Task task,_)=>task.task,
        measureFn: (Task task,_)=>task.taskvalue,
        colorFn: (Task task,_)=>charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Daily Task',
        labelAccessorFn: (Task row,_)=>'${row.taskvalue}',
      ),
    );
  }

@override
  void initState() {
    super.initState();
    _seriesPieData = List<charts.Series<Task,String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Report',style: cardTitleStyle),
      ),
      body: Column(
        children: <Widget>[
          Text('Money spend on daily tasks',style: cardTitleStyle),
          SizedBox(height: 10.0),
          Expanded(
            child: charts.PieChart(
              _seriesPieData,
              animate: true,
              animationDuration: Duration(seconds: 2),
              behaviors: [
                charts.DatumLegend(
                  outsideJustification: charts.OutsideJustification.endDrawArea,
                  horizontalFirst: false,
                  desiredMaxRows: 2,
                  cellPadding: EdgeInsets.only(right: 15.0,bottom: 15.0),
                  entryTextStyle: charts.TextStyleSpec(
                    color: charts.MaterialPalette.white,
                    fontSize: 14
                  ),
                )
              ],
              defaultRenderer: charts.ArcRendererConfig(
                arcRendererDecorators: [
                  charts.ArcLabelDecorator(
                    labelPosition: charts.ArcLabelPosition.inside
                  )
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Task{
  String task;
  double taskvalue;
  Color colorval;

    Task(this.task,this.taskvalue,this.colorval);
}