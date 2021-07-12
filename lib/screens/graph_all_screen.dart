import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphAllScreen extends StatefulWidget {
  @override
  _GraphAllScreenState createState() => _GraphAllScreenState();
}

class _GraphAllScreenState extends State<GraphAllScreen> {
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
        title: Text("전체 그래프"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: SfCartesianChart(
                title: ChartTitle(text: "All Graph"),
                legend: Legend(isVisible: true),
                tooltipBehavior: _tooltipBehavior,
                series: <ChartSeries>[
                  StackedColumnSeries<ExpenseData, String>(
                    dataSource: _chartData,
                    xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
                    yValueMapper: (ExpenseData exp, _) => exp.check,
                    name: 'check',
                  ),
                  StackedColumnSeries<ExpenseData, String>(
                    dataSource: _chartData,
                    xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
                    yValueMapper: (ExpenseData exp, _) => exp.nocheck,
                    name: 'no check',
                  ),
                ],
                primaryXAxis: CategoryAxis(),
              ),
            ),
            //Stacked Graph
          ],
        ),
      ),
    );
  }

  List<ExpenseData> getChartData() {
    final List<ExpenseData> chartData = [
      ExpenseData('명사 "엄마"', 9, 1),
      ExpenseData('동사 "마셔"', 7, 3),
      ExpenseData('말 따라하기 "손씻어"', 8, 2),
      ExpenseData('세모 그리기', 3, 3),
      ExpenseData('숟가락 사용', 0, 10),
      ExpenseData('장난감 놀이', 6, 4),
      ExpenseData('율동모방하기 "수박"', 8, 2),
    ];
    return chartData;
  }
}

class ExpenseData {
  ExpenseData(this.expenseCategory, this.check, this.nocheck);
  final String expenseCategory;
  final num check;
  final num nocheck;

  // ExpenseData(
  //     this.expenseCategory, this.father, this.mother, this.son, this.daughter);
  // final String expenseCategory;
  // final num father;
  // final num mother;
  // final num son;
  // final num daughter;
}
