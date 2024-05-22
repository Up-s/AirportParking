import 'package:airport_parking/domain/model/airport.dart';
import 'package:flutter/material.dart';

class MapAnimateItem extends StatefulWidget {
  final Airport airport;

  const MapAnimateItem({
    super.key,
    required this.airport,
  });

  @override
  State<MapAnimateItem> createState() => _MapAnimateItemState();
}

class _MapAnimateItemState extends State<MapAnimateItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedOpacity(
          opacity: widget.airport.opacity,
          duration: const Duration(milliseconds: 200),
          child: Image.asset(
            widget.airport.mapPath,
            fit: BoxFit.contain,
          ),
        ),
        AnimatedOpacity(
          opacity: widget.airport.opacity,
          duration: const Duration(milliseconds: 500),
          child: Image.asset(
            widget.airport.airportPath,
            fit: BoxFit.contain,
          ),
        )
      ],
    );
  }
}
