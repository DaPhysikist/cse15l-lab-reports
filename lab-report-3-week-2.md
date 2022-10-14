# Lab Report Two

## Part One

### Search Engine Code:

```
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;

class Handler implements URLHandler {
    // The one bit of state on the server: a number that will be manipulated by
    // various requests.
    ArrayList<String> listOfStrings = new ArrayList<>();

    public String handleRequest(URI url) {
        if (url.getPath().equals("/")) {
            return String.format("List of Strings: %s.", listOfStrings.toString());
        } 
        else {
            System.out.println("Path: " + url.getPath());
            if (url.getPath().contains("/add")) {
                String[] parameters = url.getQuery().split("=");
                if (parameters[0].equals("s")) {
                    listOfStrings.add(parameters[1]);
                    return String.format("Added string %s! List now contains %d strings.", parameters[1], listOfStrings.size());
                }
            }
            else if(url.getPath().contains("/search")){
                String[] parameters = url.getQuery().split("=");
                if (parameters[0].equals("s")) {
                    ArrayList<String> toReturn = new ArrayList<>();
                    for (String s : listOfStrings){
                        if (s.contains(parameters[1])){
                            toReturn.add(s);
                        }
                    }
                    return String.format("%d strings found matching query! Strings are: %s.", toReturn.size(), toReturn.toString());
                }
            }
            return "404 Not Found!";
        }
    }
}

class SearchEngine  {
    public static void main(String[] args) throws IOException{
        if(args.length == 0){
            System.out.println("Missing port number! Try any number between 1024 to 49151");
            return;
        }

        int port = Integer.parseInt(args[0]);

        Server.start(port, new Handler());
    }
}
```
</br>

### Search Engine Homepage:

![Image](/week-3-lab/serveraccessurl.jpg)

* hehe
* 
* 

</br>

### Search Engine Add:

![Image](/week-3-lab/serveraddurl.jpg)

* hehe
* 
* 

</br>

### Search Engine Query:

![Image](/week-3-lab/serverqueryurl.jpg)

* hehe
* 
* 

</br>

### Search Engine 404 Error:

***404 ![Image](/week-3-lab/server404.jpg) File Not Found***

---

</br>

## Part 2


### Bug One Buggy Code:

![Image](/week-3-lab/arraytestsreversedbug.jpg)

### Bug One Test Input:

![Image](/week-3-lab/arraytestsreversedinput.jpg)

### Bug One Symptoms:

![Image](/week-3-lab/arraytestsreversedsymptoms.jpg)

### Bug One Explaination:

##### For reversed, I used the value of  **{8, 9, 10, 11, 12, 13, 14}** to test the method. The expected value was **{14, 13, 12, 11, 10, 9, 8}**. The symptom was that *<14>* was expected but *<0>* was found instead. This is because the code set the values of the old array to the values in the new array, when it should have been setting the values in the new array to the values in the old array. Due to this, all the values in the old array were overwritten to 0. In addition, the new array should have been returned, but the old array was returned instead, which meant that an array with all the values overwritten  to 0 was returned when an array with the values properly reversed should have been returned. The code change needed to be made for this is to change `arr[i] = newArray[arr.length - i - 1]` to `newArray[i] = arr[arr.length - i -1]` and to change `return arr` to `return newArray`.

</br>
</br>


### Bug Two Buggy Code:

![Image](/week-3-lab/listtestfilterbug.jpg)

### Bug Two Test Input:

![Image](/week-3-lab/listtestsfilterinput.jpg)

 ### Bug Two Symptoms:

![Image](/week-3-lab/listtestsfiltersymptoms.jpg)

### Bug Two Explaination:

##### To test the filter method of the ListExamples class, I first created a new ArrayList using `ArrayList<String> inputList = new ArrayList<>(){{add("apple"); add("banana"); add("cherry"); add("grape");}};` and a new StringChecker using `StringChecker checker = new LetterAChecker();` (*which used an implementation of StringChecker that checked if a string contained the letter a*) to use as inputs to test the method. I expected a new ArrayList, `new ArrayList<>(){{add("apple"); add("banana"); add("grape");}}` to be returned, which would have the elements **apple**, **banana**, and **grape**, in that order. The symptom was that an ArrayList with the elements in the order **grape**, **apple**, and **banana** was returned instead, which was the opposite order of what was expected. The reason for this is that the line of code `result.add(0, s)` added the next element to the beginning of the list instead of to the end when it was iterating through all the elements. As a result, the first element that met the condition ended up at the end of the list and the last element that met the condition was the last element to be added to the front of the list, consequently ending up in the front. The first element was **apple** in the test and the last element was **grape**. The code change needed to fix this issue would be to simply change `result.add(0, s)` to `result.add(s)`.