    import "modelclass.dart";
    
    List AllQuestions = [
        const ModelQuestion(
          question: "Which tool is used to generate API documentation in HTML format from doc comments in source code ?",
          options: ["javap tool", "javaw command", "Javadoc tool","javah command"],
          answerIndex: 2,
          explanation: "The Javadoc is a tool that is used to generate API documentation in HTML format from the Java source files.",
        ),
        const ModelQuestion(
          question: "What does the expression float a = 35 / 0 return ?",
          options: ["0", "Not a Number(NaN)", "infinity","Run-time exception"],
          answerIndex: 2,
          explanation: "But on dividing an integer by zero, it throws a runtime exception, i.e., java.lang.ArithmeticException."
        ),
        const ModelQuestion(
          question: "Which of the following is not a Java features ?",
          options: ["Dynamic","Architecture Neutral","Use of pointers","Object-oriented"],
          answerIndex: 2,
          explanation: "The Java language does not support pointers because One of the major factors of not using pointers in Java is security concerns..",
        ),
        const ModelQuestion(
          question: "_____ is used to find and fix bugs in the Java programs ?",
          options: ["JVM", "JRE","JDK","JDB"],
          answerIndex: 3,
          explanation: "The Java Debugger (JDB or jdb) is a command-line java debugger that debugs the java class",
        ),
         const ModelQuestion(
          question: "What is the return type of the hashCode() method in the Object class?",
          options: ["Object","int","long","void"],
          answerIndex: 1,
          explanation: "In Java, the return type of hashCode() method is an integer, as it returns a hash code value for the object",
        ),
      ];