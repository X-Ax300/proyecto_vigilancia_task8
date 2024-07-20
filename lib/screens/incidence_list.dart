import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/incidence_provider.dart';
import 'incidence_detail.dart';

class IncidenceList extends StatelessWidget {
  const IncidenceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<IncidenceProvider>(
      builder: (context, provider, child) {
        final incidences = provider.incidences;
        return ListView.builder(
          itemCount: incidences.length,
          itemBuilder: (context, index) {
            final incidence = incidences[index];
            return Card(
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(incidence.title, style: TextStyle(color: Colors.white)),
                subtitle: Text(incidence.date.toString(), style: TextStyle(color: Colors.white70)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IncidenceDetail(incidence: incidence),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
