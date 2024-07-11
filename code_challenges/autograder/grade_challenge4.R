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
  if (exists("head_yahoo_data", envir = env)) {
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
  
  # QUESTION 1.f
  ## Marker
  total_duplicates_marker = sum(duplicated(env$yahoo_data))
  
  ## Mark the script 
  if (exists("total_duplicates", envir = env)) {
    if (identical(env$total_duplicates, total_duplicates_marker)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.f is incorrect!")
    }
  } else {
    message("Quiz 1.f is incorrect: total_duplicates is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.a
  ## Marker
  vehicle_data_marker = read.csv("data/Vehicle Population Statistics.csv")
  
  ## Mark the script
  if (exists("vehicle_data", envir = env)) {
    if (identical(env$vehicle_data, vehicle_data_marker)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.a is incorrect!")
    }
  } else {
    message("Quiz 2.a is incorrect: vehicle_data is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.b
  ## Script Marker
  head_vehicle_data_marker = head(vehicle_data_marker, 6)
  tail_vehicle_data_marker = tail(vehicle_data_marker, 3)
  
  ## Mark the script
  ### First
  if (exists("head_vehicle_data", envir = env)) {
    if (identical(env$head_vehicle_data, head_vehicle_data_marker)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.b 1 is incorrect!")
    }
  } else {
    message("Quiz 1.d 1 is incorrect: head_vehicle_data is not defined.")
  }
  
  total_questions = total_questions + 1
  
  ### Second
  if (exists("tail_vehicle_data", envir = env)) {
    if (identical(env$tail_vehicle_data, tail_vehicle_data_marker)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.b2 is incorrect!")
    }
  } else {
    message("Quiz 2.b2 is incorrect: tail_vehicle_data is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.c
  ## Marker
  scooters_top_10_marker = vehicle_data_marker$Scooters[1:10]
  
  ## Mark the script
  if (exists("scooters_top_10", envir = env)) {
    if (identical(env$scooters_top_10, scooters_top_10_marker)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.c is incorrect!")
    }
  } else {
    message("Quiz 2.c is incorrect: scooters_top_10 is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.e
  ## Marker
  distinct_categories_marker = unique(vehicle_data_marker$Category)
  
  ## Mark the script
  if (exists("distinct_categories", envir = env)) {
    if (identical(env$distinct_categories, distinct_categories_marker)) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.e is incorrect!")
    }
  } else {
    message("Quiz 2.e is incorrect: distinct_categories is not defined.")
  }
  
  total_questions = total_questions + 1
  
  
  # THE FINAL GRADE
  message(paste("Total Graded Questions: ", total_questions))
  message(paste("Correct Answers: ", correct_answers))
  message(paste(round(correct_answers/total_questions * 100, 0), "%"))
}

# Define the directory to walk through the said directory
directory <- "code_challenges/submissions/cc4"  

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