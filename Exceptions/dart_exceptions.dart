import 'dart:math';
import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void testingNullSafety() {
  Account? myAccount = Account(
      name: "Ricarth", balance: 200, isAuthenticated: true);
  ;
  //Somilando uma comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if (randomNumber <= 5) {
    myAccount.createdAt = DateTime.now();
  }
  print(myAccount.createdAt);
  print(myAccount.createdAt?.day);

//   //tratando nulls
//   print(myAccount.runtimeType);
//   print(myAccount != null ? myAccount.balance : "Conta nula");//operador ternário
//   print(myAccount?.balance);//chamada segura
// }
}
  void main() {
    testingNullSafety();
    // Criando o banco
    BankController bankController = BankController();
    // Adicionando contas
    // Account accountTest = Account(name: "Maria", balance: -200, isAuthenticated: true);
    bankController.addAccount(
        id: "Ricarth",
        account:
        Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

    bankController.addAccount(
        id: "Kako",
        account:
        Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

    // Fazendo transferência
    try {
      bool result = bankController.makeTransfer(
          idSender: "Kako", idReceiver: "Ricarth", amount: 800);
      // Observando resultado
      if (result) {
        print("Transação concluída com sucesso.");
      }
    } on SenderIDInvalidException catch (e) {
      print(e);
      print("O ID ${e.idSender} do remetente não é um ID válido");
    } on ReceiverIdInvalidException catch (e) {
      print(e);
      print("O ID ${e.idReceiver} do destinatário não é um ID válido");
    } on SenderNotAuthenticatedException catch (e) {
      print(e);
      print("O usuário remetente de ID '${e.idSender}' não está autenticado.");
    } on SenderBalanceLowerThanAmountException catch (e) {
      print(e);
      print("O usuário de ID '${e.idSender}' tentou enviar ${e.amount}, porém"
          " não possui saldo suficiente: ${e.senderBalance}");
    } on Exception {
      print("Algo deu errado");
    }
  }
