## Introduction<br>
Many Blockchain enthusiast may have been obstacled in the process of installing environment including npm, truffle, ganache-cli, Drizzle and so on.This article explaines the revolutions of a variety of errors while you are executing the code in the system terminal of Linux in detail.Moreover, I will explain from the installation of  Ubuntu.
## 1.Ubuntu 
If computer is based on the system Windows and you are fond of developing procedures of Blockchain on the system Linux, I recommend you to choose the Windows subsystem for Linux instead of Linux virtual machine since you are able to cope with your documents and link network more conveniently.
In addition,according to my experience,you may often get into trouble during the development if you use the virtual machine.As for how to start the Windows subsystem for Linux,the process is so easy.Please access to information by yourselves.What I want to emphasize is that after you install it successfully,you may enter into the system by searching "bash".The method may be good for you to manage the files.<br>
## 2.Root permission
It is an good habit for us to import our codes in the Linux terminal in the identity of "root".The specific codes are as follows.<br>
```
sudo passwd root                       //set your password
[sudo] password for ###:
New password:                          //the letters will not show
Retype new password:
passwd: password updated successfully
su                                     //import your passwd
Password:                              //Once time and you will be the root
```
## 3.NPM
Npm is indispensible in the installing truffle and drizzle.
```
sudo apt-get update
sudo apt-get install npm
```
## 4.Truffle
The codes of installing are as follows.
```
npm install -g truffle@5.0.1                   
mkdir newfile                                  
cd newfile                      
truffle init
```
```
/*Different version may causes the conflict between the solidity codes 
    of smart  contracts and the version of solcjs.*/
/*In general,if we use npm to install documents,we should execute"npm init".
    However,it will generate the file"package.json" and has an influence on the 
    installing of truffle seeing that the "truffle init"should be executed in an empty file.*/
```
If you have been in the obstacles as follows,please read the rest carefully.
```
Error: Error: Error: Error making request to https://raw.githubusercontent.com/truffle-box/drizzle-box/master/truffle-box.json.
Got error: Client network socket disconnected before secure TLS connection was established.
Please check the format of the requested resource.
    at Object.unbox (/usr/local/lib/node_modules/truffle/build/webpack:/packages/truffle-box/box.js:65:1)<br>
    at process._tickCallback (internal/process/next_tick.js:68:7)<br>
Truffle v5.0.1 (core: 5.0.1)<br>
Node v10.19.0<br>
```
or as follows
```
Error: Error: Error making request to https://raw.githubusercontent.com/truffle-box/drizzle-box/master/truffle-box.json. 
Got error: connect ECONNREFUSED 185.199.###.133:443. 
Please check the format of the requested resource.
    at Object.unbox (/usr/local/lib/node_modules/truffle/build/webpack:/packages/truffle-box/box.js:65:1)
    at process._tickCallback (internal/process/next_tick.js:68:7)
Truffle v5.0.1 (core: 5.0.1)
Node v10.19.0
```
or as follows
```
Error: Error: Error: Error making request to https://raw.githubusercontent.com/truffle-box/pet-shop-box/master/truffle-box.json. 
Got error: socket hang up. 
Please check the format of the requested resource.
    at Object.unbox (/usr/local/lib/node_modules/truffle/build/webpack:/packages/truffle-box/box.js:65:1)
    at process._tickCallback (internal/process/next_tick.js:68:7)
Truffle v5.0.1 (core: 5.0.1)
Node v10.19.0
```
or as follows
```
Error: Error: Error: Error making request to https://raw.githubusercontent.com/truffle-box/pet-shop-box/master/truffle-box.json. 
Got error: connect ECONNREFUSED 185.199.110.133:443.
 Please check the format of the requested resource.
    at Object.unbox (/usr/local/lib/node_modules/truffle/build/webpack:/packages/truffle-box/box.js:65:1)
    at process._tickCallback (internal/process/next_tick.js:68:7)
Truffle v5.0.1 (core: 5.0.1)
Node v10.19.0
```
To begin with:
```
sudo nano etc/hosts

```
Open the edit interface.
Then, search for the IP of raw.githubusercontent.com by entering into 
[IPAddress.com](https://www.ipaddress.com/ip-lookup)
and add it to the file"hosts".If there are more than one IP,you need to try one by one.
Moreover,use your mobile's wifi and return to the "newfile".
```                  
truffle init
```
You may still fail and see the errors above.It doesn't matter.Just try once more and you will discover <br>
the same codes and the same network will lead to the different returns.Just do it.<br>
If you succeed,you will see it as follows.
```
 Preparing to download
✔ Downloading
✔ Cleaning up temporary files
✔ Setting up box

Unbox successful. Sweet!

Commands:

  Compile:        truffle compile
  Migrate:        truffle migrate
  Test contracts: truffle test
  Run dev server: npm run dev
```

