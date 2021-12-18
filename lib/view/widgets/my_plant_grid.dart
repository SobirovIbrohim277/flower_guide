import 'package:flower_guide/core/constants/icons.dart';
import 'package:flower_guide/core/constants/imports.dart';
import 'package:flower_guide/provider/plant_card_provider.dart';
import 'package:flower_guide/view/widgets/my_plant_card.dart';
import 'package:flutter/material.dart';

class MyPlantGrid extends StatelessWidget {
  const MyPlantGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isFavourite = Provider.of<PlantCardProvider>(context, listen: false).isFavourite;

    return GridView.builder(
      physics:const BouncingScrollPhysics(),
      itemCount: 12,
      padding: EdgeInsets.fromLTRB(getUniqueW(16),0, getUniqueW(16),getUniqueW(16),),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.6,
        mainAxisSpacing: getUniqueH(16),
        crossAxisSpacing: getUniqueW(16),
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index)  { return  MyPlantCard();}
    );
  }
}
