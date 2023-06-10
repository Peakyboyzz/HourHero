import 'package:flutter/material.dart';
import 'package:hourhero/domain/jobs/job.dart';
import 'package:hourhero/presentation/jobs/widgets/job_card.dart';
import 'package:velocity_x/velocity_x.dart';

class JobsWidget extends StatelessWidget {
  const JobsWidget({
    super.key,
    required this.jobs,
  });

  final List<Job> jobs;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(36),
      children: [
        Row(
          children: [
            const Text("Hallo, Biboy!").text.xl4.bold.make(),
            const Spacer(),
            "https://picsum.photos/200".circularNetworkImage(radius: 36),
          ],
        ),
        32.heightBox,
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Search"),
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.tune),
          ),
        ),
        32.heightBox,
        const Text("Rekomendasi").text.bold.xl3.make(),
        20.heightBox,
        HStack([
          if (jobs.isNotEmpty)
            for (final job in jobs.take(3)) ...[
              JobItemSquare(job: job),
              20.widthBox,
            ]
          else
            const Text("No Jobs Available").card.make()
        ]).h(280).scrollHorizontal(),
        32.heightBox,
        const Text("Lowongan Terbaru").text.bold.xl3.make(),
        if (jobs.isNotEmpty)
          for (final job in jobs) ...[
            JobItemLandscape(job: job),
            20.heightBox,
          ]
        else
          const Text("No Jobs Available").card.make()
      ],
    );
  }
}
