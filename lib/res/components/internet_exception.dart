import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvc/res/colors/app_colors.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key});

  @override
  State<InternetExceptionWidget> createState() => _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        SizedBox(height: height*1.5),
        Icon(Icons.cloud_off,color: AppColors.redColor),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(child: Text('internet_exception'.tr)),
        ),
        SizedBox(height: height*1.5),
        Container(
          height: 44,
          width: 160,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(child: Text('Retry',style: Theme.of(context).textTheme.titleMedium)),
        )
      ],
    ),
    );
  }
}
