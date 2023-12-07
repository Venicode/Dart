class SenderIDInvalidException implements Exception{
  static const String report = "SenderIDInvalidException";
  String idSender;
  SenderIDInvalidException({required this.idSender});
  @override
  String toString(){
    return "$report\nId Sender: $idSender";
  }
}
class ReceiverIdInvalidException implements Exception{
  static const String report = "ReceiverIdInvalidException";
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});
  @override
  String toString(){
    return "$report\nId Sender: $idReceiver";
  }
}
class SenderNotAuthenticatedException implements Exception{
  static const String report = "SenderNotAuthenticatedException";
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});
  @override
  String toString(){
    return "$report\nId Sender: $idSender";
  }
}
class SenderBalanceLowerThanAmountException implements Exception{
  static const String report = "SenderBalanceLowerThanAmountException";
  String idSender;
  double senderBalance;
  double amount;
  SenderBalanceLowerThanAmountException({required this.idSender, required this.senderBalance,
  required this.amount});
  @override
  String toString(){
    return "$report\nId Sender: $idSender\nSender Balance: ${senderBalance}\nAmount:${amount}";
  }
}