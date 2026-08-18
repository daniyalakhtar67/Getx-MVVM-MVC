import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvc/res/colors/app_colors.dart';

class GeneralExceptionwidget extends StatefulWidget {
  final VoidCallback onpress;
  const GeneralExceptionwidget({super.key,required this.onpress});

  @override
  State<GeneralExceptionwidget> createState() => _GeneralExceptionwidgetState();
}

class _GeneralExceptionwidgetState extends State<GeneralExceptionwidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child:Column(
        children: [
          SizedBox(height: height*1.5),
          Icon(Icons.cloud_off,color: AppColors.primaryColor),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(child: Text('general_exception'.tr)),
          ),
          InkWell(
            onTap: (){widget.onpress();},
            child:Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('Retry',style: Theme.of(context).textTheme.titleMedium),
            ),
          )
        ],
      ),
    );
  }
}
