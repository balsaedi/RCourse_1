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
  
  # QUESTION 1
  if (exists("length", envir = env)) {
    if (env$length == 61.2) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1 is incorrect!")
    }
  } else {
    message("Quiz 1 is incorrect: length is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2
  
  
  # THE FINAL GRADE
  message(paste("Total Graded Questions: ", total_questions))
  message(paste("Correct Answers: ", correct_answers))
  message(paste(correct_answers/total_questions * 100, "%"))
}

grade_quiz("code_challenges/submissions/cc2/examiners_02.R")