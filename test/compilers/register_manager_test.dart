import 'package:cfloor_flutter/compilers/instruction_generating_tree_walker.dart';
import 'package:cfloor_flutter/compilers/wrappers/data_source.dart';
import 'package:cfloor_flutter/language_core/data_type.dart';
import 'package:test/test.dart';

main() {
  test('it reuses the left source if left is register of matching type', () {
    final registerManager = RegisterManager();
    final leftType = CompositeDataType.fromPrimitive(DataType.int);
    final left = RegisterMemorySource(leftType, 0);
    final right = ConstantDataSource(CompositeDataType.fromPrimitive(DataType.float), 1.23);

    final destination = registerManager.recycleOrAllocateRegister(left, right, leftType);

    expect(destination.register, left.register);
  });

  test('it reuses the right source if left does not match but right does', () {
    final registerManager = RegisterManager();
    final leftType = CompositeDataType.fromPrimitive(DataType.int);
    final left = RegisterMemorySource(leftType, 0);
    final rightType = CompositeDataType.fromPrimitive(DataType.float);
    final right = RegisterMemorySource(rightType, 1);

    final destination = registerManager.recycleOrAllocateRegister(left, right, rightType);

    expect(destination.register, right.register);
  });

  test('it allocates a new register if neither left nor right are the right type', () {
    final registerManager = RegisterManager();
    final leftType = CompositeDataType.fromPrimitive(DataType.int);
    final left = registerManager.allocateRegister(leftType).toSource();
    final rightType = CompositeDataType.fromPrimitive(DataType.float);
    final right = registerManager.allocateRegister(rightType).toSource();

    final destinationType = CompositeDataType.fromPrimitive(DataType.string);

    final destination = registerManager.recycleOrAllocateRegister(left, right, destinationType);

    expect(destination.register, isNot(left.register));
    expect(destination.register, isNot(right.register));
  });
}