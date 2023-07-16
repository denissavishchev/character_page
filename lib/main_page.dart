import 'package:character_page/widgets/luck_widget.dart';
import 'package:character_page/widgets/small_widgets.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  final starItems = 2.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
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
              SizedBox(
                width: size.width,
                height: size.height * 0.6,
                child: Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      width: size.width,
                      height: size.height * 0.6,
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
                                LuckWidget(starItems: starItems),
                                const SizedBox(height: 15,),
                                Text('Loyalty', style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold, fontSize: 18,),),
                                const SizedBox(height: 10,),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 7),
                                  width: 90,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            const Color(0xff9c7be2).withOpacity(0.8),
                                            const Color(0xff9c58dc).withOpacity(0.8),
                                          ]
                                      ),
                                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                                      border: Border.all(width: 0.4, color: Colors.white.withOpacity(0.5)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.4),
                                          blurRadius: 12,
                                        )
                                      ]
                                  ),
                                ),

                              ],
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
      ),
    );
  }
}


