import 'package:flutter/material.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:velocity_x/velocity_x.dart';

class JobDetailPage extends StatelessWidget {
  const JobDetailPage({super.key, required this.jobId});

  final String jobId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Card(
              child: VStack(
                [
                  HStack([
                    const BackButton(),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                  ]),
                  24.heightBox,
                  Text("Barista $jobId").text.xl3.bold.make(),
                  6.heightBox,
                  const Text("Notre").text.lg.make(),
                  6.heightBox,
                  const Text("Diposting pada 10 Juli").text.make(),
                ],
              ).p24(),
            ),
            20.heightBox,
            Card(
              child: VStack(
                [
                  HStack([
                    Expanded(
                      child: VStack(
                        [
                          Text('Berlaku sebelum'.toUpperCase())
                              .text
                              .medium
                              .bold
                              .make(),
                          const Text('30 July, 2023').text.make(),
                        ],
                        alignment: MainAxisAlignment.center,
                      ),
                    ),
                    12.widthBox,
                    Expanded(
                      child: VStack(
                        [
                          Text('Sifat Pekerjaan'.toUpperCase())
                              .text
                              .medium
                              .bold
                              .make(),
                          VxBox(child: const Text('Kontrak'))
                              .gray200
                              .rounded
                              .p3
                              .make()
                        ],
                      ),
                    ),
                  ]),
                  12.heightBox,
                  HStack([
                    Expanded(
                      child: VStack(
                        [
                          Text('kisaran gaji'.toUpperCase())
                              .text
                              .medium
                              .bold
                              .make(),
                          const Text('\$100k - \$120k/taun').text.make(),
                        ],
                      ),
                    ),
                    12.widthBox,
                    Expanded(
                      child: VStack(
                        [
                          Text('lokasi pekerjaan'.toUpperCase())
                              .text
                              .medium
                              .bold
                              .make(),
                          const Text('Work From Home').text.make(),
                        ],
                      ),
                    ),
                  ]),
                ],
              ).p24(),
            ),
            20.heightBox,
            Card(
              child: VStack(
                [
                  const Text("Deskripsi Pekerjaan").text.lg.bold.make(),
                  const Text(
                    "Dapatkah Anda mewujudkan ide-ide kreatif yang berpusat pada manusia dan mewujudkan hal-hal besar yang tidak terlihat? Kami percaya pada kerja sama tim, kesenangan, proyek yang kompleks, perspektif yang beragam, dan solusi yang sederhana. Bagaimana dengan Anda? Kami mencari orang yang berpikiran sama",
                  ).text.justify.make(),
                  16.heightBox,
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text("Selengkapnya")
                            .text
                            .color(Color(Vx.getColorFromHex(kSecondaryColor)))
                            .make(),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color(Vx.getColorFromHex(kSecondaryColor)),
                        ),
                      ],
                    ),
                  ),
                ],
              ).p24(),
            ),
            20.heightBox,
            Card(
              child: VStack(
                [
                  const Text("Peran dan tanggung jawab").text.lg.bold.make(),
                  const Text(
                    "Dapatkah Anda mewujudkan ide-ide kreatif yang berpusat pada manusia dan mewujudkan hal-hal besar yang tidak terlihat? Kami percaya pada kerja sama tim, kesenangan, proyek yang kompleks, perspektif yang beragam, dan solusi yang sederhana. Bagaimana dengan Anda? Kami mencari orang yang berpikiran sama",
                  ).text.justify.make(),
                ],
              ).p24(),
            ),
            20.heightBox,
            ElevatedButton(
              onPressed: () {},
              child: const Text("Daftar Sekarang"),
            ),
          ],
        ),
      ),
    );
  }
}
