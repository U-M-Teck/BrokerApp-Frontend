import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart';

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      actions: [
        AppButton1(
            title: AppStrings.done,
            onPressed: () {
              Navigator.of(context).pop();
            })
      ],
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.0.w,
        vertical: 20.h,
      ),
      title: Row(
        children: [
          Text(
            'Ad Title',
            style: AppTextStyle.font18black600,
          ),
          Spacer(),
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.close,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
      content: SizedBox(
        width: 350.w, // Set explicit width
        height: 350.h,
        // Set explicit height
        child: LineChart(
          LineChartData(
            minY: 0,
            maxY: 100,
            minX: 0,
            maxX: 7,
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 75),
                  FlSpot(2, 100),
                  FlSpot(4, 50),
                  FlSpot(6, 25),
                  FlSpot(7, 50),
                ],
                color: AppColors.secondary,
                barWidth: 2,
                isStrokeCapRound: true,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(show: false),
              ),
            ],
            borderData: FlBorderData(
              show: false,
            ),
            gridData: FlGridData(show: true),
            titlesData: FlTitlesData(
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(
                axisNameSize: 30.w,
                axisNameWidget: Text(
                  "Views",
                  style: AppTextStyle.font16black400,
                ),
                sideTitles: SideTitles(
                  
                  interval: 25, // Ensures labels appear at 25-unit intervals

                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 0:
                        return Text(
                          '0',
                          style: AppTextStyle.font16black400,
                        );
                      case 25:
                        return Text(
                          '25',
                          style: AppTextStyle.font16black400,
                        );
                      case 50:
                        return Text(
                          '50',
                          style: AppTextStyle.font16black400,
                        );
                      case 75:
                        return Text(
                          '75',
                          style: AppTextStyle.font16black400,
                        );
                      case 100:
                        return Text(
                          '100',
                          style: AppTextStyle.font16black400,
                        );
                      default:
                        return SizedBox.shrink();
                    }
                  },
                  showTitles: true,
                  reservedSize: 50,
                ),
              ),
              bottomTitles: AxisTitles(
                axisNameSize: 20.h,
                axisNameWidget: Text(
                  "Days",
                  style: AppTextStyle.font16black400,
                ),
                sideTitles: SideTitles(
                  interval: 2, // Ensures labels appear at 25-unit intervals
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 0:
                        return Text(
                          '0',
                          style: AppTextStyle.font16black400,
                        );
                      case 2:
                        return Text(
                          '2',
                          style: AppTextStyle.font16black400,
                        );
                      case 4:
                        return Text(
                          '4',
                          style: AppTextStyle.font16black400,
                        );
                      case 6:
                        return Text(
                          '6',
                          style: AppTextStyle.font16black400,
                        );

                      default:
                        return SizedBox.shrink();
                    }
                  },
                  reservedSize: 50,
                  showTitles: true,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
