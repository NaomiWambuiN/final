import 'package:flutter/material.dart';

// Define a class to hold information about each Ford model
class FordModel {
  final String name;
  final String description;
  final String imageUrl;
  final int cost; // Assuming cost is in dollars

  FordModel({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.cost,
  });
}

class FordPage extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'FORD EDGE ',
      description: 'The Ford Edge has good reliability ratings. Its reliability score is 3.5 out of 5.0 from RepairPal and ranks 11th out of 26 vehicles in the same category. Consumer Reports also gives the Ford Edge reliability and owner satisfaction scores of 4.0 out of 5.0 .',
      imageUrl: 'assets/04ec8d77083fe1d8e7c32c1bda53d935x.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'FORD EXPEDITION',
      description: 'The Expedition is a huge SUV with modern conveniences and active safety features. The sole engine option, a 3.5-liter turbo V6 mated to a 10-speed automatic, provides effortless motivation.',
      imageUrl: 'assets/f9c161bd8952f4b0c43dab709a634ff4x.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'FORD BRONCO BLACK DIAMOND SUV ',
      description: 'Ultimately, the Ford Bronco really shines off-road. Its unique GOAT mode (Goes Over Any Terrain) allows you to choose settings depending on what terrain you encounter. The Ford Bronco is in high demand, which is why Irwin Auto Group offers a reserve-your-Bronco program.',
      imageUrl: 'assets/153f2ddcea7619c6e2f13698dbd7e07cx.jpg', // Replace with your image asset path
      cost: 31500,
    ),
    FordModel(
      name: 'FORD ESCAPE TITANIUM',
      description: 'larger alloy wheels, a more decorative grille, LED headlights, and privacy glass. Technological enhancements are plentiful when it comes to this premium trim level.27 Feb 2024',
      imageUrl: 'assets/1_XnFSLDzGZFfrfypkjPjWzA.jpg', // Replace with your image asset path
      cost: 32500,
    ),
    FordModel(
      name: 'FORD F-150 XLT CREW CAB',
      description: 'The Ford F-150 is one of the most powerful pickups on the market, capable of giving Oswego drivers access to industry-leading towing and payload capability, as well as innovative tech features that make the F-150 cabin ultra-connected.',
      imageUrl: 'assets/2018_Ford_F-150_XLT_Crew_Cab,_front_11.10.19.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];

  FordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('Volkswagen models'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: fordModels.length,
        itemBuilder: (context, index) {
          return Container(
            height: imageHeight,
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      fordModels[index].imageUrl,
                      width: MediaQuery.of(context).size.width, // Full width
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  fordModels[index].name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(fordModels[index].description),
                Text('Cost: \$${fordModels[index].cost}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
