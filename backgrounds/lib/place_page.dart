import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlacePage extends StatefulWidget {
  bool liked = false;
  @override
  State<StatefulWidget> createState() => PlacePageState();
}

class PlacePageState extends State<PlacePage> {
  @override
  Widget build(BuildContext context) {
    Widget title = Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Oficinas Lobster",
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    child: Padding(
                      child: Text(
                        "Elsey, Noruega",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      padding: EdgeInsets.only(top: 3),
                    ),
                  ),
                ],
              ),
            ),
            Icon(widget.liked ? Icons.star : Icons.star_border,
                color: Colors.red),
            Text("41"),
          ],
        ),
      ),
    );
    Widget buttons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _buildButtonsColumn(Colors.blue, Icons.call, "CALL"),
        _buildButtonsColumn(Colors.blue, Icons.near_me, "ROUTE"),
        _buildButtonsColumn(Colors.blue, Icons.share, "SHARE")
      ],
    );
    Widget description = Padding(
      padding: EdgeInsets.all(20),
      child: Text(
          "In connection with the Transaction, it is understood that each Disclosing Party and its Representatives (as such term is defined in this Section 1) may furnish the  other party or its affiliated companies (any of them a “Receiving Party”) and its Representatives with certain information concerning such Disclosing Party that is nonpublic, confidential and/or proprietary in nature, including but not limited written, oral, tangible or intangible, graphical information or contained in written media, electronic or electromagnetic, tapes, records, diskettes, or any other, that is identified clearly by the Disclosing Party, as confidential. The confidential information includes, but is not limited to, design, prices, drawings, software, data, prototypes, technical information, financial and commercial information relative to customers’ names or potential associates, business proposals, organizational structures, society and corporation, composition, reports, plans, market projections, and any other industrial information, formulas, mechanisms, process of analysis, registered"),
    );
    Widget bodyPortrait = ListView(
      children: <Widget>[
        Image.asset(
          "assets/img/computer.jpg",
          height: 240,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        title,
        buttons,
        description
      ],
    );

    Widget bodyLandscape = Row(
      children: <Widget>[
        Image.asset(
          "assets/img/computer.jpg",
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
          width: 280,
        ),
        Expanded(
          child: ListView(
            children: <Widget>[title, buttons, description],
          ),
        )
      ],
    );

    return Scaffold(
        appBar: AppBar(title: Text("Offices")),
        body: OrientationBuilder(builder: (context, orientation) {
          return orientation == Orientation.landscape
              ? bodyLandscape
              : bodyPortrait;
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            widget.liked = !widget.liked;
            setState(() {});
          },
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ));
  }

  Widget _buildButtonsColumn(Color color, IconData iconData, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          iconData,
          color: color,
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(color: color),
          ),
        )
      ],
    );
  }
}
