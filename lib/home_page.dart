import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:postmaster_mobile/database.dart';
import 'package:postmaster_mobile/json_data.dart';
import 'package:postmaster_mobile/network.dart';

import 'icon_select.dart';

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
  bool _saveToDatabase = true;
  final dbHelper = DatabaseHelper.instance;
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
                                    leading: Icon(getIcon(event.status!)),
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
          trackingNumber = '';
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
                  Row(children: [
                    const Text("Save Parcel?"),
                    Checkbox(
                      value: _saveToDatabase,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _saveToDatabase = newValue ?? false;
                        });
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (trackingNumber.isNotEmpty) {
                          if (_saveToDatabase) {
                            dbHelper.addEntry(trackingNumber);
                          } else {
                            print("Not saving to database");
                          }
                          Navigator.of(context).pop();
                          setState(() {
                            _trackingResult = getData(trackingNumber)
                                as Future<TrackingResponseData>?;
                          });
                        }
                      },
                      child: const Text('Track'),
                    ),
                  ])
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
