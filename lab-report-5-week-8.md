# Lab Report Five

My Beautiful Grading Script (copyrighted):
```
CPATH=".:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar"
file="student-submission/ListExamples.java"
totalPoints=2

rm -rf student-submission
git clone $1 student-submission
cp TestListExamples.java student-submission/

if [[ -f $file ]] && [[ -e $file ]]
then
    echo "File exists!"
else
    echo "File not found!"
    echo "Total Points: 0/2"
    exit 1
fi

cd student-submission

javac -cp $CPATH ListExamples.java 2>> errors.txt 

javac -target 1.8  -cp $CPATH -Xdiags:verbose TestListExamples.java 2>> errors.txt  

java -cp $CPATH  org.junit.runner.JUnitCore TestListExamples > failures.txt

if [[ $(grep -c "error: method filter" errors.txt) -ne 0 ]]
then
    let "totalPoints-=1"
    echo "[EXCEPT 0/1] testFilter"
elif [[ $(grep -c "testFilter(TestListExamples)" failures.txt) -ne 0 ]]
then
    let "totalPoints-=1"
    echo "[FAILED 0/1] testFilter"
else
    echo "[PASSED 1/1] testFilter"
fi

if [[ $(grep -c "error: method merge" errors.txt) -ne 0 ]]
then
    let "totalPoints-=1"
    echo "[EXCEPT 0/1] testMerge"
elif [[ $(grep -c "testMerge(TestListExamples)" failures.txt) -ne 0 ]]
then
    let "totalPoints-=1"
    echo "[FAILED 0/1] testMerge"
else
    echo "[PASSED 1/1] testMerge"
fi

echo "Total Points: $totalPoints/2"
```
<br/>

![Image](/week-7-lab/repo1grade.jpg)<br/>

![Image](/week-7-lab/repo2grade.jpg)<br/>

![Image](/week-7-lab/repo3grade.jpg)<br/>

Example 2 Script Trace:
* command on line 5 --> 
    * stderr: none
    * stdout: none
    * return code: 0
* command on line 6 --> 
    * stderr: none
    * stdout: Cloning into 'student-submission'...
    * return code: 0
* command on line 7 -->
    * stderr: none
    * stdout: none
    * return code: 0
* if statement on line 9 -->  condition evaluates to true because the file ListExamples exists in the cloned directory
* command on line 11 -->
    * stderr: none
    * stdout: File exists!
    * return code: 0
* lines 12-15 do not run
* command on line 18 -->
    * stderr: none
    * stdout: none
    * return code: 0
* command on line 20 -->
    * stderr: none
    * stdout: none
    * return code: 0
* command on line 22 -->
    * stderr: none
    * stdout: none
    * return code: 0
* command on line 24 -->
    * stderr: none
    * stdout: <br/>
    JUnit version 4.13.2 <br/>
    .. <br/>
    Time: 0.015 <br/><br/>
    OK (2 tests) <br/>

    * return code: 0
* if statement on line 26 --> condition evaluates to false since there is no error for running testFilter
* lines 27-29 do not run
* elif statement on line 30 --> condition evaulates to false since there is no JUnit failure for running testFilter
* lines 31-33 do not run
* command on line 35 --> 
    * stderr: none
    * stdout: [PASSED 1/1] testFilter
    * return code: 0
* if statement on line 38 --> condition evaluates to false since there is no error for running testMerge
* lines 39-41 do not run
* elif statement on line 42 --> condition evaulates to false since there is no JUnit failure for running testMerge
* lines 43-45 do not run
* command on line 47 -->
    * stderr: none
    * stdout: [PASSED 1/1] testMerge
    * return code: 0
* command on line 50 -->
    * stderr: none
    * stdout: Total Points: 2/2
    * return code: 0

