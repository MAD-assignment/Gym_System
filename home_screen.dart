import 'package:flutter/material.dart';
import 'package:my_gym_manager/config/palette.dart';
import 'package:my_gym_manager/screens/drawer.dart';
import 'package:my_gym_manager/widgets/custom_app_bar.dart';
import 'package:my_gym_manager/widgets/stats_grid.dart';

import 'package:my_gym_manager/screens/equipments/equipments_Screen.dart';
import 'package:my_gym_manager/screens/income_expenses/view_expense.dart';
import 'package:my_gym_manager/screens/income_expenses/view_income.dart';
import 'package:my_gym_manager/screens/members/members_Screen.dart';
import 'package:my_gym_manager/screens/trainers/trainers_Screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar('Dashboard'),
      drawer: AppDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Palette.secondaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StatsGrid('Income', 'Rs. 13,500.00',
                        'assets/images/increase_presentation_Profit_growth-512.png'),
                    RaiseedButton(
                      onPresses: () =>{
                              Navigator.push(
                                  context,
                                      MaterialPageRouter(
                                        bulider: (context) => ViewIncome(),
                                  ),
               )
                      }),

                    StatsGrid('Expense', 'Rs. 4,500.00',
                        'assets/images/decrease_presentation_down_loss-512.png'),
                    RaiseedButton(
                        onPresses: () =>{
                          Navigator.push(
                            context,
                            MaterialPageRouter(
                              bulider: (context) => ViewExprenser(),
                            ),
                          )
                        }),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StatsGrid('Members', '35',
                      'assets/images/family_tree_members_people-512.png'),
                  RaiseedButton(
                      onPresses: () =>{
                        Navigator.push(
                          context,
                          MaterialPageRouter(
                            bulider: (context) => MemberScreen(),
                          ),
                        )
                      }),
                  StatsGrid('Trainers', '5',
                      'assets/images/gym_coach_trainer_fitness-512.png'),
                  RaiseedButton(
                      onPresses: () =>{
                        Navigator.push(
                          context,
                          MaterialPageRouter(
                            bulider: (context) => TrainersScreen(),
                          ),
                        )
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StatsGrid('Equipments', '12',
                      'assets/images/dumbbell_gym_fitness_exercise-512.png'),
                  RaiseedButton(
                      onPresses: () =>{
                        Navigator.push(
                          context,
                          MaterialPageRouter(
                            bulider: (context) => EquipmentsScreen(),
                          ),
                        )
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
