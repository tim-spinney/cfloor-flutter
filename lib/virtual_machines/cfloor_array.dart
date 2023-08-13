import 'data_type.dart';

class CFloorArray {
    final DataType innerType;
    final List<dynamic> values;

    CFloorArray(this.innerType, List<dynamic> values) : values = List.of(values, growable: false);
    CFloorArray.filled(this.innerType, int length) : values = List.filled(length, defaultValues[innerType], growable: false);

    int get length => values.length;

    operator [](int index) => values[index];
    operator []=(int index, dynamic value) => values[index] = value;

    @override
    String toString() => values.toString();
}