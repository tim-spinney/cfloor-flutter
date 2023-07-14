
enum DataType {
  int,
  float,
  string,
  bool,
  ;
}

const cfloorTypesToDartTypes = {
  DataType.int: int,
  DataType.float: double,
  DataType.string: String,
  DataType.bool: bool
};