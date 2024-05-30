import 'package:airport_parking/data/data_source/airport_data.dart';
import 'package:airport_parking/domain/model/airport.dart';

class AirportListUseCase {
  final AirportData data;

  AirportListUseCase(this.data);

  List<Airport> getAirportList() {
    return data.airportList;
  }

  List<Airport> changeAirportList(List<Airport> airportList, int index) {
    final airport = airportList[index];

    final newData = airportList.map(
      (element) {
        return element.copyWith(
          isSelect: element.en == airport.en,
        );
      },
    ).toList();

    return newData;
  }
}
