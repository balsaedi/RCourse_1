# A grading function to grade challenge 2 for students 
grade_quiz <- function(filename) {
  total_questions = 0
  correct_answers = 0
  
  # Create a local environment to store variables
  env <- new.env()
  
  # Source the student's quiz script
  tryCatch({
    source(filename, local = env)
    print(ls(env))
  }, error = function(e) {
    # Handle any errors that occur during sourcing
    return(paste(filename, "Error in script -", e$message))
  })
  
  print(paste("ENVIRONMENT VALUE: ", env$length))
  
  # QUESTION 1.a.i
  if (exists("length", envir = env)) {
    if (env$length == 61.2) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.a.i is incorrect!")
    }
  } else {
    message("Quiz 1.a.i is incorrect: length is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 1.a.ii
  if (exists("age", envir = env)) {
    if (env$age == 76) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.a.ii is incorrect!")
    }
  } else {
    message("Quiz 1.a.ii is incorrect: age is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 1.a.iii
  if (exists("is_old", envir = env)) {
    if (env$is_old == TRUE) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.a.iii is incorrect!")
    }
  } else {
    message("Quiz 1.a.iii is incorrect: is_old is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 1.a.iv
  if (exists("name", envir = env)) {
    if (env$name == "Pradip") {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.a.iv is incorrect!")
    }
  } else {
    message("Quiz 1.a.iv is incorrect: name is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 1.a.v
  if (exists("comp_var", envir = env)) {
    if (env$comp_var == 2 + 3i) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.a.v is incorrect!")
    }
  } else {
    message("Quiz 1.a.v is incorrect: comp_var is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 1.c
  if (exists("width", envir = env)) {
    if (env$width == 12.1) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.c is incorrect!")
    }
  } else {
    message("Quiz 1.c is incorrect: width is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 1.c.i length1B
  if (exists("length1B", envir = env)) {
    if (env$length1B == 22.5) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.c.i is incorrect!")
    }
  } else {
    message("Quiz 1.c.i is incorrect: length1B is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 1.c.i result1a
  if (exists("result1a", envir = env)) {
    if (env$result1a == 34.6) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.c.i is incorrect!")
    }
  } else {
    message("Quiz 1.c.i is incorrect: result1a is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 1.c.ii result1b
  if (exists("result1b", envir = env)) {
    if (env$result1b == 10.4) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.c.ii is incorrect!")
    }
  } else {
    message("Quiz 1.c.ii is incorrect: result1b is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 1.c.iii
  if (exists("area", envir = env)) {
    if (env$area == 272.25) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.c.iii is incorrect!")
    }
  } else {
    message("Quiz 1.c.iii is incorrect: area is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2
  if (exists("my_vector", envir = env)) {
    if (identical(env$my_vector, c(12, 54, 76, 71, 42, 75, 33))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.a.iv is incorrect!")
    }
  } else {
    message("Quiz 1.a.iv is incorrect: my_vector is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.a.1
  if (exists("dim2", envir = env)) {
    if (identical(env$dim2, NULL)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.a.1 is incorrect!")
    }
  } else {
    message("Quiz 2.a.1 is incorrect: dim2 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.b.i
  if (exists("b4", envir = env)) {
    if (env$b4 == 71) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.b.i is incorrect!")
    }
  } else {
    message("Quiz 2.b.i is incorrect: b4 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.b.ii
  if (exists("my_vector_1", envir = env)) {
    if (identical(env$my_vector_1, c(54, 76, 71, 42))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.b.ii is incorrect!")
    }
  } else {
    message("Quiz 2.b.ii is incorrect: my_vector_1 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.b.iii
  if (exists("my_vector_2", envir = env)) {
    if (identical(env$my_vector_2, c(12, 54, 76, 42, 75, 33))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.b.iii is incorrect!")
    }
  } else {
    message("Quiz 2.b.iii is incorrect: my_vector_2 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.b.iv
  if (exists("reversed_vector", envir = env)) {
    if (identical(env$reversed_vector, c(33, 75, 42, 71, 76, 54, 12))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.b.iv is incorrect!")
    }
  } else {
    message("Quiz 2.b.iv is incorrect: reversed_vector is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 3 vector1
  if (exists("vector1", envir = env)) {
    if (identical(env$vector1, c(12, 76, 45, 23, 64, 88))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 3 is incorrect!")
    }
  } else {
    message("Quiz 3 is incorrect: vector1 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 3 vector2
  if (exists("vector2", envir = env)) {
    if (identical(env$vector2, c(22, 87, 10, 5, 99, 54))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 3 is incorrect!")
    }
  } else {
    message("Quiz 3 is incorrect: vector2 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 3.a
  if (exists("summary1", envir = env)) {
    if (identical(env$summary1, summary(vector1))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 3.a is incorrect!")
    }
  } else {
    message("Quiz 3.a is incorrect: summary1 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 3.b
  if (exists("vector3", envir = env)) {
    if (identical(env$vector3, c(19, 83, 52, 30, 71, 95))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 3.b is incorrect!")
    }
  } else {
    message("Quiz 3.b is incorrect: vector3 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 3.c
  if (exists("vector4", envir = env)) {
    if (identical(env$vector4, c(19, 84,  7,  2, 96, 51))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 3.c is incorrect!")
    }
  } else {
    message("Quiz 3.c is incorrect: vector4 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 3.d
  if (exists("vector5", envir = env)) {
    if (identical(env$vector5, c(34, 163,  55,  28, 163, 142))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 3.d is incorrect!")
    }
  } else {
    message("Quiz 3.d is incorrect: vector5 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 3.e
  if (exists("vector6", envir = env)) {
    if (identical(round(env$vector6, 7), c(0.5454545, 0.8735632, 4.5000000, 4.6000000, 0.6464646, 1.6296296))) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 3.e is incorrect!")
    }
  } else {
    message("Quiz 3.e is incorrect: vector6 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  
  # THE FINAL GRADE
  message(paste("Total Graded Questions: ", total_questions))
  message(paste("Correct Answers: ", correct_answers))
  message(paste(round(correct_answers/total_questions * 100, 0), "%"))
}

# grade_quiz("code_challenges/submissions/cc2/examiners_02.R")

# Define the directory to walk through the said directory
directory <- "code_challenges/submissions/cc2"  

# List all files recursively
all_files <- list.files(path = directory, recursive = TRUE, full.names = TRUE)

quiz = 0
# Print all filenames
for (file in all_files) {
  print(paste("Assessing... ", file))
  
  # Grade the quiz
  grade_quiz(filename = file)
  
  quiz = quiz + 1
  print(paste("Graded Quiz: ", quiz))
}