import 'package:flutter/material.dart';
import '../font_style.dart';
import 'package:faker/faker.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
    
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var faker = new Faker();
  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder (builder: (context)=> IconButton(
            icon: Icon(Icons.menu), 
            onPressed: () => Scaffold.of(context).openDrawer(),
            )),
          title: Text('Home'),
          actions: const [
            Icon(Icons.favorite),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            ),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Colors.blue[500],
          shadowColor: Colors.blue[900],
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ChatItem(faker.person.name());
          },
        ),
        drawer: _buildDrawer(),
      );
  }

  Widget _buildDrawer() {
    return SizedBox(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image(image: AssetImage('assets/images/fak.png')),
              accountName: Text('didinsibua'),
              accountEmail: Text('didin@app.com'),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2016/04/24/20/52/laundry-1350593_960_720.jpg"), 
                    fit: BoxFit.cover
                  )
                ),
            ),
            ListTile( leading: Icon(Icons.home), title: Text("Beranda"), onTap: (){},),
            ListTile( leading: Icon(Icons.people), title: Text("Pegawai"), onTap: (){},), 
            ListTile( leading: Icon(Icons.money), title: Text("Transaksi"), onTap: (){},), 
            Divider(),
            ListTile( leading: Icon(Icons.emoji_emotions), title: Text("Profil"), onTap: (){},), 
            ListTile( leading: Icon(Icons.info), title: Text("Tentang"), onTap: (){},), 
          ],
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String title;
  final Widget imageUrl = Image(image: AssetImage('assets/images/fak.png'));
  final String subTitle = 'this is subtitle text lorem Saat Anda menghapus cadangan, Cadangan iCloud untuk iPhone, iPad, atau iPod touch juga dimatikan. Anda dapat menyalakan kembali Cadangan iCloud di pengaturan iCloud pada perangkat.';

  ChatItem(this.title);

  @override
  Widget build(BuildContext context) {
    return ListTile(
              title: Text(title),
              subtitle: Text(
                subTitle,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(
                child: imageUrl,
              ),
              trailing: Text("10:00 PM"),
              // tileColor: Colors.amber,
    );
  }
}
