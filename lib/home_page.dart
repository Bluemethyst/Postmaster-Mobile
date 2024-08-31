import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:postmaster_mobile/json_data.dart';
import 'package:postmaster_mobile/network.dart';

class PostmasterHomePage extends StatefulWidget {
  const PostmasterHomePage({super.key});

  @override
  PostmasterHomePageState createState() => PostmasterHomePageState();
}

String formatDate(String dateStr) {
  DateTime dateTime = DateTime.parse(dateStr);

  String time = DateFormat('h:mm a').format(dateTime);
  String day = DateFormat('d').format(dateTime);
  String monthYear = DateFormat('MMM yyyy').format(dateTime);

  String suffix;
  if (day.endsWith('1') && !day.endsWith('11')) {
    suffix = 'st';
  } else if (day.endsWith('2') && !day.endsWith('12')) {
    suffix = 'nd';
  } else if (day.endsWith('3') && !day.endsWith('13')) {
    suffix = 'rd';
  } else {
    suffix = 'th';
  }
  return '$time $day$suffix $monthYear';
}

class PostmasterHomePageState extends State<PostmasterHomePage> {
  String trackingNumber = '';
  Future<TrackingResponseData>? _trackingResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Postmaster"),
        backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_trackingResult == null)
              const Text('Hit the + to start tracking!'),
            if (_trackingResult == null)
              Transform.rotate(
                angle: 45 * (3.141592653589793238 / 180),
                child: const Icon(Icons.arrow_forward_outlined),
              ),
            if (_trackingResult != null)
              FutureBuilder<TrackingResponseData>(
                future: _trackingResult,
                builder: (BuildContext context,
                    AsyncSnapshot<TrackingResponseData> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    return Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            for (var result in snapshot.data!.results!)
                              for (var event in result.trackingEvents!.reversed)
                                Card(
                                  child: ListTile(
                                    leading: Icon(event.status == 'Delivered'
                                        ? Icons.check_circle_outline
                                        : event.status == 'In Transit'
                                            ? Icons.local_shipping_outlined
                                            : event.status!.contains(
                                                    "International departure")
                                                ? Icons.flight_takeoff
                                                : event.status!.contains(
                                                        "International arrival")
                                                    ? Icons.flight_land
                                                    : event.status!.contains(
                                                                "Depot") ||
                                                            event.status!
                                                                .contains(
                                                                    "depot")
                                                        ? Icons.home_outlined
                                                        : Icons.error_outline),
                                    title: Text(event.description!),
                                    //trailing: Text(formatDate(event.dateTime!)),
                                    subtitle: Text(event.status!),
                                    dense: true,
                                  ),
                                ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return const Text('No result');
                  }
                },
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Enter Tracking Number'),
                content: TextField(
                  onChanged: (value) {
                    setState(() {
                      trackingNumber = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Tracking Number',
                  ),
                ),
                actions: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      if (trackingNumber.isNotEmpty) {
                        Navigator.of(context).pop();
                        setState(() {
                          _trackingResult = getData(trackingNumber)
                              as Future<TrackingResponseData>?;
                        });
                      }
                    },
                    child: const Text('Track'),
                  ),
                ],
              );
            },
          );
        },
        tooltip: 'New Tracking Number',
        child: const Icon(Icons.add),
      ),
    );
  }
}
