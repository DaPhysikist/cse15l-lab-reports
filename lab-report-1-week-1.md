# Lab Report One

Do you want to figure out how to log into your account on ieng6 easily? This is a tutorial to get you started.

## Step One: Setting Up Your CSE15L Account
1. Visit this website: [Setup Account](https://sdacs.ucsd.edu/~icc/index.php)

2. Go down to where it says *Forgot Password or New Student* and enter your last name in the *Last Name* box and your Student ID in the *Student ID* box and click submit.

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/accessingreset.jpg)

3. You will be redirected to a page where you will be able to see your cse15l account username. It will look like this: `cs15lfa22xx`, with xx representing the two characters of your username that are unique. Remember this username, as you will be using it to ssh into the machine later.

4. Next, click on the username and you will see a page that offers you a link to change your password. Click on that link.

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/resetpassword.jpg)

5. Enter your username and Student ID and click submit. Then enter your current password (should be your AD password), enter a new password you want to use, **make sure the option to change MyTritonLink password is selected as *no*** and click change my password.

> Note: Password reset can take anywhere from fifteen minutes to an hour to even longer. If you are having issues, contact support.

6. Once your password has been reset, you are ready to move on to the next step.

---
## Step Two: Downloading Visual Studio Code
1. Visit this website to download Visual Studio Code: [Install Visual Studio](https://code.visualstudio.com/)

>Note: Visual Studio Code can only be installed on computers running Windows, Linux or OSX (Macs). If you are currently using a device that does not run on one of these operating systems, like a Chromebook or a tablet, you will need to switch to a device using one of these operating systems to continue.

2. Download the version of Visual Studio Code **appropriate to the platform you are working on** and follow the steps in the installer to install it on your machine.

3. Once it has finished installing, launch Visual Studio Code on your machine. Below is what your Visual Studio Code window might look like (there might be differences based on your system and your appearance preferences).

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/vscodeopen.jpg)

4. You are now ready to move on to the next step!

---
## Step Three: Remotely Connecting to the Server
1. At the top of your Visual Studio window, you should see a *Terminal* tab. Click on it and then click *New Terminal* to open a terminal window at the bottom. Resize the window by dragging it up so that it is easier to view commands.

2. If you are on Windows, visit this link to install OpenSSH (**client version**) if its not already installed: [Install OpenSSH](https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse)

3. Enter this command into terminal with the xx replaced by the unique last two characters of your username and then press enter:
```
ssh cs15lfa22xx@ieng6.ucsd.edu
```

4. It will tell you that the authenticity of the host can't be established. Type `yes` and hit enter to continue.

5. It will then ask you for your password. Enter the new password you created when you reset your password earlier, then hit enter.

6. You will see a bunch of information come up as seen in the image below and then a prompt will appear.

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/sshsuccess.jpg)

7. You can now enter commands and are ready to move on to the next step!

> Note: Use CTRL + D (CMD + D on Mac) or type `exit` into the prompt and hit enter in order to exit out of ssh and return to your local machine's filesystem.

---
## Step Four: Running Commands
Try running some commands both on the remote computer (after sshing) and on your local computer. Here is a list of some useful commands:

* `cd ~` : switches to to your home directory on Linux machines including the ieng6 remote machine
* `cd /` : switches to the root directory
* `cd ..` : switches to the parent directory of the current directory
* `cd` *``childdirectoryname``* : switches to a child directory of the current directory
* `cd` *``fulldirectorypath``* : switches to any directory based on the specified path
* `ls` : lists all the files and subdirectories in the current directory except those starting with .
* `ls` *``fulldirectorypath``* : lists all the files and subdirectories in the directory of the specified path except those starting with .
* `ls -a` : lists all the files and subdirectories in the current directory including those starting with .
* `ls -lat` : lists all the files and subdirectories in the current directory including those starting with . in a long listing format sorted by modification time - includes file/subdirectory permissions
* `cat` *``fullfilepath``* : prints out the contents of the specified file
* `cp` *``fullfilepath``* *``destinationpath``* : copies a file to a specified destination path
* `pwd` : prints out full path of current directory
* `ifconfig` (`ipconfig` on Windows) : prints out network information of machine
* `scp` *``filepath``* *``destinationhostaddress:destinationfilepath``* : copies a file from a local host computer to a remote host computer

