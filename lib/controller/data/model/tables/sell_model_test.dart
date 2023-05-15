// ignore_for_file: public_member_api_docs, sort_constructors_first
class SellDataModel {
  final String polnoeNaimovaniye;
  final int kolichestvo;
  final int sena;
  final int summa;
  final String srokGod;
  final String seriya;
  final String mx;
  final String ikpu;
  final String mark;
  SellDataModel(
    this.polnoeNaimovaniye,
    this.kolichestvo,
    this.sena,
    this.summa,
    this.srokGod,
    this.seriya,
    this.mx,
    this.ikpu,
    this.mark,
  );
}

class PaymentDetails {
  final double summa;
  final double skidka;
  final double oplata;
  PaymentDetails({
    this.summa = 0,
    this.skidka = 0,
    this.oplata = 0,
  });
}
