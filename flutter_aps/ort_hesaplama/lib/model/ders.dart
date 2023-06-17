class Ders {
  final String ad;
  final double harfDegeri;
  final double krediDegeri;

  Ders({required this.ad,required this.harfDegeri,required this.krediDegeri});

  @override
  String toString() {
    // TODO: implement toString
    return 'Ders adı:$ad,dersin harf değeri:$harfDegeri,dersin kredi değeri:$krediDegeri';
  }
}
