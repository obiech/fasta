class CardModel {
  final int id;
  final int userid; 
  final String cardnumber;
  final String last4digits;
  final String cardtype;
  final String cardname;
  final String cvv;
  final String createdAt; 
  final String updatedAt;
  final int expiryMonth;
  final int expiryYear;
  CardModel (this.cardname,this.cardtype, this.createdAt, this.cvv, this.cardnumber,
              this.id, this.last4digits, this.updatedAt, this.userid, this.expiryMonth, this.expiryYear);
 
   CardModel.fromJson(Map<String, dynamic> json):
   id = json['id'],
   userid =json['userId'],
   cardname =json['cardHolderName'],
   cardtype =json['cardType'],
   cvv =json['encryptedCvv'],
   cardnumber =json['encryptedCardNumber'],
   last4digits =json['lastFourCardNumberDigits'],
   expiryMonth =json['expiryMonth'],
   expiryYear =json['expiryYear'],
   createdAt =json['createdAt'],
   updatedAt =json['updatedAt'];

}