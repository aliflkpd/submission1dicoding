import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission1dicoding/models/babylist.dart';

class NftLists extends StatelessWidget {
  const NftLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NFT LISTS',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Retro',
            fontSize: 14,
          ),
        ),
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Back',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
            Container(
              color: Colors.black,
              child: NftDetails(size: size),
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

class NftDetails extends StatelessWidget {
  const NftDetails({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final BabyDomination babies = babyList[index];
        return Column(
          children: [
            Card(
              color: Color.fromARGB(54, 0, 0, 0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 3,
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 109, 0),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        height: 22,
                                        width: 22,
                                        image: AssetImage(babies.ethereumImage),
                                      ),
                                      Text(
                                        babies.priceBaby,
                                        style: TextStyle(fontFamily: 'Retro'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(babies.babyImage),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(color: Colors.black12, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              babies.baby,
                              style: const TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Retro',
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              babies.descriptionBaby,
                              style: const TextStyle(
                                  fontFamily: 'Mario',
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FavNft(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
      itemCount: babyList.length,
    );
  }
}

bool Liked = false;

class FavNft extends StatefulWidget {
  const FavNft({
    Key? key,
  }) : super(key: key);

  @override
  State<FavNft> createState() => _FavNftState();
}

class _FavNftState extends State<FavNft> {
  @override
  _FavNftState createState() => _FavNftState();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(
            Liked ? Icons.favorite : Icons.favorite_outline,
            color: Color.fromARGB(255, 255, 109, 0),
          ),
          onPressed: () {
            setState(() {
              Liked = !Liked;
            });
          },
        ),
        Visibility(
          visible: Liked,
          child: const Text(
            'Liked',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Retro',
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        )
      ],
    );
  }
}