> Note: You can run a command by typing in the command name (ex. cd) and the command parameters (ex: C:/), and then pressing enter.

Here is an example:

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/commands.jpg)

---
## Step Five: Moving Files with `scp`
1. Create a file using Visual Studio Code named `WhereAmI.java`.
2. Copy and paste the following code into it:
```
class WhereAmI {
  public static void main(String[] args) {
    System.out.println(System.getProperty("os.name"));
    System.out.println(System.getProperty("user.name"));
    System.out.println(System.getProperty("user.home"));
    System.out.println(System.getProperty("user.dir"));
  }
}
```
3. Exit out of ssh and use the command `javac WhereAmI.java` in the terminal to compile the file. Then use the command `java WhereAmI` to run the file, which should display system, user and directory information.

> Note: You need java installed on your local machine to complete this step. Get Java here: [Java JDK Download](https://www.oracle.com/java/technologies/downloads/)

4. Next, use the command `scp WhereAmI.java cs15lfa22xx@ieng6.ucsd.edu:~/` in the terminal, replacing xx with the two unqiue characters from your username. Enter your password when prompted. This command will copy the java file you just created over to the ieng6 server.

5. After sshing into the remote server, use the commands `javac WhereAmI.java` and `java WhereAmI` again and notice that there are different results this time.

6. You are now ready to move on to the next step.

Example:

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/scp.jpg)

---
## Step Six: Setting an SSH Key

An SSH Key will remove the need for you to enter a password every time you ssh into ieng6 or use scp, making both processes quicker and smoother. The following steps outline how to set one up (if your machine does not use Windows skip steps 3-6):

1. Make sure you are logged out of ssh and are in your local machine's filesystem. If you are using Windows, switch to using Powershell as an administrator instead of the terminal from Visual Studio Code. Next, enter the command `ssh-keygen`, which creates a pair of files on your local machine called the **public key** and **private key**.

2. Hit enter when the terminal prompts you to enter a file to save the key in and then enter your SSH password when the terminal prompts you to enter your passphrase. The terminal will tell you the path where your SSH public key was stored. Take note of this path.

3. Run the command `Get-Service ssh-agent | Set-Service -StartupType Automatic`.

4. Run the command `Start-Service ssh-agent`.

5. Run the command `Get-Service ssh-agent`.

6. Run the command `ssh-add $env:USERPROFILE\.ssh\id_rsa`.

7. SSH into the ieng6 server. Use the `mkdir .ssh` command to make a directory to store your ssh public key in on the server. Exit ssh and use the command `scp` *``publickeypath``* `cs15lfa22xx@ieng6.ucsd.edu:~/.ssh/authorized_keys` to copy the public key over to the ieng6 server, replacing xx with the unique two characters from your username and *publickeypath* with the path the terminal told you of before.

8. You should now be able to ssh and scp from your local machine into ieng6 without needing a password.

Example:

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/sshkeypart1.jpg)
![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/sshkeypart2.jpg)

---
## Step Seven: Optimizing Remote Running (Windows Version)
In order to optimize remote running, we want to limit the process of copying saved changes to a file made locally to the remote server and running it with under 10 keystrokes/mouseclicks. The process below outlines a way to achieve this ideal:

1. Open notepad.
2. Copy paste the following lines of commands into the file, substituting **xx** for the unique two characters in your username:

```
scp WhereAmI.java cs15lfa22xx@ieng6.ucsd.edu:~/
ssh cs15lfa22xx@ieng6.ucsd.edu javac WhereAmI.java; java WhereAmI
PAUSE
```

3. Click *File*, *Save As*, and save the file as `bf.bat` (bf is shortform for batch file haha) in the same directory that your java file is stored in on your local machine.
4. Go to the terminal in Visual Studio Code and run the command `.\bf`. Everything should work correctly assuming you already setup SSH keys on the machine.
5. Congrats! With just one mouseclick and five keystrokes including the enter key, this is a super optimized way to save and run your code on the ieng6 server remotely.

Example:

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/optimization.jpg)