import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muhasebe Terimleri',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Muhasebe Terimleri'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('Fatura'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FaturaScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[200],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('Stok'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StokScreen()),
              );

            },
          ),
          ListTile(
            tileColor: Colors.orange[300],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('Cari'),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CariScreen()),
            );


            },
          ),
          ListTile(
            tileColor: Colors.orange[400],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('Kâr Marjı'),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>karscreeen()),
            );
            },
          ),
          ListTile(
            tileColor: Colors.orange[500],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('Matrah'),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MatrahScreen()),
            );
            },

          ),
          ListTile(
            tileColor: Colors.orange[500],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('Amortisman'),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AmortismanScreen()),
            );
            },

          ),
          ListTile(
            tileColor: Colors.orange[500],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('Bilanço'),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BilancoScreen()),
            );
            },

          ),
          ListTile(
            tileColor: Colors.orange[500],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('Öz Kaynaklar'),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OzKaynakScreen()),
            );
            },

          ),
          ListTile(
            tileColor: Colors.orange[400],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('Varlıklar'),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VarlikScreen()),
            );
            },

          ),
          ListTile(
            tileColor: Colors.orange[300],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('İrsaliye'),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => irsaliyeScreen()),
            );
            },

          ),
          ListTile(
            tileColor: Colors.orange[200],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('Tevkifat'),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TevkifatScreen()),
            );
            },

          ),

          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.white,),
            title: Text('Müteselsil'),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MuteselsilScreen()),
            );
            },

          ),



        ],
      ),
    );
  }
}
class borcScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Müteselsil borç nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          ' Bazı hallerde hem alacaklı hem de borçlu taraf, birden fazla kişiden oluşabilir. Müteselsil borçluluk, alacaklının istediği borçluya borcun tamamının ifasını talep edebildiği, her bir borçlunun da alacaklıya karşı borcun tamamından sorumlu olduğu borç ilişkisidir.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class kefilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Müteselsill kefil nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Müteselsil kefil anlamı, ödenmeyen bir borç olduğunda borcu, gerçek borçlunun yerine ödemek zorunda olan kefil için söylenir. Aslında müteselsil kefillik, borçlunun borcunu kişisel olarak üstlenmek anlamına gelir.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class MuteselsilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Müteselsil Türleri'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Müteselsil borç'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => borcScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Müteselsil kefil'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => kefilScreen()),
              );
            },
          ),

        ],
      ),
    );
  }
}
class irsaliyeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İrsaliye Türleri'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Sevk irsaliyesi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SevkScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Taşıma irsaliyesi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TasimaScreen()),
              );
            },
          ),

        ],
      ),
    );
  }
}
class TevkifatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tevkifat nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Tevkifat, para konusunda kesintiler anlamına gelen bir sözcüktür. Vergi bağlamında, vergiler üzerinde bölüşme/kesinti yapma anlamına gelir. Bu vergi çeşidinde devlet, alacağı katma değer vergisini (KDV) satıcının yanı sıra alıcıdan da alır. Bu vergi ile iki taraf arasında bir bölüştürme olmuş olur.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class SevkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sevk irsaliyesi nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Sevk İrsaliyesi, satılmış veya satılmak üzere olan bir malın, iş yerinden taşınacağı adrese nakliyesinde veya kişi/işletmeye ait iş yerlerine taşınmasında düzenlenen belgeye verilen isimdir. Sevk irsaliyesinin üzerinde malın konusu, birimi ve malın kime ait olduğu belirtilmek zorundadır.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class TasimaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taşıma irsaliyesi nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Taşıma irsaliyesi olarak bilinen belge, belli bir ücret karşılığında eşya taşıyanların yükümlülük altına alınması için düzenlenir. Burada taşınan malların ticari bir yönünün olup olmamasından ziyade ücret alınarak taşınmasına dikkat edilir. Nakliye sektöründe taşımacılığın yasal olarak bilinmesine katkı sağlayan irsaliye, götürü usulüne göre vergiye tabi olan mükellefler tarafından düzenlenir.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}



class FaturaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fatura Türleri'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(

        children: <Widget>[
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Temel Fatura'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TemelFaturaScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Ticari Fatura'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TicariFaturaScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('İhracat Faturası'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IhracatFaturasiScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class TemelFaturaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temel Fatura nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Gip kontrolünden geçtikten sonra karşı tarafa ulaşması durumunda doğrudan onaylandı olan faturadır. İptal süresi 7 gündür. 7 günü geçen faturalar için iade faturası kesilebilir.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class CariScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cari/Cari hesap nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Cari hesap, bir ürün ya da hizmet satışı yapan ve o ürün ve hizmeti alan kişinin para, mal, hizmet ve diğer hususlardan dolayı birbirlerindeki alacaklarını ayrı ayrı istemekten karşılıklı olarak vazgeçmesi ve bunları hesap kesim tarihinde ödemek üzere kaydettikleri hesap olarak işlev görmektedir.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class TicariFaturaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticari Fatura nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          ' Ticari Fatura, gönderici ve alıcı arasındaki bir satış sözleşmesi veya bir tür işlemdir. Ürünlerinizin gümrükten geçmesi için önemli bilgiler sağlar ve gümrük vergisi ve masrafları gibi devlete özgü ücretleri belirler.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class IhracatFaturasiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İhracat Faturası nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'İhracat faturası, satıcıların ülkesi dışındaki bir alıcıya ürün ya da hizmetlerinin satışını belgeleyen resmi ticari faturaya denir. Bu belge, satılan ürünlerin veya sunulan hizmetlerin detaylarını ve fiyatlarını içerir. Ayrıca alıcı ve satıcı arasındaki ticari işlemi kanıtlar niteliğe sahiptir.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class StokScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stok Türleri'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Ham madde Stoku'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HammaddeScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Yarı mamül Stoku'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => YarimamulScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Bitmiş Stok'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IhracatFaturasiScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Emniyet Stoku'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmniyetStokuScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Tampon Stoku'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TamponStokuScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Çevrim Stoku'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CevrimStokuScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
class HammaddeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ham madde Stoku nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          ' Hammadde Stoku: Değer Akışının başlangıcında tedarikçiden gelen bilgi veya mamül hammadde stoku olarak adlandırılır. Herhangi bir işlem görmemiş işletme veya ofise yeni girmiş her malzeme ve bilgi hammadde stoku olarak adlandırılabilir. İngilizce Raw Material olarak adlandırılır, Nadiren de olsa RM olarak kısaltılmış kullanımı da mevcuttur.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class YarimamulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yarı Mamül Stoku nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          ' Yarı Mamül (Prosesler Arası) Stoku: Değer Akışı boyunca prosesler arasında (veya uzun süren bir prosesin içinde) bitmiş ürüne dönmemiş; ancak hammaddeden dönüşmüş her bir bilgi veya malzeme yarı mamül olarak adlandırılır. Work In Process (WIP), Work in Progress (WIP) veya Semi-Finished Goods (SFG) olarak adlandırılır ve İngilizce baş harfleri ile kısaltılır.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class BitmisStokScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bitmiş Stok nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          ' Bitmiş (Ürün) Stok: Değer Akışının sonunda nihai müşteri talebini karşılamak üzere tamamlanmış her bir bilgi veya malzeme bitmiş stok olarak adlandırılır. Finished Goods olarak adlandırılır ve FG olarak kısaltılır.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class EmniyetStokuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emniyet Stoku nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          ' Emniyet Stoku: İlgili prosesin kabiliyeti-kalitesi, kullanılabilirliği, performansı dolayısıyla yeterli hız ve miktarda ürün veya bilgi üretemediği durumlarda ardıl prosese veya müşteriye teslimatı geciktirmemek için tutulan stoklardır. OEE (Toplam Ekipman Etkinliği) seviyesi emniyet stoklarının miktarını belirler. Yüksek OEE ile çalışan bir prosesin emniyet stokları daha düşüktür.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class TamponStokuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tampon Stoku nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          ' Tampon Stoku: Müşteri talebindeki ve satış tahminlerindeki sapmalar ile dalgalanmaları sönümlemek amacıyla tutulan stoklar tampon stoklarıdır. Tampon stok olmadığı zaman müşteri ve proses hızları arasındaki değişkenlikler dolayısıyla ardıl prosesler malzeme veya bilgi işleyemez duruma gelebilir. Tampon stoku için otoyolda aynı hızda ilerleyen ve aralarında takip mesafesi bırakması gereken araçlar örnek gösterilebilir. Öndeki aracın (ardıl proses) yapacağı ani bir frenin (talepteki dalgalanma) kazaya sebebiyet vermemesi için mutlaka takip mesafesi bırakılmalıdır.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class CevrimStokuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Çevrim Stoku nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          ' Çevrim Stoku: Belirli bir çevrim ile yenilenen ve belirli bir tüketim hızı olan stoktur. Çevrim stoku, öncül prosesin parti büyüklüklerine ve dolayısıyla bilgi ve malzemenin yenilenme sıklığına bağlı olarak artar veya azalır. Buna örnek olarak metro istasyonundaki bekleyen yolcular örnek gösterilebilir. Metro sefer sıklıkları artarsa (parti büyüklükleri azalırsa) durakta bekleyen ortalama insan sayısı azalır.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}


class karscreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kâr marjı nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Genel muhasebe terimleri arasında yer alan kar marjı, bir ürünün ya da hizmetin satışından elde edilen kar ile maliyet arasındaki farkın elde edilen gelire oranını gösteriyor. Kar marjını hesaplamak için elde ettiğiniz gelirden maliyetleri çıkartıp bulduğunuz rakamı gelire bölmeniz ve sonra 100 ile çarpmanız yeterli. Bu hesaplama sayesinde ticari faaliyetleriniz sonucunda elde ettiğiniz maddi başarıyı kolayca ölçümleyebilirsiniz.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class BilancoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bilanço nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Bir işletmenin belirli zaman aralıklarındaki mali durumunu belgeleyen bilanço, genelde çeyrek ve yılın sonunda hazırlanır. Çizelge şeklinde düzenlenen bilançoda işletmenin alacaklarına, borçlarına, bütün mal ve para varlıklarına yer verilir. Bilançoda ayrıca hissedarların yatırımları da görüntülenebilir.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class OzKaynakScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Özkaynak nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Öz kaynaklar, işletme sahibinin veya ortaklarının sermaye olarak verdikleri değerlerdir. Öz sermaye olarak da isimlendirilen bu terim, aynı zamanda ticari faaliyetler sonucunda sağlanan ve işletmeden henüz çekilmemiş karlardan oluşan unsurları da kapsar. Öz kaynakları hesaplamak için varlıklardan toplam borçları çıkarmak yeterlidir. Ortaya çıkan sonuç işletmenin net değeridir.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class VarlikScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Varlık nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Girişimcilerin bilmeleri gereken ön muhasebe terimleri arasında varlıklar da bulunuyor. Bu terim, işletme sahiplerince kontrol edilen ve gelecekte nakit akışı yaratması beklenen kaynakları tanımlamak için kullanılıyor. Varlıklar, bilançoda aktif ve pasif olmak üzere iki ayrı grup olarak görüntülenir. Aktif bölümde mevcut nakit, alacaklar, maddi taşınırlar ve taşınmazlar yer alır. Bu tür varlıkların edinilmesi için alınan borçlar ve işletmeye konan sermaye ise pasif bölümde gösterilir.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class MatrahScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matrah Türleri'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Advalorem Matrah'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdvaloScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Spesifik Matrah'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SpesifikScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
class AdvaloScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advalorem matrah nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          ' Advalorem matrah: Değer esasına dayalı olarak da adlandırılan bu matrah, ekonomik ve parasal unsurları içerir. Gelir Vergisi, Kurumlar Vergisi ve Katma Değer Vergisi bu kapsamdadır.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class SpesifikScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spesifik Matrah nedir?'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Spesifik matrah: Ödenecek verginin belirlenmesinde hesaba katılan değer, teknik ya da fiziki bir ölçüdür. Ağırlık, uzunluk, sayı, hacim ve yüz ölçümü gibi miktarları ifade eder. Bu matrahla hesaplananlar Motorlu Taşıt Vergisi, Emlak Vergisi ve Arsa Vergisi’dir. ',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class AmortismanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amortisman Yöntemleri'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Normal Amortisman Yöntemi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NormalScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Azalan Bakiyeler Yöntemi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AzalanBakiyeScreen()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.orange[100],
            leading: Icon(Icons.arrow_right,color: Colors.orange,),
            title: Text('Fevkalade Amortisman Yöntemi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FevkaladeScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
class NormalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Normal Amortisman Yöntemi'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          ' Normal amortisman yöntemi: Diğer adıyla eşit miktarlı amortisman, amortisman tutarı varlığın tutarına sabit bir amortisman nispeti uygulanarak veya tutar iktisadi ömre bölünerek hesaplanır. ',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class AzalanBakiyeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Azalan Bakiyeler Yöntemi'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Azalan bakiyeler yöntemi: Diğer adıyla hızlandırılmış amortisman yönteminde normal amortismana nazaran 2 kat hızlı gider gösterilir. Amortisman hesabı, alış tutarından değil, yılbaşına devreden net defter değerinden hesaplanır.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
class FevkaladeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fevkalade Amortisman Yöntemi'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Fevkalade amortisman yöntemi: Bu yöntem yangın, deprem, sel vb. doğal afet durumlarında varlıkların değerinin kısmen veya tamamen kaybolması durumunda uygulanmaktadır. Bu gibi durumlarda ilgili birimlere başvuru yaparak varlıkların belli bir bölümünün amortize edilmesi istenmektedir.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}





