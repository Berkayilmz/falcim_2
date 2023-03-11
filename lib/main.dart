import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GÜNÜN FALI'),
          centerTitle: true,
          backgroundColor: Colors.purple[600],
        ),
        body: Fal(),
        backgroundColor: Colors.purple[200],
      ),
    );
  }
}

class Fal extends StatefulWidget {
  const Fal({super.key});

  @override
  State<Fal> createState() => _FalState();
}

class _FalState extends State<Fal> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN!',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  int falSecim = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
            child: Image.asset(
              'assets/falci.png',
              width: 150,
              height: 150,
            ),
          ),
          TextButton(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.favorite, color: Colors.redAccent),
                title: Text(
                  'AŞK DURUMU',
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                falSecim = Random().nextInt(5) + 1;
              });
            },
          ),
          TextButton(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                iconColor: Colors.green,
                title: Text(
                  'PARA DURUMU',
                  style: TextStyle(fontSize: 15, color: Colors.green),
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                falSecim = Random().nextInt(5) + 6;
              });
            },
          ),
          TextButton(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.explore,
                  color: Colors.blue,
                ),
                title: Text(
                  'GÜNLÜK TAVSİYE',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                falSecim = Random().nextInt(5) + 11;
              });
            },
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
            width: 335,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                yanitlar[falSecim],
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
