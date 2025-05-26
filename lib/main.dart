import 'package:flutter/material.dart';
import 'package:workagency/const/MyAppBar.dart';
import 'package:workagency/const/components/CourseCard.dart';
import 'package:workagency/const/components/ReasonBtn.dart';
import 'package:workagency/const/components/TeacherCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // ✅ Wrap with DefaultTabController
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: MyAppBar(),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "Unlock Your Potential with Worktency",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 36,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Text(
                        "Discover industry-leading courses designed to equip you with real-world skills. Join our community and start your journey to success today.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      child: Image.asset('assets/images/work.png'),
                    ),
                    // Buttons
                    ...[
                      _buildButton(
                        Icons.book,
                        "Explore Courses",
                        Colors.white,
                        Colors.blue,
                      ),
                      SizedBox(height: 10),
                      _buildButton(
                        Icons.table_bar,
                        "Join as an Educator",
                        Color(0xFFFF7A00),
                        Colors.white,
                      ),
                    ],
                    // Reason Section
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        "Why Choose Worktency?",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 22),
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ReasonBtn(
                            astImage: 'assets/images/instructor.png',
                            btnLabel: "Expert Instructor",
                          ),
                          SizedBox(width: 15),
                          ReasonBtn(
                            astImage: 'assets/images/flex-learning.png',
                            btnLabel: "Flexible Learning",
                          ),
                          SizedBox(width: 15),
                          ReasonBtn(
                            astImage: 'assets/images/hand-learning.png',
                            btnLabel: "Hands-on Practice",
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 50),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          TabBar(
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: Colors.orange,
                            tabs: const [
                              Tab(text: "Tab 1"),
                              Tab(text: "Tab 2"),
                              Tab(text: "Tab 3"),
                            ],
                          ),
                          Container(
                            height: 560,
                            child: TabBarView(
                              children: [
                                _buildCourseGrid(), // tab 1
                                _buildCourseGrid(), // tab 2
                                _buildCourseGrid(), // tab 3
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        "Meet Our Teachers",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 30, left: 22),
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          TeacherCard(
                            teacherImg: "assets/images/drValyDona.png",
                            teacherName: "Dr. Valy Dona",
                            teacherSpeciality: "Reasearcher, AI Specialist",
                          ),
                          SizedBox(width: 15),
                          TeacherCard(
                            teacherImg: "assets/images/mrHokTin.png",
                            teacherName: "Mr. Hok Tin",
                            teacherSpeciality: "Web Developer",
                          ),
                          SizedBox(width: 15),
                          TeacherCard(
                            teacherImg: "assets/images/mrHengRathpisey.png",
                            teacherName: "Mr. Heng Rathpisey",
                            teacherSpeciality: "Lecturer at ITC",
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 50, left: 22),
                      child: Text(
                        "To reach our only One goal, what we can share with you today ",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                    ),

                    newsRow(),
                    newsRow(),
                    newsRow(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCourseGrid() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(6, (index) {
          return CourseCard(
            image: 'assets/images/Ghost.png',
            title: 'Something Something',
            instructor: 'Mr. Bunthorn Liv',
            price: '39.99',
          );
        }),
      ),
    );
  }

  Widget _buildButton(
    IconData icon,
    String label,
    Color bgColor,
    Color fgColor,
  ) {
    return Center(
      child: SizedBox(
        width: 182,
        child: TextButton(
          onPressed: () {
            print(label);
          },
          style: TextButton.styleFrom(
            backgroundColor: bgColor,
            foregroundColor: fgColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(icon), const SizedBox(width: 6), Text(label)],
          ),
        ),
      ),
    );
  }
}

class newsRow extends StatelessWidget {
  const newsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment
                .start, // aligns top of image and text
        children: [
          Expanded(
            flex: 4, // 40% width
            child: Container(
              height: double.infinity, // full height
              child: Image.asset(
                'assets/images/goal.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            flex: 5, // 60% width
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "“Machine learning and AI are the engines driving the technological revolution of our time.”",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("Dr. Valy Dona"),
                Spacer(),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Button 1"),
                    ),
                    SizedBox(width: 8),
                    TextButton(
                      onPressed: () {},
                      child: Text("Button 2"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
