import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screenify/constants.dart';

class DesignerPortfolio extends StatefulWidget {
  String assetFolder = "$profilescreens/designerportfolio/";

  Map<String, dynamic> user = {
    'Name': 'Taosif Jamal',
    'ProfileImage': 'profilepic.jpg',
    'CoverImage': 'cover.jpg',
    'Location': 'Gujarat, India',
    'Profession': 'Graphic Designer',
    'About': 'Hi there 👋 I\'m a Gujarat Based Graphic designer, focused towards creating right feels.',
    'Social': [
      {'Icon': Icons.messenger, 'Platform': 'Message', 'Handle': 'Message/Taosif7'},
      {'Icon': Icons.alternate_email_outlined, 'Platform': 'Email', 'Handle': 'mailto:Taosif7@gmail.com'},
      {'Icon': FontAwesomeIcons.dribbble, 'Platform': 'Dribbble', 'Handle': 'Dribbble.com/Toasif7'},
      {'Icon': FontAwesomeIcons.facebook, 'Platform': 'Facebook', 'Handle': 'Facebook.com/Taosif7'},
      {'Icon': FontAwesomeIcons.instagram, 'Platform': 'Instagram', 'Handle': 'Instagram.com/Taosif7'},
      {'Icon': FontAwesomeIcons.linkedin, 'Platform': 'LinkedIn', 'Handle': 'Linkedin.com/Taosif7'},
    ]
  };

  List<Map<String, dynamic>> featuredPosts = [
    {
      'Title': 'Digital Paint',
      'Thumb': 'digital_paint.jpg',
    },
    {
      'Title': 'Abstract Shape',
      'Thumb': 'abstract_shape.jpg',
    },
    {
      'Title': 'Dark Strokes',
      'Thumb': 'dark_strokes.jpg',
    },
    {
      'Title': 'Green Energy',
      'Thumb': 'green_energy.jpg',
    },
    {
      'Title': 'Fast Lines',
      'Thumb': 'fast_lines.jpg',
    },
  ];

  List<Map<String, dynamic>> userActivities = [
    {
      'Icon': Icons.done_all,
      'Title': 'Completed Abstract Shape',
      'Time': 'Today',
    },
    {
      'Icon': Icons.edit,
      'Title': 'Worked on Abstract Shape',
      'Time': 'Yesterday',
    },
    {
      'Icon': Icons.done_all,
      'Title': 'Completed Fast Lines',
      'Time': '2 Days Ago',
    },
    {
      'Icon': Icons.fiber_new_rounded,
      'Title': 'Started Working on Abstract Shape',
      'Time': '3 Days Ago',
    },
    {
      'Icon': Icons.edit,
      'Title': 'Worked on Fast Lines',
      'Time': '4 Days Ago',
    },
  ];

  // Average colour of the Cover Image
  Color ProfieAccentColour = Colors.lightGreen[700];

  @override
  _DesignerPortfolioState createState() => new _DesignerPortfolioState();
}

class _DesignerPortfolioState extends State<DesignerPortfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 280.0,
              floating: false,
              leading: Container(),
              pinned: true,
              backgroundColor: widget.ProfieAccentColour,
              shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
              flexibleSpace: ClipRRect(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                child: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    centerTitle: true,
                    title: Text(widget.user['Name'],
                        style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold)),
                    background: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                              image: AssetImage(
                                widget.assetFolder + widget.user['CoverImage'],
                              ),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          SizedBox(height: 70),
                          Container(
                            height: 120,
                            width: 120,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              widget.assetFolder + widget.user['ProfileImage'],
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            widget.user['Profession'],
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: TextSpan(
                            children: [
                              WidgetSpan(child: Icon(Icons.location_on, size: 18, color: Colors.white)),
                              TextSpan(text: " " + widget.user['Location'], style: TextStyle(fontSize: 16)),
                            ],
                          ))
                        ],
                      ),
                    )),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    boxShadow: [BoxShadow(offset: Offset(0, 5), blurRadius: 10, color: Colors.black12)],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List<Widget>.generate(widget.user['Social'].length, (index) {
                        return new FlatButton.icon(
                          icon: Icon(widget.user['Social'][index]['Icon']),
                          label: Text(widget.user['Social'][index]['Platform']),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(20))),
                        );
                      })
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Text(
                  widget.user['About'],
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                child: Text(
                  "Featured Work",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: widget.ProfieAccentColour),
                  textAlign: TextAlign.start,
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: List<Widget>.generate(widget.featuredPosts.length, (index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: ClipRRect(
                            child: Material(
                              child: Ink.image(
                                image: AssetImage(widget.assetFolder + widget.featuredPosts[index]['Thumb']),
                                fit: BoxFit.cover,
                                child: InkWell(onTap: () {}, splashColor: widget.ProfieAccentColour.withOpacity(0.1)),
                              ),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          margin: EdgeInsets.all(10),
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              shape: BoxShape.rectangle,
                              boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 5)]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(widget.featuredPosts[index]['Title']),
                        )
                      ],
                    );
                  }),
                ),
              ),
              ListTile(
                title: Text("See all works",
                    style: TextStyle(color: widget.ProfieAccentColour, fontSize: 18, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_right_alt_outlined, color: widget.ProfieAccentColour),
                onTap: () {},
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 40, bottom: 20),
                child: Text(
                  "Activities this week",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: widget.ProfieAccentColour),
                  textAlign: TextAlign.start,
                ),
              ),
              ...List<Widget>.generate(widget.userActivities.length, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Icon(widget.userActivities[index]['Icon'], color: Colors.white, size: 16),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(shape: BoxShape.circle, color: widget.ProfieAccentColour),
                            margin: EdgeInsets.only(right: 10),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.userActivities[index]['Title']),
                              Text(widget.userActivities[index]['Time'],
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
                            ],
                          )
                        ],
                      ),
                      if (index != widget.userActivities.length - 1)
                        Container(
                          height: 15,
                          width: 3,
                          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                          color: widget.ProfieAccentColour,
                        )
                    ],
                  ),
                );
              }),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: Text(
                  "No Graphics on this page are mine",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
