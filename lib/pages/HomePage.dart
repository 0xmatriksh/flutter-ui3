import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Wallets',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey[100],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(
                            Icons.create_new_folder,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.black,
                          radius: 20,
                        ),
                        title: Text(
                          'Total Wallet Balance',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        trailing: Text(
                          'USD',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '\$39.584',
                          style: TextStyle(color: Colors.black, fontSize: 28.0),
                        ),
                        trailing: Container(
                          child: Center(
                            child: Text(
                              '+3.55%',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          width: 55,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green[700],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          '7.251332 BTC',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 2.3),
                        child: Icon(Icons.keyboard_arrow_down_outlined),
                      ),
                    ],
                  ),
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 28),
                buildCard('assets/bitcoin.png', '3.874020 BTC', '\$36,441',
                    '\$199.153', '4.32%'),
                SizedBox(height: 16),
                buildCard('assets/etherium.png', '1.458020 ETH', '\$2,441',
                    '\$59.684', '5.32%'),
                SizedBox(height: 16),
                buildCard('assets/doge.png', '0.584020 DGC', '\$0.75',
                    '\$0.174', '1.32%'),
                SizedBox(height: 16),
                buildCard('assets/litecoin.png', '0.984680 DGC', '\$2.46',
                    '\$1.204', '3.46%'),
                SizedBox(height: 16),
                buildCard('assets/litecoin.png', '0.984680 DGC', '\$2.46',
                    '\$1.204', '3.46%'),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.create_new_folder,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  Widget buildCard(String imageUrl, String value, String inDollar,
      String changeinnum, String change) {
    return Card(
        child: ListTile(
      leading:
          CircleAvatar(radius: 20, backgroundImage: AssetImage('$imageUrl')),
      title: Text('$value', style: TextStyle(fontSize: 18)),
      subtitle: Text('$inDollar'),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$changeinnum',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            '$change',
            style: TextStyle(color: Colors.green, fontSize: 14),
          )
        ],
      ),
    ));
  }
}
