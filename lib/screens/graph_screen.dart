import 'package:flutter/material.dart';
import 'package:show_me_the_graph/screens/graph_all_screen.dart';
import 'package:show_me_the_graph/source/data_source.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphScreen extends StatefulWidget {
  final GraphData data;

  GraphScreen({Key? key, required this.data}) : super(key: key);

  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  late List<ExpenseData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.getTitle()),
        actions: <Widget>[
          TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GraphAllScreen()),
                );
              },
              child: Text(
                "전체보기",
                // style: TextStyle(
                //   fontSize: 15,
                //   color: Colors.white,
                // ),
              ))
        ],
      ),
      body: Center(
        child: SfCartesianChart(
          title: ChartTitle(text: widget.data.getTitle()),
          legend: Legend(isVisible: true),
          tooltipBehavior: _tooltipBehavior,
          series: <ChartSeries>[
            LineSeries<ExpenseData, num>(
                name: 'check',
                dataSource: _chartData,
                xValueMapper: (ExpenseData exp, _) => exp.count,
                yValueMapper: (ExpenseData exp, _) => exp.ischeck)
          ],
          primaryXAxis: CategoryAxis(),
        ),
      ),
    );
  }

  List<ExpenseData> getChartData() {
    final List<ExpenseData> chartData = [
      ExpenseData(1, 0),
      ExpenseData(2, 0),
      ExpenseData(3, 1),
      ExpenseData(4, 1),
      ExpenseData(5, 1),
      ExpenseData(6, 1),
      ExpenseData(7, 1),
      ExpenseData(8, 0),
      ExpenseData(9, 1),
      ExpenseData(10, 1),
    ];
    return chartData;
  }
}

class ExpenseData {
  ExpenseData(this.count, this.ischeck);
  final num count;
  final num ischeck;
}
