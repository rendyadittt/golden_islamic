import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:golden_islamic/color.dart';

class ProfilPageParent extends StatefulWidget {
  User? user;
  ProfilPageParent({@required this.user});

  @override
  _ProfilPageParentState createState() => _ProfilPageParentState();
}

class _ProfilPageParentState extends State<ProfilPageParent> {
  @override
  Widget build(BuildContext context) {
    return ProfilePage(
      user: widget.user,
    );
  }
}

class ProfilePage extends StatefulWidget {
  User? user;
  ProfilePage({@required this.user});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor2,
      body: ListView(
        children: [
          buildIconSetting(),
          Padding(
            padding: const EdgeInsets.only(top: 52),
            child: Column(
              children: [
                buildContainerProfile(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildIconSetting() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              decoration: new BoxDecoration(
                color: MyColor.greenLow,
                borderRadius: BorderRadius.circular(23),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.settings, color: MyColor.greenDof),
              )),
        ],
      ),
    );
  }

  Widget buildContainerProfile() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Column(
            children: [
              ClipRRect(
                child: CachedNetworkImage(
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  imageUrl: widget.user!.photoURL.toString(),
                  imageBuilder: (context, imageProvider) => Container(
                    width: MediaQuery.of(context).size.height / 9.0,
                    height: MediaQuery.of(context).size.height / 9.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                child: Text(
                  widget.user!.displayName.toString(),
                  style: TextStyle(
                      fontFamily: 'PoppinsExtraBold',
                      fontSize: 16,
                      color: Colors.grey[800]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  widget.user!.email.toString(),
                  style: TextStyle(
                      fontFamily: 'PoppinsMedium',
                      fontSize: 13,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 23),
          child: Container(
            width: double.infinity,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(42),
                topLeft: Radius.circular(42),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 32, right: 32, top: 10, bottom: 10),
                          child: Row(
                            children: [
                              Container(
                                decoration: new BoxDecoration(
                                  color: MyColor.backgroundColor2,
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(9),
                                  child: Icon(
                                    Icons.support_agent,
                                    size: 27,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  "Bantuan",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsMedium',
                                      fontSize: 13,
                                      color: Colors.grey),
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.chevron_right_rounded)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 32, right: 32, top: 10, bottom: 10),
                          child: Row(
                            children: [
                              Container(
                                decoration: new BoxDecoration(
                                  color: MyColor.backgroundColor2,
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(9),
                                  child: Icon(
                                    Icons.menu_book_rounded,
                                    size: 27,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  "Syarat dan Ketentuan",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsMedium',
                                      fontSize: 13,
                                      color: Colors.grey),
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.chevron_right_rounded)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 32, right: 32, top: 10, bottom: 10),
                          child: Row(
                            children: [
                              Container(
                                decoration: new BoxDecoration(
                                  color: MyColor.backgroundColor2,
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(9),
                                  child: Icon(
                                    Icons.apartment,
                                    color: Colors.grey[700],
                                    size: 27,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  "Tentang Kami",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsMedium',
                                      fontSize: 13,
                                      color: Colors.grey),
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.chevron_right_rounded)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 32, right: 32, top: 10, bottom: 10),
                          child: Row(
                            children: [
                              Container(
                                decoration: new BoxDecoration(
                                  color: MyColor.backgroundColor2,
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(9),
                                  child: Icon(
                                    Icons.star,
                                    size: 27,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  "Ulas Kami",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsMedium',
                                      fontSize: 13,
                                      color: Colors.grey),
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.chevron_right_rounded)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
