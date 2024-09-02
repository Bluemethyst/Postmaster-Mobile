import 'package:flutter/material.dart';
import 'package:postmaster_mobile/database.dart';
import 'package:postmaster_mobile/icon_select.dart';
import 'package:postmaster_mobile/json_data.dart';
import 'package:postmaster_mobile/network.dart';

class NewTrackingPage extends StatefulWidget {
  const NewTrackingPage({super.key});

  @override
  NewTrackingPageState createState() => NewTrackingPageState();
}

class NewTrackingPageState extends State<NewTrackingPage> {
  bool dbEmpty = true;
  var dbHelper = DatabaseHelper.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Tracking Number'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FutureBuilder<List<String>>(
                future: dbHelper.getAllEntries(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  } else if (snapshot.hasData && snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text(
                        'Save some tracking numbers to view your parcels here!',
                      ),
                    );
                  } else if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return FutureBuilder<TrackingResponseData>(
                          future: getData(snapshot.data![index]),
                          builder: (context, trackingSnapshot) {
                            if (trackingSnapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const SizedBox
                                  .shrink(); // No loading indicator here
                            } else if (trackingSnapshot.hasError) {
                              return Text('Error: ${trackingSnapshot.error}');
                            } else if (trackingSnapshot.hasData) {
                              dbEmpty = false;
                              var results = trackingSnapshot.data!.results!;
                              var lastResult = results[results.length - 1];
                              var trackingEvents = lastResult.trackingEvents!;
                              var lastEvent =
                                  trackingEvents[trackingEvents.length - 1];
                              return Card(
                                child: ListTile(
                                  leading: Icon(getIcon(lastEvent.status!)),
                                  subtitle: Text(lastEvent.status!),
                                  title: Text(lastResult.trackingReference!),
                                ),
                              );
                            } else {
                              return const Text('No data');
                            }
                          },
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: Text('No data'),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
