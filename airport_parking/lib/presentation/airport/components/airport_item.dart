import 'package:airport_parking/domain/model/open_airport.dart';
import 'package:airport_parking/util/colors.dart';
import 'package:airport_parking/util/date.dart';
import 'package:flutter/material.dart';

class AirportItem extends StatelessWidget {
  final OpenAirport openAirport;

  const AirportItem({
    super.key,
    required this.openAirport,
  });

  @override
  Widget build(BuildContext context) {
    final diff = DateDifference();
    final update =
        diff('${openAirport.parkingGetdate} ${openAirport.parkingGettime}');
    final percent =
        (openAirport.parkingIstay / openAirport.parkingFullSpace * 100).toInt();
    String conditionText = '만차';
    MaterialColor conditionColor = Colors.purple;
    if (percent < 60) {
      conditionText = '원활';
      conditionColor = Colors.green;
    } else if (percent < 80) {
      conditionText = '여유';
      conditionColor = Colors.yellow;
    } else if (percent < 95) {
      conditionText = '혼잡';
      conditionColor = Colors.pink;
    }

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: InColors.gray900,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              update,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16,
                color: InColors.main,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            openAirport.parkingAirportCodeName,
            style: const TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '전체/현재 : ${openAirport.parkingFullSpace}/${openAirport.parkingIstay} (${percent}%)',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            conditionText,
            style: TextStyle(
              fontSize: 34,
              color: conditionColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '주차가능 : ${openAirport.parkingFullSpace - openAirport.parkingIstay}',
            style: TextStyle(
              fontSize: 24,
              color: InColors.main,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
