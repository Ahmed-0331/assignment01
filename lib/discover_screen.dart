import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Discover',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "WHAT'S NEW TODAY",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 12),

            // ফিচারড ইমেজ সেকশন
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                'https://picsum.photos/800/800', // এখানে আপনার মেইন ইমেজ লিঙ্ক দিন
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),

            // ইউজার প্রোফাইল সেকশন
            const Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage('https://picsum.photos/100'),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kz Shaown", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("@kzshaown", style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),

            const Text(
              "BROWSE ALL",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 12),

            // ইমেজ গ্রিড সেকশন (Masonry Layout এর জন্য)
            MasonryGridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemCount: 10, // আপনার আইটেম সংখ্যা
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Image.network(
                    'https://picsum.photos/500/${(index % 2 == 0) ? 600 : 400}',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            // See More বাটন
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  "SEE MORE",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


