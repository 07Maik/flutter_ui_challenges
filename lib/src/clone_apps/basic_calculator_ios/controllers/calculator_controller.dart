import 'package:get/get.dart';

class CalculatorController extends GetxController {
  late String _operatorSelected;
  late String _pivotValue;

  late RxString displayValue;
  late RxString operatorSelected;

  late bool isNewNumber;
  late bool savePreviousValue;

  CalculatorController() {
    _operatorSelected = '';
    _pivotValue = '';

    displayValue = '0'.obs;
    operatorSelected = ''.obs;

    isNewNumber = false;
    savePreviousValue = true;
  }

  void addNumber(String newNumber) {
    if (displayValue.value == '0') {
      displayValue.value = newNumber;
      return;
    }

    if (displayValue.value == '-0') {
      displayValue.value = '-$newNumber';
      return;
    }

    if (isNewNumber) {
      displayValue.value = newNumber;
      isNewNumber = !isNewNumber;
      operatorSelected.value = '';
      return;
    }

    displayValue.value = displayValue.value + newNumber;
  }

  addDecimalPoint() {
    if (isNewNumber) {
      displayValue.value = '0.';
      isNewNumber = !isNewNumber;
      return;
    }

    if (!displayValue.value.contains('.')) {
      displayValue.value = '${displayValue.value}.';
    }

    operatorSelected.value = '';
  }

  clear() {
    _pivotValue = '';
    _operatorSelected = '';
    operatorSelected.value = '';

    displayValue.value = '0';
    isNewNumber = false;
    savePreviousValue = true;
  }

  selectOperation(String operator) {
    if (savePreviousValue) {
      if (_pivotValue != '' && displayValue.value != '0') {
        displayValue.value = calculate();
      }
    }

    _pivotValue = displayValue.value;
    _operatorSelected = operator;
    operatorSelected.value = operator;

    savePreviousValue = true;
    isNewNumber = true;
  }

  changePositiveNegative() {
    if (isNewNumber) {
      displayValue.value = '-0';
      return;
    }

    if (displayValue.value.contains('-')) {
      displayValue.value = displayValue.value.replaceAll('-', '');
      return;
    }

    displayValue.value = '-${displayValue.value}';
  }

  selectPercentage() {
    final resultPercentage = double.parse(displayValue.value) / 100;

    displayValue.value = removeDecimalZero(resultPercentage);
  }

  getResult() {
    if (_operatorSelected != '') {
      displayValue.value = calculate();
    }
  }

  calculate() {
    late double operationResult;

    final double displayV = double.parse(displayValue.value);
    final double pivotV = double.parse(_pivotValue);

    switch (_operatorSelected) {
      case '+':
        operationResult = pivotV + displayV;

        break;
      case '-':
        if (savePreviousValue) {
          operationResult = pivotV - displayV;
          _pivotValue = displayV.toString();
          savePreviousValue = false;
        } else {
          operationResult = displayV - pivotV;
        }

        break;
      case '/':
        if (savePreviousValue) {
          operationResult = pivotV / displayV;
          _pivotValue = displayV.toString();
          savePreviousValue = false;
        } else {
          operationResult = displayV / pivotV;
        }

        break;
      case 'x':
        operationResult = pivotV * displayV;

        break;
      default:
        operationResult = pivotV.toDouble();
    }

    if (_pivotValue != '' && savePreviousValue) {
      _pivotValue = displayV.toString();
      savePreviousValue = false;
    }

    operatorSelected.value = '';

    return removeDecimalZero(operationResult);
  }

  String removeDecimalZero(double value) {
    String sValue = value.toString();

    if (sValue.endsWith('.0')) {
      return sValue.replaceAll('.0', '');
    }

    return sValue;
  }
}
