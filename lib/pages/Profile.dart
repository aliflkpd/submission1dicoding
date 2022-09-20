import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 109, 0),
        title: Center(
          child: Text(
            'profile',
            style: TextStyle(
              fontFamily: 'Mario',
              fontSize: 35,
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Image(
                    height: 100,
                    width: 100,
                    image: AssetImage('images/wallet.png')),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Install a wallet',
                style: TextStyle(
                  fontFamily: 'Retro',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Connect to any WalletConnect supported wallet to securely store your digital goods and cryptocurrencies',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Retro',
                  fontSize: 9,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Color(0xFFFFFFFF)),
                          left: BorderSide(color: Color(0xFFFFFFFF)),
                          right: BorderSide(color: Color(0xFFFFFFFF)),
                          bottom: BorderSide(color: Color(0xFFFFFFFF)),
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/metamask.png',
                              height: 35,
                              width: 35,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              ' Metamask',
                              style: TextStyle(
                                fontFamily: 'Retro',
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Color(0xFFFFFFFF)),
                          left: BorderSide(color: Color(0xFFFFFFFF)),
                          right: BorderSide(color: Color(0xFFFFFFFF)),
                          bottom: BorderSide(color: Color(0xFFFFFFFF)),
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/coinbby.png',
                              height: 35,
                              width: 35,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              ' Baby Coins',
                              style: TextStyle(
                                fontFamily: 'Retro',
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Color(0xFFFFFFFF)),
                          left: BorderSide(color: Color(0xFFFFFFFF)),
                          right: BorderSide(color: Color(0xFFFFFFFF)),
                          bottom: BorderSide(color: Color(0xFFFFFFFF)),
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/trustwallet.png',
                              height: 30,
                              width: 30,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              '  Trust Wallet',
                              style: TextStyle(
                                fontFamily: 'Retro',
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: const Text(
                        'More Options',
                        style: TextStyle(
                          fontFamily: 'Retro',
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
