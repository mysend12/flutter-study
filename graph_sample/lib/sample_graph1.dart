import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class SampleGraph1 extends StatefulWidget {
  const SampleGraph1({super.key});

  @override
  State<SampleGraph1> createState() => _SampleGraph1State();
}

class _SampleGraph1State extends State<SampleGraph1> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Chart(
        data: [
          { 'genre': 'Sports', 'sold': 275 },
          { 'genre': 'Strategy', 'sold': 115 },
          { 'genre': 'Action', 'sold': 120 },
          { 'genre': 'Shooter', 'sold': 350 },
          { 'genre': 'Other', 'sold': 150 },
        ],
        variables: {
          'genre': Variable(
            accessor: (Map map) => map['genre'] as String,
          ),
          'sold': Variable(
            accessor: (Map map) => map['sold'] as num,
          ),
        },
        marks: [IntervalMark()],
        axes: [
          Defaults.horizontalAxis,
          Defaults.verticalAxis,
        ],
      ),
    );
  }
}
