import 'dart:math';

import 'package:flutter/material.dart';

class JokeeSingleServing extends StatefulWidget {
  const JokeeSingleServing({Key? key}) : super(key: key);

  @override
  State<JokeeSingleServing> createState() => _JokeeSingleServingState();
}

class _JokeeSingleServingState extends State<JokeeSingleServing> {
  String currentJoke = '';
  final List<String> jokesContent = [
    "A child asked his father, \"How were people born?\" So his father said, \"Adam and Eve made babies, then their babies became adults and made babies, and so on.\"The child then went to his mother, asked her the same question and she told him, \"We were monkeys then we evolved to become like we are now.\"The child ran back to his father and said, \"You lied to me!\" His father replied, \"No, your mom was talking about her side of the family.\"",
    "Teacher: \"Kids,what does the chicken give you?\" Student: \"Meat!\" Teacher: \"Very good! Now what does the pig give you?\" Student: \"Bacon!\" Teacher: \"Great! And what does the fat cow give you?\" Student: \"Homework!\"",
    "The teacher asked Jimmy, \"Why is your cat at school today Jimmy?\" Jimmy replied crying, \"Because I heard my daddy tell my mommy, 'I am going to eat that pussy once Jimmy leaves for school today!'\"",
    "A housewife, an accountant and a lawyer were asked \"How much is 2+2?\" The housewife replies: \"Four!\". The accountant says: \"I think it's either 3 or 4. Let me run those figures through my spreadsheet one more time.\" The lawyer pulls the drapes, dims the lights and asks in a hushed voice, \"How much do you want it to be?",
  ];

  void showRandomJoke() {
    setState(() {
      if (jokesContent.isNotEmpty) {
        final Random random = Random();
        final int randomIndex = random.nextInt(jokesContent.length);
        currentJoke = jokesContent[randomIndex];
        jokesContent.removeAt(randomIndex);
      } else {
        currentJoke =
            "\"That's all the jokes for today! Come back another day!\"";
      }
    });
  }

  @override
  void initState() {
    showRandomJoke();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Image.asset("assets/images/hlsolution.png"),
        ),
        actions: [
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Handicrafted by',
                    style: TextStyle(color: Color(0xFF777777)),
                  ),
                  Text(
                    'Jim HLS',
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                child: Image.asset("assets/images/flower.png"),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            color: const Color(0xFF29B363),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "A joke a day keeps the doctor away",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "If you joke wrong way, your teeth have to pay. (Serious)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                    padding: const EdgeInsets.all(25),
                    child: Text(currentJoke)),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF2C7EDB),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero))),
                      onPressed: showRandomJoke,
                      child: const Text(
                        'This is Funny!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF29B363),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero))),
                      onPressed: showRandomJoke,
                      child: const Text(
                        'This is not funny.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const Divider(color: Colors.brown, thickness: 0.1),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Text(
                "This appis created as part of Hlsolutions program. The materials con- tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infor- mation contained on this site.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF979797),
                  fontSize: 13,
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Copyright 2021 HLS',
            style: TextStyle(color: Color(0xFF777777), fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
