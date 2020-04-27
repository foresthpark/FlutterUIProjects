import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static const imageOne =
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.LyYPcRu2C_VHtxsIeNaYXwHaLI%26pid%3DApi&f=1";
  static const imageTwo =
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F2.bp.blogspot.com%2F-DCmpMnOvxHw%2FTpvw0U00XrI%2FAAAAAAAAAh0%2F9uBylHwJTN8%2Fs1600%2F_MG_3124%2Bkopikleiner.jpg&f=1&nofb=1";
  static const imageThree =
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fe%2Fe1%2FFeiFeiSunDianevonFurstenbergSS14ChristopherMacsurak.jpg%2F1200px-FeiFeiSunDianevonFurstenbergSS14ChristopherMacsurak.jpg&f=1&nofb=1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          customAppBar(),
          productsHolder(),
        ],
      ),
    ));
  }

  Widget customAppBar() {
    return Container(
      color: Colors.pinkAccent,
      padding: EdgeInsets.fromLTRB(24, 36, 24, 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.menu,
                size: 32,
                color: Colors.white,
              ),
              Icon(
                Icons.shopping_cart,
                size: 32,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: 28,
          ),
          _searchBox(),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              menuText(Icons.check_box, "Upp Stores"),
              menuText(Icons.filter_list, "Filter"),
              menuText(Icons.arrow_upward, "Popularity"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _searchBox() {
    return TextField(
      textAlign: TextAlign.left,
      controller: null,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "Women Dresses",
        hintStyle: TextStyle(fontSize: 18, color: Colors.black12),
        prefixIcon: Icon(
          Icons.search,
          size: 26,
          color: Colors.grey[700],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36),
          borderSide: BorderSide(width: 0, style: BorderStyle.none),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(16),
        fillColor: Colors.white,
      ),
    );
  }

  Widget menuText(icon, title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 22,
          color: Colors.grey[100],
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.grey[100],
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget productsHolder() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 24, left: 24, bottom: 24),
      margin: EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 5,
          spreadRadius: 4,
        )
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Tinzin's Ruffle Wrap",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.brown[900]),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Gurugram, sector 28 . 3.4km away',
            style: TextStyle(
                color: Colors.brown[600],
                fontWeight: FontWeight.w400,
                fontSize: 15),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              shopRatings(),
              Text("192 Reviews",
                  style: TextStyle(
                      color: Colors.brown[800],
                      fontWeight: FontWeight.w500,
                      fontSize: 15))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                singleProduct(imageOne),
                singleProduct(imageTwo),
                singleProduct(imageThree),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget shopRatings() {
    return RatingBar(
      onRatingUpdate: null,
      ignoreGestures: true,
      itemSize: 24,
      initialRating: 4,
      minRating: 1,
      direction: Axis.horizontal,
      itemCount: 5,
      itemPadding: EdgeInsets.only(left: 4),
      itemBuilder: (context, _) {
        return Icon(
          Icons.star,
          color: Colors.brown[600],
        );
      },
    );
  }

  Widget singleProduct(imageUrl) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(left: 8, right: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Image.network(
              imageUrl,
              height: 300,
              width: 200,
            ),
            margin: EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[300]),
          )
        ],
      ),
    );
  }
}
