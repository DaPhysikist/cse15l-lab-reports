# Week One Lab Report

Do you want to figure out how to log into your account on ieng6 easily? This is a tutorial to get you started.

## Step One: Setting Up Your CSE15L Account
1. Visit this website: https://sdacs.ucsd.edu/~icc/index.php

2. Go down to where it says *Forgot Password or New Student* and enter your last name in the *Last Name* box and your Student ID in the *Student ID* box and click submit.

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/accessingreset.png)

3. You will be redirected to a page where you will be able to see your cse15l account username. It will look like this: `cs15lfa22xx`, with xx representing the two characters of your username that are unique. Remember this username, as you will be using it to ssh into the machine later.

4. Next, click on the username and you will see a page that offers you a link to change your password. Click on that link.

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/resetpassword.png)

5. Enter your username and Student ID and click submit. Then enter your current password (should be your AD password), enter a new password you want to use, make sure the option to change MyTritonLink password says no and click change my password.

> Note: Password reset can take anywhere from fifteen minutes to an hour to even longer. If you are having issues, contact support.

6. Once your password has been reset, you are ready to move on to the next step.

## Step Two: Downloading Visual Studio Code
1. Visit this website to download Visual Studio Code: https://code.visualstudio.com/

>Note: Visual Studio Code can only be installed on computers running Windows, Linux or OSX (Macs). If you are currently using a device that does not run on one of these operating systems, like a Chromebook or a tablet, you will need to switch to a device using one of these operating systems to continue.

2. Download the version of Visual Studio Code **appropriate to the platform you are working on** and follow the steps in the installer to install it on your machine.

3. Once it has finished installing, launch Visual Studio Code on your machine. Below is what your Visual Studio Code window might look like (there might be differences based on your system and your appearance preferences).

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/vscodeopen.png)

4. You are now ready to move on to the next step!

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

![Image](https://daphysikist.github.io/cse15l-lab-reports/week-1-lab/sshsuccess.png)

7. You can now enter commands and are ready to move on to the next step!

## Step Four: Running Commands