import 'package:flutter/material.dart';

import '../../../../helper/textstyle.dart';

class KonvCriteria extends StatefulWidget {
  const KonvCriteria({Key? key}) : super(key: key);

  @override
  State<KonvCriteria> createState() => _KonvCriteriaState();
}

class _KonvCriteriaState extends State<KonvCriteria> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            child: Text('Kriterien', style: Style.AppBarMainFont)),
        backgroundColor: const Color(0xFFA81619),
        leading: IconButton(
          icon: const Icon(Icons.clear_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              Text('Kriterien',
                  style: Style.HomePageTitleFont.merge(
                      TextStyle(color: Theme.of(context).primaryColor))),
            ],
          ),
          const Divider(height: 5, thickness: 1),
          SizedBox(height: TopSpacing),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'a)',
                    style: Style.FlowingTextFont.merge(
                        TextStyle(color: Theme.of(context).primaryColor)),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      ' Jede beschränkte und monoton wachsende Folge konvergiert.\n Analog: Jede beschränkte und monoton fallende Folge konvergiert.',
                      style: Style.FlowingTextFont.merge(
                          TextStyle(color: Theme.of(context).primaryColor)),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
              SizedBox(height: BottomSpacing,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'b)',
                    style: Style.FlowingTextFont.merge(
                        TextStyle(color: Theme.of(context).primaryColor)),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      ' Das Produkt einer beschränkten Folge und einer Nullfolge ist eine Nullfolge.',
                      style: Style.FlowingTextFont.merge(
                          TextStyle(color: Theme.of(context).primaryColor)),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: BottomSpacing),
        ],
      ),
    );
  }
}
