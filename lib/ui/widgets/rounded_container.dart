import 'package:flutter/material.dart';
import 'package:weather/core/constants/colors.dart';
import 'package:weather/core/utils/helper_widgets.dart';

class RoundedContainer extends StatefulWidget {

  final Color? color;
  final String title;
  final String? displayedValue;
  final String icon;

  RoundedContainer({Key? key, this.color, required this.title, this.displayedValue,required this.icon}) : super(key: key);

  @override
  State<RoundedContainer> createState() => _RoundedContainerState();
}

class _RoundedContainerState extends State<RoundedContainer> {
  
  final TextStyle headerTextStyle = const TextStyle(fontSize: 15,color: mainColor,fontWeight: FontWeight.w600);
  final TextStyle valueTextStyle = const TextStyle(fontSize: 20,fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.height * 0.2,

      padding: const EdgeInsets.all(5),
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          Image(image: AssetImage(widget.icon),height: MediaQuery.of(context).size.height * 0.05,width: MediaQuery.of(context).size.width * 0.2),
          addVerticalSpace(MediaQuery.of(context).size.height * 0.015),
          Text(widget.title,maxLines: 1,overflow: TextOverflow.ellipsis,style: headerTextStyle),
          addVerticalSpace(MediaQuery.of(context).size.height * 0.015),
          Text(widget.displayedValue ?? '10 м/c',maxLines: 1,overflow: TextOverflow.ellipsis,style: valueTextStyle)

        ],
      ),
    );
  }
}
