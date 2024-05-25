import 'package:airport_parking/domain/model/airport.dart';
import 'package:airport_parking/util/colors.dart';
import 'package:flutter/material.dart';

class MapAirportItem extends StatelessWidget {
  final Airport airport;

  const MapAirportItem({
    super.key,
    required this.airport,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: InColors.gray900,
      ),
      child: Center(
        child: Text(
          airport.ko,
          maxLines: 1,
          style: TextStyle(
            color: InColors.main,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}