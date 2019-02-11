# Get all the lesson LaTeX files in this directory
$lessons = Get-ChildItem -Path lesson*.tex
# Create a new directory called "out" to store all the output .pdf files
if(!(Test-Path -Path out )){
    New-Item -ItemType directory -Path out
}

# Compile each lesson file to pdf
ForEach ($lesson in $lessons) {
    $filename = $lesson.Name.Split(".")[0]
    xelatex $lesson.Name -output-directory=out
}

DEL out\*.aux
DEL out\*.log
DEL out\*.out
