import 'package:en_hack/config/themes.dart';
import 'package:en_hack/screens/business_association/guild/guild_screen.dart';
import 'package:flutter/material.dart';

class BusinessAssociationTab extends StatefulWidget {
  const BusinessAssociationTab({Key? key}) : super(key: key);

  @override
  State<BusinessAssociationTab> createState() => _BusinessAssociationTabState();
}

class _BusinessAssociationTabState extends State<BusinessAssociationTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            _CardBusinessAssociation(
              associationName: "Cafe Owners Association",
              slots: "10 of 15",
              imagePath: "assets/images/business_association/bus_assoc_pic_1.png",
              location: "Visayas",
              funcViewDetail: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GuildScreen(),
                  ),
                );
              },
            ),
            _CardBusinessAssociation(
              associationName: "Cake Makers Guild",
              organization: "",
              slots: "10 of 15",
              imagePath: "assets/images/business_association/bus_assoc_pic_2.png",
              location: "Metro Manila",
              funcViewDetail: () {
              },
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

class _CardBusinessAssociation extends StatelessWidget {
  final String slots;
  final String associationName;
  final String organization;
  final String imagePath;
  final Function? funcViewDetail;
  final String location;

  const _CardBusinessAssociation({
    this.slots = "N/A",
    this.associationName = "N/A",
    this.organization = "N/A",
    this.imagePath = "assets/images/cake_logo_pic_1.png",
    this.funcViewDetail,
    this.location = "N/A",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        elevation: 5.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(imagePath),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    associationName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: ColorConstant.primaryColor,
                    ),
                  ),
                 /* const SizedBox(height: 3.0),
                  Text(
                    organization,
                    style: const TextStyle(fontSize: 16.0),
                  ),*/
                  const SizedBox(height: 5.0),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: ColorConstant.primaryColor,
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        "Location: $location",
                        style:
                            TextStyle(color: ColorConstant.primaryColor, fontWeight: FontWeight.bold, fontSize: 13.0),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        color: ColorConstant.primaryColor,
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        "Slots: $slots",
                        style: TextStyle(color: ColorConstant.primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View Details",
                          style: TextStyle(
                              fontSize: 13.0, color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold
                              //fontStyle: FontStyle.italic,
                              ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            side: BorderSide(color: Theme.of(context).primaryColor),
                          ),
                          padding: const EdgeInsets.all(0.0),
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                        child: const Text(
                          "Join",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () => funcViewDetail!(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
