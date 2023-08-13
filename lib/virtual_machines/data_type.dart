import 'cfloor_array.dart';

enum DataType {
  int,
  float,
  string,
  bool,
  array,
  ;
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