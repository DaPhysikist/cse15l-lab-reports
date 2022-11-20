# Create your grading script here

set -e

rm -rf student-submission
git clone $1 student-submission

echo "successfully copy"
cd student-submission

if [-e ListExamples.java];
then
    echo "The file exist"
else
    echo "The file not found"
    exit
fi