# Use trycatch when doing something that might fail, but you can fix
# Error trapping is polite code

read.table("Not_here") # error - cannot open file 'Not_here': No such file or directory

# this flags the error with some sort of warning message
tryCatch(read.table("Not_here"), 
         error = function(e) {sprintf("The error is %s!", e)},
         warning = function(w) {sprintf("Warning...Warning...%s!!!", w)},
         message = function(m) {print("Got a message")}, 
         interrupt = function(i) {print("Interrupted")}, 
         condition = function(c) {print("condition!")}
         )

# this fixes the problem, then retries
GetMyFile <- function() {
  tryCatch(read.table("Not_here"), 
         error = function(e) e ,
         warning = function(w) {
           write.table(ChickWeight, file = "Not_Here")
           GetMyFile()
           })
}
GetMyFile()
