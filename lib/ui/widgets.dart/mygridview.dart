import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class MGridView extends StatefulWidget {
  MGridView({super.key});

  @override
  State<MGridView> createState() => _MGridViewState();
}

class _MGridViewState extends State<MGridView> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 3,
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 30,
      ),
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(2),
        height: 442,
        width: 156,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 90,
                  width: double.infinity,
                  child: Image.asset('assets/images/Image.jpg',
                      fit: BoxFit.contain),
                ),
              ),
            ),
            const Text('Keripik Pisang'),
            const Text('Rp. 30.000'),
            Expanded(
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Text('4.6'),
                  const Text('86 Reviews'),
                  PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    // Callback that sets the selected popup menu item.
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Item 1'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Item 2'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Item 3'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
