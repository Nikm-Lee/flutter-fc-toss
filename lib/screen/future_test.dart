import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/bank_accounts_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

void main() async {
  print("start");

  final account = await getBankAccounts().then((value) {
    print(value.toString());
  }).catchError((error, stackTrace) {});
  print("end");
}

abstract class DoWorkInterface {
  FutureOr<String> doWork();
}

class SyncWork extends DoWorkInterface {
  @override
  String doWork() {
    return "";
  }
}

class AsyncWork extends DoWorkInterface {
  @override
  Future<String> doWork() async {
    return "5";
  }
}

Future<List<BankAccount>?> getBankAccounts() async {
  await sleepAsync(2000.ms);
  return bankAccounts;
}

Future sleepAsync(Duration duration) {
  return Future.delayed(duration, () => {});
}
