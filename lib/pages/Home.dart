import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission1dicoding/pages/NftLists.dart';
import 'package:submission1dicoding/pages/Profile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 109, 0),
        title: Center(
            child:
                Image.asset('images/title.png', height: 55, fit: BoxFit.cover)),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'images/NEWBANNER2.jpg',
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CupertinoSearchTextField(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '  Recent Drops',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Retro',
                              ),
                            ),
                            TextButton(
                              style: ButtonStyle(),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const NftLists();
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                'More',
                                style: TextStyle(
                                  fontFamily: 'Retro',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'images/alifwhite.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'images/evos.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'images/pinkninjagirl.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'images/datamine.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'images/gravityninja.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'images/akashi.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        // const SizedBox(
                        //   width: 8.0,
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              // height: 500,
              padding: EdgeInsets.all(10),
              color: Color.fromARGB(255, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('   Baby Of The Day',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Retro',
                            )),
                        Padding(padding: EdgeInsets.all(10)),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 80, 198, 216)
                                    .withOpacity(0.4),
                                spreadRadius: 8,
                                blurRadius: 5,
                                offset: Offset(2, 2),
                              )
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(3),
                            child: Image.asset(
                              'images/pandkarafuru-nojacket.jpg',
                              height: 235,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 255, 109, 0),
                            ),
                          ),
                          onPressed: null,
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'images/eth.png',
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '24.00',
                                  style: TextStyle(
                                    fontFamily: 'Retro',
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 25),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color.fromARGB(255, 84, 84, 84).withOpacity(0.4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Baby KARAFURU',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'Retro',
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Our brand new character with Karafuru as our collaboration partner in our character making project.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Retro',
                            ),
                          ),
                          SizedBox(height: 35),
                          Container(
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      'images/karafuru.png',
                                      fit: BoxFit.contain,
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Text(
                                    'X',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Retro',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      'images/icontxp.png',
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),

            Container(
              height: 70,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'images/footer.jpg',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
