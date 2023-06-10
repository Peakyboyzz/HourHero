import 'package:flutter/material.dart';
import 'package:hourhero/domain/jobs/job.dart';
import 'package:hourhero/presentation/core/constants/styles.dart';
import 'package:hourhero/presentation/routes/router.dart';
import 'package:velocity_x/velocity_x.dart';

class JobItemSquare extends StatelessWidget {
  const JobItemSquare({
    super.key,
    required this.job,
  });

  final Job job;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(JobDetailRoute(id: job.id!));
        },
        child: VStack(
          [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading:
                  "https://picsum.photos/200".circularNetworkImage(radius: 20),
              title: Text(job.jobName),
              subtitle: Text(job.jobLocation),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_outline),
              ),
            ),
            20.heightBox,
            Text(job.jobKind).text.xl2.make(),
            4.heightBox,
            // Wrap(
            //   spacing: 2,
            //   runSpacing: 2,
            //   children: ['Junior', 'Part Time', 'Remote']
            //       .map(
            //         (e) => VxBox(child: Text('$e ')).gray200.rounded.p3.make(),
            //       )
            //       .toList(),
            // ),
            VxBox(child: Text(job.jobType)).gray200.rounded.p3.make(),
            20.heightBox,
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(Vx.getColorFromHex(kSecondaryColor)),
                  ),
                  child: const Text("Daftar"),
                ),
                const Spacer(),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: job.jobSalary,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: "/Bulan"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ).w(245).p16(),
      ),
    );
  }
}

class JobItemLandscape extends StatelessWidget {
  const JobItemLandscape({super.key, required this.job});

  final Job job;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(JobDetailRoute(id: job.id!));
        },
        child: VStack(
          [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: VxBox()
                  .square(40)
                  .bgImage(const DecorationImage(
                    image: NetworkImage("https://picsum.photos/200"),
                    fit: BoxFit.cover,
                  ))
                  .rounded
                  .make(),
              title: Text(job.jobName),
              subtitle: Text(job.jobLocation),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_outline),
              ),
            ),
            16.heightBox,
            Row(
              children: [
                Expanded(
                  // child: Wrap(
                  //   spacing: 2,
                  //   runSpacing: 2,
                  //   children: ['Junior', 'Part Time', 'Remote']
                  //       .map(
                  //         (e) => VxBox(child: Text('$e ').text.sm.make())
                  //             .gray200
                  //             .rounded
                  //             .p3
                  //             .make(),
                  //       )
                  //       .toList(),
                  // ),
                  child: VxBox(child: Text(job.jobType).text.sm.make())
                      .gray200
                      .rounded
                      .p3
                      .make(),
                ),
                8.widthBox,
                Text(job.jobSalary),
              ],
            ),
          ],
        ).p16(),
      ),
    );
  }
}
