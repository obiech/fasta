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
   this.id = json['data']['id'],
   this.userid =json['data']['userId'],
   this.cardname =json['data']['cardHolderName'],
   this.cardtype =json['data']['cardType'],
   this.cvv =json['data']['encryptedCvv'],
   this.cardnumber =json['data']['encryptedCardNumber'],
   this.last4digits =json['data']['lastFourCardNumberDigits'],
   this.expiryMonth =json['data']['expiryMonth'],
   this.expiryYear =json['data']['expiryYear'],
   this.createdAt =json['data']['createdAt'],
   this.updatedAt =json['data']['updatedAt'];

}