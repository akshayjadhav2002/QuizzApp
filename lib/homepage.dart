import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'listofquestions.dart';

class QuizzApp extends StatefulWidget {
  const QuizzApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizzAppState();
  }
}

class _QuizzAppState extends State {
  bool isPressed = false;
  int questionIndex = 0;
  bool isQuestion = true;
  int pressedOption = -1;
  int marks = 0;
  //Function  decides the Color of buttons
  Color checkColor(int buttonIndex) {
    if (pressedOption != -1) {
      isPressed = true;
      //if pressed button is equal to answer index (Correct Answer) of question then return green color
      if (buttonIndex == AllQuestions[questionIndex].answerIndex) {
        return Colors.green;
      }
      //if pressed button is  equal to button index(Wrong Color) then return red color
      else if (pressedOption == buttonIndex) {
        return Colors.red;
      }
      //Or return defalut color
      else {
        return Colors.blueGrey;
      }
    } else {
      // if nothing is selected(pressedOption== -1) then return default color
      return Colors.blueGrey;
    }
  }

  //Navigation to the Next Page
  void nextScreen() {
    //Increment the marks if selected option is correct
    if (pressedOption == AllQuestions[questionIndex].answerIndex) {
      marks += 1;
    }
    //Navigate To The End If All Questions Are Completed
    // Checks if option is selected and then move to next Screen
    if (pressedOption != -1) {
      if (questionIndex == AllQuestions.length - 1) {
        isQuestion = false;
      }
      setState(() {
        questionIndex++;
      });
    }

    //Mark the selected Option to default
    pressedOption = -1;
    isPressed = false;
  }

  Scaffold isQuestionScreen() {
    //Display the Question Screen if isQuestion is true
    if (isQuestion == true) {
      return Scaffold(
        appBar: AppBar(
          elevation: 10,
          shadowColor: Colors.white,
          leading: const Icon(
            Icons.timer_rounded,
            size: 35,
          ),
          title: const Text(
            "Quizz App",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question :",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                //Display the Current Question on Screen
                Text(
                  "${questionIndex + 1} /${AllQuestions.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                //Displaying the Marks Obtained OutOf Total Marks
                Text(
                  "Marks : $marks/${AllQuestions.length}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              width: 450,
              child: Text(
                "${AllQuestions[questionIndex].question}",
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //calling function for checking the color of button
                  backgroundColor: checkColor(0),
                  fixedSize: const Size(300, 50),
                  elevation: 8,
                  shadowColor: Colors.white,
                ),
                onPressed: () {
                  //check if option is selected if not then select according to Pressed button
                  setState(() {
                    if (pressedOption == -1) {
                      pressedOption = 0;
                    }
                  });
                },
                child: Text(
                  "A] ${AllQuestions[questionIndex].options[0]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //calling function for checking the color of button
                  backgroundColor: checkColor(1),
                  fixedSize: const Size(300, 50),
                  elevation: 8,
                  shadowColor: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    if (pressedOption == -1) {
                      pressedOption = 1;
                    }
                  });
                },
                child: Text(
                  "B] ${AllQuestions[questionIndex].options[1]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //calling function for checking the color of button
                  backgroundColor: checkColor(2),
                  fixedSize: const Size(300, 50),
                  elevation: 8,
                  shadowColor: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    //check if option is selected if not then select according to Pressed button
                    if (pressedOption == -1) {
                      pressedOption = 2;
                    }
                  });
                },
                child: Text(
                  "C] ${AllQuestions[questionIndex].options[2]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //calling function for checking the color of button
                  backgroundColor: checkColor(3),
                  fixedSize: const Size(300, 50),
                  elevation: 8,
                  shadowColor: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    //check if option is selected if not then select according to Pressed button
                    if (pressedOption == -1) {
                      pressedOption = 3;
                    }
                  });
                },
                child: Text(
                  "D] ${AllQuestions[questionIndex].options[3]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            (isPressed)
                ? Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1.8,
                          color: Colors.white,
                          
                          
                        ),
                    ),
                    child: Text(
                        "Explanation: ${AllQuestions[questionIndex].explanation}",
                        style:const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        )
                        ),
                        )
                : const Text(""),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //call nextScreen
            nextScreen();
          },
          backgroundColor: Colors.blueGrey,
          focusColor: Colors.white,
          elevation: 10,
          tooltip: "Next Question",
          child: const Icon(
            Icons.navigate_next_rounded,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Quizz App",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 600,
            width: 400,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:const Color.fromARGB(255, 241, 241, 241),
              border: Border.all(
                color:Colors.orangeAccent,
                width: 4, 
              ),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                //Trophy Image From Network
                Image.asset(
                  "assets/trophy3.png",
                  height: 300,
                  width: 300,
                  alignment: Alignment.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 80,
                  width: 200,
                  child: Text(
                    "Congrulations...! Quizz Completed..! ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Marks Scored $marks/${AllQuestions.length}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
                      elevation: MaterialStatePropertyAll(20),
                      shadowColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 240, 180, 0))),
                  onPressed: () {
                    //Making the marks and questionIndex Flag to 0 for Reset
                    setState(() {
                      marks = 0;
                      questionIndex = 0;
                      isQuestion = true;
                    });
                  },
                  child: const Text(
                    "Retry",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
