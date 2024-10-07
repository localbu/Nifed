import 'package:flutter/material.dart';
import 'package:nifed/constant.dart';
import 'package:nifed/pages/detail/components/card_facility.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              bgAndLabel(context),
              SizedBox(
                height: 30,
              ),
              tittle(),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow.shade600,),
                  SizedBox(width: 6,),
                  Text(
                    '4.5',
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 12
                    ),
                  ),
                  SizedBox(width: 6,),
                  Text(
                    '( 355 Viewers )',
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 12
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              expandedTextShowMore(),
              SizedBox(
                height: 10,
              ),
              facilitySection(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row facilitySection() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFacility(icon: Icons.electric_bolt, text: 'electiroc',),
                CardFacility(icon: Icons.bed_outlined, text: 'Hotel',),
                CardFacility(icon: Icons.wifi, text: 'Wifi',),
                CardFacility(icon: Icons.schedule, text: 'Everiday')
              ],
            );
  }

  Column expandedTextShowMore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: isExpanded ? 350 : 100,
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum., Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () => setState(() {
            isExpanded = !isExpanded;
          }),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              Text(
                isExpanded ? "Show Less" : "Show More",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: kPrimaryColor),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row tittle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Product Name",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        Text(
          'Show Map',
          style: TextStyle(
              fontSize: 12,
              color: kPrimaryLightColor,
              fontWeight: FontWeight.w800),
        )
      ],
    );
  }

  Stack bgAndLabel(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset('assets/img/ampera.png'),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 4, 8),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: kSecondaryColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: -15,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite,
                color: Colors.redAccent,
              ),
            ),
          ),
        )
      ],
    );
  }
}
