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
        AnimatedContainer(
          duration: const Duration(milliseconds: 2000),
          curve: Curves.fastOutSlowIn,
          child: Transform.translate(
            offset: Offset(0, widget.airport.isSelect ? -6.0 : 0.0),
            child: AnimatedOpacity(
              opacity: widget.airport.isSelect ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: Image.asset(
                widget.airport.mapPath,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Opacity(
            opacity: widget.airport.isSelect ? 1.0 : 0.0,
            child: Image.asset(
              widget.airport.airportPath,
              fit: BoxFit.contain,
            ),
        ),
      ],
    );
  }
}
