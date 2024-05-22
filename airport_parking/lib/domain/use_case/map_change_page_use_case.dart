import 'package:airport_parking/data/data_source/airport_data.dart';
import 'package:airport_parking/domain/model/airport.dart';

class MapChangePageUseCase {
  final AirportData data;

  MapChangePageUseCase(this.data);

  void call(int index) {
    final airport = data.airportList[index];

    final newData = data.airportList.map(
      (element) {
        return element.copyWith(
          opacity: element.en == airport.en ? 1 : 0,
        );
      },
    ).toList();

    data.airportList = newData;
  }
}
