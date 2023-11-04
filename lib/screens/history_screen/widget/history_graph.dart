import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:pressuremed/constants/app_colors.dart';
import 'package:pressuremed/screens/history_screen/widget/graph_tapbar.dart';

class HistoryGraph extends StatefulWidget {
  const HistoryGraph({super.key});

  @override
  State<HistoryGraph> createState() => _HistoryGraphState();
}

class _HistoryGraphState extends State<HistoryGraph> {

  var basicData = [
  {'genre': 'Sports', 'sold': 275},
  {'genre': 'Strategy', 'sold': 195},
  {'genre': 'Action', 'sold': 220},
  {'genre': 'Shooter', 'sold': 350},
  {'genre': 'Other', 'sold': 180},
];

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: const EdgeInsets.only(top: 15,left: 20,right: 20),
                width: 300,
                height: 320,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const GraphTapbar(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Container(
                        height: 230,
                        width: 350,
                        child: Chart(
                          data: basicData,
                          variables: {
                            'genre': Variable(
                              accessor: (Map map) => map['genre'] as String,
                            ),
                            'sold': Variable(
                              accessor: (Map map) => map['sold'] as num,
                            ),
                          },
                          marks: [
                            IntervalMark(
                              label: LabelEncode(
                                  encoder: (tuple) => Label(tuple['sold'].toString())),
                              elevation: ElevationEncode(value: 0, updaters: {
                                'tap': {true: (_) => 5}
                              }),
                              color:
                                  ColorEncode(value: Defaults.primaryColor, updaters: {
                                'tap': {false: (color) => color.withAlpha(100)}
                              }),
                            )
                          ],
                          axes: [
                            Defaults.horizontalAxis,
                            Defaults.verticalAxis,
                          ],
                          selections: {'tap': PointSelection(dim: Dim.x)},
                          tooltip: TooltipGuide(),
                          crosshair: CrosshairGuide(),
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
}