import 'package:fast_app_base/common/dart/collection/sort_functions.dart';

void main() {
// List.sort((row) => row.)

  ((int a, int b) => a + b);

  String fairMasterCode = 'kpetk';
  var calculateAmountFunc = getCalculateAmountFunc(fairMasterCode);
  var paymentAmount = calculateAmountFunc('', '');
  [1, 2, 3, 4, 5].sort((a, b) {
    // 3,5,1,2,4
    /**
     * 0 안바꿈
     * 1 바꿈
     */
    if (a > b) {
      return 1;
    } else if (a == b) {
      return 0;
    } else {
      return -1;
    }
  });
}

int Function(String ticketNum, String regType) getCalculateAmountFunc(
    String fairMasterCode) {
// implementation
  return (String ticketNum, String regType) => {};
}


// 전시회 구분에 맞춰서 금액 로직을 받는다
// 결제 금액을 반환 받는다
