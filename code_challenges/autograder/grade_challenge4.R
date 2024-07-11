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
  
  #print(paste("ENVIRONMENT VALUE: ", env$length))
  
  # QUESTION 1.b
  yahoo_data_marker = read_excel("data/yahoo_data.xlsx")
  
  ## Mark the script
  if (exists("yahoo_data", envir = env)) {
    if (identical(env$yahoo_data, yahoo_data_marker)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.b is incorrect!")
    }
  } else {
    message("Quiz 1.b is incorrect: yahoo data is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 1.d
  ## Script Marker
  head_yahoo_data_marker = head(yahoo_data_marker, 4)
  tail_yahoo_data_marker = tail(yahoo_data_marker, 10)
  
  ## Mark the script
  ### First
  if (exists("head_yahoo_data_marker", envir = env)) {
    if (identical(env$head_yahoo_data, head_yahoo_data_marker)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.d 1 is incorrect!")
    }
  } else {
    message("Quiz 1.d 1 is incorrect: head_yahoo_data is not defined.")
  }
  
  total_questions = total_questions + 1
  
  ### Second
  if (exists("tail_yahoo_data", envir = env)) {
    if (identical(env$tail_yahoo_data, tail_yahoo_data_marker)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.d 2 is incorrect!")
    }
  } else {
    message("Quiz 1.d2 is incorrect: tail_yahoo_data is not defined.")
  }
  
  total_questions = total_questions + 1
  
  
  
  # THE FINAL GRADE
  message(paste("Total Graded Questions: ", total_questions))
  message(paste("Correct Answers: ", correct_answers))
  message(paste(round(correct_answers/total_questions * 100, 0), "%"))
}

# Test the grader 
filename = "code_challenges/submissions/cc4/examiners_04.R"

grade_quiz(filename)