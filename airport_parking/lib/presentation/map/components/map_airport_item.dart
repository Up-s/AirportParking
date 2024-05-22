import 'package:airport_parking/domain/model/airport.dart';
import 'package:airport_parking/util/hex_color.dart';
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
        color: HexColor('#00FFFF'),
      ),
      child: Center(
        child: Text(
          airport.ko,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}