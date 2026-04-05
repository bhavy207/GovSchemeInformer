import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../modal/scheme_modal.dart';
import 'package:gap/gap.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  int touchedIndex = -1;

  Map<String, int> getCategoryData() {
    Map<String, int> counts = {};
    for (var scheme in masterList) {
      String cat = scheme.category;
      if (cat.isEmpty) cat = 'General';
      counts[cat] = (counts[cat] ?? 0) + 1;
    }
    return counts;
  }

  @override
  Widget build(BuildContext context) {
    var data = getCategoryData();
    var entries = data.entries.toList();
    entries.sort((a, b) => b.value.compareTo(a.value)); // Sort by count descending

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Scheme Analytics',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: entries.isEmpty 
        ? const Center(child: Text("No scheme data available"))
        : SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Gap(20),
              Text(
                'Distribution by Category',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(30),
              SizedBox(
                height: 250,
                child: PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        });
                      },
                    ),
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 4,
                    centerSpaceRadius: 50,
                    sections: List.generate(entries.length, (i) {
                      final isTouched = i == touchedIndex;
                      final fontSize = isTouched ? 20.0 : 14.0;
                      final radius = isTouched ? 70.0 : 60.0;
                      
                      final colors = [
                        Colors.deepPurple,
                        Colors.blueAccent,
                        Colors.teal,
                        Colors.orangeAccent,
                        Colors.pinkAccent,
                        Colors.indigoAccent,
                        Colors.greenAccent,
                      ];
                      
                      return PieChartSectionData(
                        color: colors[i % colors.length].withOpacity(0.85),
                        value: entries[i].value.toDouble(),
                        title: '${entries[i].value}',
                        radius: radius,
                        titleStyle: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      );
                    }),
                  ),
                ),
              ),
              const Gap(40),
              // Legend
              Wrap(
                spacing: 16,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: List.generate(entries.length, (i) {
                  final colors = [
                    Colors.deepPurple,
                    Colors.blueAccent,
                    Colors.teal,
                    Colors.orangeAccent,
                    Colors.pinkAccent,
                    Colors.indigoAccent,
                    Colors.greenAccent,
                  ];
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          color: colors[i % colors.length],
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Gap(6),
                      Text(
                        entries[i].key,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  );
                }),
              ),
              const Gap(40),
              _buildSummaryCard(data),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryCard(Map<String, int> data) {
    int total = data.values.fold(0, (sum, val) => sum + val);
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Schemes', 
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey[600],
                  )
                ),
                Text(
                  '$total', 
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  )
                ),
              ],
            ),
            const Divider(height: 32),
            ...data.entries.map((e) {
              final percentage = (e.value / total) * 100;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(e.key, style: const TextStyle(fontWeight: FontWeight.w500)),
                        Text('${e.value} (${percentage.toStringAsFixed(1)}%)'),
                      ],
                    ),
                    const Gap(8),
                    LinearProgressIndicator(
                      value: e.value / total,
                      backgroundColor: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      minHeight: 6,
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
