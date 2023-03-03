import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session_reusable/ui/widgets.dart/mygridview.dart';
import 'package:session_reusable/ui/widgets.dart/test.dart';

class Session extends StatefulWidget {
  Session({super.key});

  @override
  State<Session> createState() => _SessionState();
}

class _SessionState extends State<Session> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Image border
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48), // Image radius
                      child: Image.network(
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.red,
                          child: Center(child: const Text('😢')),
                        ),
                        loadingBuilder: (context, child, loadingProgress) =>
                            loadingProgress == null
                                ? child
                                : const Center(
                                    child: CircularProgressIndicator()),
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                      child: SvgPicture.asset(
                    'assets/images/Imagezzz.svg',
                    allowDrawingOutsideViewBox: true,
                  )),
                  SvgPicture.network(
                    'https://upload.wikimedia.org/wikipedia/commons/b/b4/Chess_ndd45.svg',
                    placeholderBuilder: (BuildContext context) => Container(
                        padding: const EdgeInsets.all(30.0),
                        child: const CircularProgressIndicator()),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Image border
                    child: SizedBox.fromSize(
                        size: Size.fromRadius(48), // Image radius
                        child: Image.asset('assets/images/Image.jpg')),
                  ),
                //  MGridView(),
                ],
              )),
              /*   GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                children: [
                  Container(
                    color: Colors.red,
                  )
                ],
              ),
             */
            ],
          ),
        ),
      ),
    );
  }
}
/** Center(
                child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(48), // Image radius
                    child: Image.network(
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.red,
                        child: Center(child: const Text('😢')),
                      ),
                      loadingBuilder: (context, child, loadingProgress) =>
                          loadingProgress == null
                              ? child
                              : const Center(
                                  child: CircularProgressIndicator()),
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                    child: SvgPicture.asset(
                  'assets/images/Imagezzz.svg',
                  allowDrawingOutsideViewBox: true,
                )),
                SvgPicture.network(
                  'https://upload.wikimedia.org/wikipedia/commons/b/b4/Chess_ndd45.svg',
                  placeholderBuilder: (BuildContext context) => Container(
                      padding: const EdgeInsets.all(30.0),
                      child: const CircularProgressIndicator()),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                      size: Size.fromRadius(48), // Image radius
                      child: Image.asset('assets/images/Image.jpg')),
                ),
              ],
            )),
            GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: [
                Container(
                  color: Colors.red,
                )
              ],
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) => Container(
                color: Colors.green,
              ),
            ),
            */