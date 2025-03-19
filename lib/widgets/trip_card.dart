import 'package:flutter/material.dart';
import '../models/trip_model.dart';
import '../screens/trip_detail_page.dart';
import 'shimmer_loader.dart';

class TripCard extends StatelessWidget {
  final Trip trip;
  const TripCard({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: SizedBox(
          width: 80,
          height: 80,
          child: Image.network(
            trip.photo,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const ShimmerLoader(width: 80, height: 80);
            },
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.image_not_supported, size: 80);
            },
          ),
        ),
        title: Text(trip.title),
        subtitle: Text('${trip.price} - Rating: ${trip.rating}'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TripDetailPage(trip: trip)),
          );
        },
      ),
    );
  }
}
