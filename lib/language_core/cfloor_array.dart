import '../language_core/data_type.dart';

class CFloorArray {
    final DataType innerType;
    final List<dynamic> values;

    CFloorArray(this.innerType, List<dynamic> values) : values = List.of(values, growable: false);
    CFloorArray.filled(this.innerType, int length) : values = List.filled(length, defaultValues[innerType], growable: false);
    CFloorArray.copy(CFloorArray other) : innerType = other.innerType, values = List.of(other.values, growable: false);

    int get length => values.length;

    operator [](int index) => values[index];
    operator []=(int index, dynamic value) => values[index] = value;

    @override
    String toString() => values.toString();

    @override
    bool operator ==(Object other) =>
        other is CFloorArray &&
        other.innerType == innerType &&
        other.values == values;

    @override
    int get hashCode => innerType.hashCode ^ values.hashCode;
}