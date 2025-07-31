import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_smart_course/app/config/app_color.dart';
import 'package:flutter_smart_course/common/widgets/decorative_backgrounds.dart';

import '../providers/course_providers.dart';
import '../widgets/course_list_item.dart';

class RecommendedPage extends ConsumerWidget {
  const RecommendedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coursesAsync = ref.watch(recommendedCoursesProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _Header(),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          const _CategoryChips(),
          coursesAsync.when(
            loading: () => const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (err, stack) => SliverFillRemaining(
              child: Center(child: Text('Error: $err')),
            ),
            data: (courses) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final model = courses[index];
                    return CourseListItem(
                      model: model,
                      
                      // =============> PERBAIKAN DI SINI <=============
                      // Kita berikan argumen yang diperlukan ke DecorationA
                      decoration: index % 2 == 0 
                        ? const DecorationA(primary: Colors.redAccent, top: -110, left: -85)
                        : const DecorationB(),
                      // ===============================================

                      backgroundColor: index % 2 == 0 ? AppColor.seeBlue : AppColor.darkOrange,
                    )
                    .animate()
                    .fadeIn(duration: 500.ms, delay: (100 * index).ms)
                    .slideY(begin: 0.2, end: 0);
                  },
                  childCount: courses.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Class _Header dan _CategoryChips di bawah ini tidak perlu diubah.
class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 120.0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      flexibleSpace: ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        child: Container(
          decoration: const BoxDecoration(color: AppColor.orange),
          child: const Stack(
            fit: StackFit.expand,
            children: [
               Positioned(top: 10, right: -120, child: CircleAvatar(radius: 150, backgroundColor: AppColor.lightOrange2)),
               Positioned(top: -60, left: -65, child: CircleAvatar(radius: 100, backgroundColor: AppColor.darkOrange)),
               Align(
                 alignment: Alignment.center,
                 child: Text("Recommended", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500)),
               )
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryChips extends StatelessWidget {
  const _CategoryChips({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
             const Text("Start a new career", style: TextStyle(color: AppColor.extraDarkPurple, fontWeight: FontWeight.bold, fontSize: 16)),
             const SizedBox(width: 30),
             _chip("Data Scientist", AppColor.yellow),
             const SizedBox(width: 10),
             _chip("Data Analyst", AppColor.seeBlue),
             const SizedBox(width: 10),
             _chip("Data Engineer", AppColor.orange),
             const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  Widget _chip(String text, Color color) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: color.withOpacity(0.2),
      ),
      child: Text(
        text,
        style: TextStyle(color: color, fontWeight: FontWeight.bold),
      ),
    );
  }
}