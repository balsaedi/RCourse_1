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
    if (env$head_toothgrowth==head_toothgrowth_marker) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 1.b is incorrect!")
    }
  } else {
    message("Quiz 1.b is incorrect: head_toothgrowth is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2
  ## Marker
  penguin_data_marker = read.csv("data/penguins_lter.csv")
  ## 
  if (exists("penguin_data", envir = env)) {
    if (env$penguin_data==penguin_data_marker) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2 is incorrect!")
    }
  } else {
    message("Quiz 2 is incorrect: penguin_data is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.a
  ## Marker
  library(dplyr)
  selected_features_marker = select(penguin_data_marker,
                             Species, Island, Flipper.Length..mm.)
  
  ##
  if (exists("selected_features", envir = env)) {
    if (env$selected_features==selected_features_marker) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.a is incorrect!")
    }
  } else {
    message("Quiz 2.a is incorrect: selected_features is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.b
  ## Marker
  Adelie_data_marker = filter(penguin_data_marker,
                       Species=="Adelie Penguin (Pygoscelis adeliae)")
  ##
  if (exists("Adelie_data", envir = env)) {
    if (env$Adelie_data==Adelie_data_marker) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.b is incorrect!")
    }
  } else {
    message("Quiz 2.b is incorrect: Adelie_data is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.c
  ## Marker
  ordered_penguin_data_marker = arrange(penguin_data_marker,
                                 desc(Flipper.Length..mm.))
  
  ##
  if (exists("ordered_penguin_data", envir = env)) {
    if (env$ordered_penguin_data==ordered_penguin_data_marker) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.c is incorrect!")
    }
  } else {
    message("Quiz 2.c is incorrect: ordered_penguin_data is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.d
  ## Marker
  modified_penguin_data_marker = mutate(penguin_data_marker, 
                                 Flipper.Length..cm. = Flipper.Length..mm./10)
  ##
  if (exists("modified_penguin_data", envir = env)) {
    if (env$modified_penguin_data==modified_penguin_data_marker) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.d is incorrect!")
    }
  } else {
    message("Quiz 2.d is incorrect: modified_penguin_data is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 2.e
  ## Marker
  penguin_data_by_island_marker = group_by(penguin_data_marker, 
                                    Island) %>% # the column to be grouped by
    tally()
  ##
  if (exists("penguin_data_by_island", envir = env)) {
    if (env$penguin_data_by_island==penguin_data_by_island_marker) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 2.e is incorrect!")
    }
  } else {
    message("Quiz 2.e is incorrect: penguin_data_by_island is not defined.")
  }
  
  total_questions = total_questions + 1
  
  # QUESTION 3
  ## Marker
  final_penguin_data_marker = select(penguin_data_marker, # insert name of the original penguin dataframe
                              Island, Body.Mass..g., Species, Flipper.Length..mm.) %>% # insert the selected columns 
    filter(Flipper.Length..mm.>195) %>% # insert the flipper length column name 
    mutate(Flipper.Length..cm. = Flipper.Length..mm./10) %>% # insert the flipper length column name
    arrange(desc(Body.Mass..g.)) # Insert body mass g column name
  
  ##
  if (exists("final_penguin_data", envir = env)) {
    if (env$final_penguin_data==final_penguin_data_marker) {
      correct_answers = correct_answers + 1
    } else {
      message("Quiz 3 is incorrect!")
    }
  } else {
    message("Quiz 3 is incorrect: final_penguin_data is not defined.")
  }
  
  total_questions = total_questions + 1

  # THE FINAL GRADE
  message(paste("Total Graded Questions: ", total_questions))
  message(paste("Correct Answers: ", correct_answers))
  message(paste(round(correct_answers/total_questions * 100, 0), "%"))
}

# Define the directory to walk through the said directory
directory <- "code_challenges/submissions/cc5"  

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