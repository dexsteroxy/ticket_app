import 'package:flutter/material.dart';
import 'package:my_first_app/base/res/image_base_path.dart';
import 'package:my_first_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8.0),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel["image"]}"
                ),
              ),
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["place"],
              style: AppStyles.heading1.copyWith(color: Colors.white),
            ),
          ),

          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["destination"],
              style: AppStyles.normalheading3.copyWith(color: Colors.indigo),
            ),
          ),

          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel["price"]}/night",
              style: AppStyles.heading1.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
