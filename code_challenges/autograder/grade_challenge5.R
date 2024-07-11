# A grading function to grade challenge 4 for students 
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
  
  print(paste("ENVIRONMENT VALUE: ", env$head_toothgrowth))
  
  # QUESTION 1.b
  ## Marker
  head_toothgrowth_marker = head(data("ToothGrowth"), 5)
  
  ##
  if (exists("head_toothgrowth", envir = env)) {
    if (identical(env$head_toothgrowth, head_toothgrowth_marker)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.b is incorrect!")
    }
  } else {
    message("Quiz 1.b is incorrect: head_toothgrowth is not defined.")
  }
  
  total_questions = total_questions + 1

  
  
  # THE FINAL GRADE
  message(paste("Total Graded Questions: ", total_questions))
  message(paste("Correct Answers: ", correct_answers))
  message(paste(round(correct_answers/total_questions * 100, 0), "%"))
}

filename = "code_challenges/submissions/cc5/examiners_05.R"

grade_quiz(filename)