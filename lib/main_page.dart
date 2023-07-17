import 'package:character_page/widgets/ability_widget.dart';
import 'package:character_page/widgets/loyalty_widget.dart';
import 'package:character_page/widgets/luck_widget.dart';
import 'package:character_page/widgets/skill_widget.dart';
import 'package:character_page/widgets/small_widgets.dart';
import 'package:character_page/widgets/strength_widget.dart';
import 'package:flutter/material.dart';
import 'data.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff9548d6),
              Color(0xff5111ad),
            ]
          )
        ),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            const SizedBox(height: 30,),
            SizedBox(
              width: size.width,
              height: size.height * 0.4,
              child: Stack(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    width: size.width,
                    height: size.height * 0.4,
                    margin: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffbf9fdd),
                              Color(0xff884ec8),
                            ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                        ),
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff3c007b),
                          blurRadius: 1.5,
                          spreadRadius: 0,
                          offset: Offset(0, 3),
                        )
                      ]
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SmallShadowWidget(),
                        SmallShadowWidget(),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: size.height,
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Color(0xff47008e),
                        borderRadius: BorderRadius.all(Radius.circular(28))
                    ),
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(18),
                          width: size.width * 0.25,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('LVL 6', style: TextStyle(color: Colors.white.withOpacity(0.7)),),
                              const SizedBox(height: 5,),
                              const Text('Toady', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),),
                              const SizedBox(height: 15,),
                              Text('Luck', style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold, fontSize: 18,),),
                              const SizedBox(height: 10,),
                              const LuckWidget(starItems: starItems),
                              const SizedBox(height: 15,),
                              Text('Loyalty', style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold, fontSize: 18,),),
                              const SizedBox(height: 10,),
                              const LoyaltyWidget(),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            margin: const EdgeInsets.all(18),
                            width: size.width * 0.25,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(height: 10,),
                                Text('Strength', style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold, fontSize: 18,),),
                                const SizedBox(height: 10,),
                                const StrengthWidget(),
                                const SizedBox(height: 10,),
                                const SkillWidget(image: 'sword', name: 'Attack', value: '1345',),
                                const SizedBox(height: 10,),
                                const SkillWidget(image: 'shield', name: 'Defence', value: '546',),
                              ],
                            ),
                          ),
                        ),
                        Positioned.fill(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                width: size.width * 0.42,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 170,
                                      child: Container(
                                        width: size.width * 0.42,
                                        height: 50,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(64),
                                              topLeft: Radius.circular(64),
                                              topRight: Radius.circular(64),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 40,
                                            )
                                          ]
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      child: SizedBox(
                                        width: size.width * 0.42,
                                        child: Image.asset('assets/images/toad.png',),
                                      ),
                                    ),
                                    Positioned(
                                      top: 210,
                                      child: AbilityWidget(size: size),
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}










