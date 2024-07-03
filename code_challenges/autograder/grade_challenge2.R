source("code_challenges/submissions/cc2/11876.R")

total_questions = 0
correct_answers = 0

# Check warning message at question 11

# Function to grade challenge 2
grade_quiz <- function() {
  
  # QUESTION 1
  if (exists("length")) {
    if (length == 61.2) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1 is incorrect!")
    }
  } else {
    message("Quiz 1 is incorrect: length is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2
  if (exists("age")) {
    if (age == 76) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2 is incorrect!")
    }
  } else {
    message("Quiz 2 is incorrect: age is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 3
  if (exists("is_old")) {
    if (is_old == TRUE) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 3 is incorrect!")
    }
  } else {
    message("Quiz 3 is incorrect: is_old is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 4
  if (exists("name")) {
    if (name == "Pradip") {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 4 is incorrect!")
    }
  } else {
    message("Quiz 4 is incorrect: name is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 5
  if (exists("comp_var")) {
    if (comp_var == 2 + 3i) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 5 is incorrect!")
    }
  } else {
    message("Quiz 5 is incorrect: comp_var is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 6
  ## PASS
  
  # QUESTION 7
  if (exists("result1a")) {
    if (result1a == 34.6) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 7 is incorrect!")
    }
  } else {
    message("Quiz 7 is incorrect: result1a is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 8
  if (exists("result1b")) {
    if (result1b == 10.4) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 8 is incorrect!")
    }
  } else {
    message("Quiz 8 is incorrect: result1b is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 9
  if (exists("area")) {
    if (area == 272.25) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 9 is incorrect!")
    }
  } else {
    message("Quiz 9 is incorrect: area is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 10
  ## PASS
  
  # QUESTION 11
  if (exists("my_vector")) {
    if (my_vector == c(12, 54, 76, 71, 42, 75, 33)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 11 is incorrect!")
    }
  } else {
    message("Quiz 11 is incorrect: my_vector is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 12
  if (exists("dim2")) {
    if (dim2 == dim(c(12, 54, 76, 71, 42, 75, 33))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 11 is incorrect!")
    }
  } else {
    message("Quiz 11 is incorrect: my_vector is not defined.")
  }
  
  total_questions = total_questions + 1
  
  
  # THE FINAL GRADE
  message(paste(correct_answers/total_questions * 100, "%"))
  
}

# Grade the quiz
grade_quiz()