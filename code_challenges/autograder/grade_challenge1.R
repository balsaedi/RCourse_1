source("code_challenges/submissions/cc1/11876.R")

total_questions = 0
correct_answers = 0

# Function to check the value of total_apples
grade_quiz <- function() {
  
  # QUESTION 1
  if (exists("total_apples")) {
    if (total_apples == 8) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz 1 is incorrect!")
    }
  } else {
    message("Quiz 1 is incorrect: total_apples is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2
  if (exists("total_candies")) {
    if (total_candies == 6) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz 2 is incorrect!")
    }
  } else {
    message("Quiz 2 is incorrect: total_candies is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 3
  if (exists("total_cost")) {
    if (total_cost == 7 * 2) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz 3 is incorrect!")
    }
  } else {
    message("Quiz 3 is incorrect: total cost is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 4.a
  if (exists("b4")) {
    if (b4 == 88) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz4.a is incorrect!")
    }
  } else {
    message("Quiz 4.a is incorrect: b4 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 4.b
  if (exists("m4")) {
    if (m4 == 76 - 10) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz4.b is incorrect!")
    }
  } else {
    message("Quiz4.b is incorrect: m4 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 4.c
  if (exists("p4")) {
    if (p4 == 25 * 25) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz4.c is incorrect!")
    }
  } else {
    message("Quiz4.c is incorrect: p4 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 4.d
  if (exists("h4")) {
    if (h4 == 42/14) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz4.d is incorrect!")
    }
  } else {
    message("Quiz4.d is incorrect: h4 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 5
  if (exists("area")) {
    if (area == 8 * 5) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz5 is incorrect!")
    }
  } else {
    message("Quiz5 is incorrect: area is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 6
  if (exists("distance")) {
    if (distance == 3 * 60) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz6 is incorrect!")
    }
  } else {
    message("Quiz6 is incorrect: distance is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 7.a
  if (exists("z")) {
    if (z == 5 + 3 * 2) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz7 is incorrect!")
    }
  } else {
    message("Quiz7 is incorrect: 'z' is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 7.b
  if (exists("g7")) {
    if (g7 == (8 + 2) * (5 - 3)) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz7.b is incorrect!")
    }
  } else {
    message("Quiz7.b is incorrect: 'g7' is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 7.c
  if (exists("f7")) {
    if (f7 == 9 + (6 - 2) * 3) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz7.c is incorrect!")
    }
  } else {
    message("Quiz7.c is incorrect: 'f7' is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 7.d
  if (exists("d7")) {
    if (d7 == 8 * 3 - 2^2) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz7.d is incorrect!")
    }
  } else {
    message("Quiz7.d is incorrect: 'd7' is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 7.e
  if (exists("k7")) {
    if (k7 == (10 + 5) * (2^2) / 4) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz7.e is incorrect!")
    }
  } else {
    message("Quiz7.e is incorrect: 'k7' is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 8
  if (exists("h8")) {
    if (h8==12/3) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz8 is incorrect!")
    }
  } else {
    message("Quiz8 is incorrect: 'h8' is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 9
  if (exists("m9")) {
    if (m9==25 - 8) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz9 is incorrect!")
    }
  } else {
    message("Quiz9 is incorrect: 'm9' is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 10
  if (exists("m10")) {
    if (m10==5 * (4 + 6) - 10) {
      correct_answers = correct_answers + 1
      # message("Quiz is correct: total apples is equal to 8.")
    } else {
      message("Quiz10 is incorrect!")
    }
  } else {
    message("Quiz10 is incorrect: 'M10' is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # THE FINAL GRADE
  message(paste(correct_answers/total_questions * 100, "%"))
  
}

# Grade the quiz
grade_quiz()


