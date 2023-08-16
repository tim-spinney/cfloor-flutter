import 'cfloor_array.dart';

enum DataType {
  int,
  float,
  string,
  bool,
  array,
  ;

  static DataType byName(String name) => name.startsWith('array') ? DataType.array : DataType.values.firstWhere((type) => type.name == name);

  CompositeDataType toCompositeType() => CompositeDataType.fromPrimitive(this);
}

const cfloorTypesToDartTypes = {
  DataType.int: int,
  DataType.float: double,
  DataType.string: String,
  DataType.bool: bool,
  DataType.array: CFloorArray,
};

const defaultValues = {
  DataType.int: 0,
  DataType.float: 0.0,
  DataType.string: '',
  DataType.bool: false,
  DataType.array: [],
};

class CompositeDataType {
  final DataType dataType;
  final DataType? innerType;

  CompositeDataType(this.dataType, this.innerType);

  CompositeDataType.fromString(String text) : this(
      DataType.byName(text.split('<')[0]),
      text.contains('<') ? DataType.byName(text.split('<')[1].split('>')[0]) : null);

  CompositeDataType.fromPrimitive(DataType dataType) : this(dataType, null);

  bool isPrimitive() => innerType == null;

  String get name => innerType == null ? dataType.name : '${dataType.name}<$innerType>';

  @override
  String toString() => name;

  @override
  bool operator ==(Object other) =>
      other is CompositeDataType &&
      other.dataType == dataType &&
      other.innerType == innerType;

  @override
  int get hashCode => dataType.hashCode ^ innerType.hashCode;

}