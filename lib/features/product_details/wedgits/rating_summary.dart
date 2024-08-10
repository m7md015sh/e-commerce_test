import 'package:flutter/material.dart';

class RatingSummaryWidget extends StatelessWidget {
  final double averageRating;
  final int totalReviews;
  final List<double> ratingsDistribution;

  RatingSummaryWidget({
    required this.averageRating,
    required this.totalReviews,
    required this.ratingsDistribution,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    averageRating.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  const Text(
                    '/5',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4.0),
              Text(
                'Based on $totalReviews Reviews',
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    index < averageRating.round()
                        ? Icons.star
                        : Icons.star_border,
                    color: Colors.amber,
                    size: 28.0,
                  );
                }),
              ),
            ],
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              children: [
                _buildRatingBar('5 Star', ratingsDistribution[4]),
                _buildRatingBar('4 Star', ratingsDistribution[3]),
                _buildRatingBar('3 Star', ratingsDistribution[2]),
                _buildRatingBar('2 Star', ratingsDistribution[1]),
                _buildRatingBar('1 Star', ratingsDistribution[0]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingBar(String label, double value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Text(label, style: const TextStyle(fontSize: 14.0)),
          const SizedBox(width: 8.0),
          Expanded(
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(5),
              value: value,
              backgroundColor: Colors.grey.shade300,
              color: Colors.amber,
              minHeight: 8.0,
            ),
          ),
        ],
      ),
    );
  }
}
