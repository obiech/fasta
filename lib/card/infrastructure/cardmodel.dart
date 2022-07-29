class cardmodel {
  final String id;
  final String userid;
  final String cardnumber;
  final String last4digits;
  final String cardtype;
  final String cardname;
  final String cvv;
  final String createdAt;
  final String updatedAt;
  final String expiryMonth;
  final String expiryYear;
  cardmodel (this.cardname,this.cardtype, this.createdAt, this.cvv, this.cardnumber,
              this.id, this.last4digits, this.updatedAt, this.userid, this.expiryMonth, this.expiryYear);

   cardmodel.fromJson(Map<String, dynamic> json):
   id = json['data']['id'],
   userid =json['data']['userId'],
   cardname =json['data']['cardHolderName'],
   cardtype =json['data']['cardType'],
   cvv =json['data']['encryptedCvv'],
   cardnumber =json['data']['encryptedCardNumber'],
   last4digits =json['data']['lastFourCardNumberDigits'],
   expiryMonth =json['data']['expiryMonth'],
   expiryYear =json['data']['expiryYear'],
   createdAt =json['data']['createdAt'],
   updatedAt =json['data']['updatedAt'];

}