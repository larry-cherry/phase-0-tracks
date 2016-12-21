# Web Servers

1. What are some key design philosophies of the Linux Operating System?
	* Linux is not designed with the traditional Unix development structure in mind. Linux itself is a very open operating system and is normally developed by a group effort of volunteers. Volunteers will develop and debug the system.

	http://www.science.unitn.it/~fiorella/guidelinux/gs/node22.html

2. What is a VPS? What are the advantages of using a VPS?
	A VPS or Virtual Private Server is generally a remote server that may share the same physical hardware that other VPS systems are utilizing. Examples are amazon web services and godaddy. The advantages are price (Think volume of scale), can easily be setup and configured, and can be setup with almost any software that runs the installed OS. 

	https://en.wikipedia.org/wiki/Virtual_private_server

3. Why is it considered a bad idea to run programs as the root user on a Linux system? 
	* Root is generally the highest level user of the Linux operating system. Think of it as the primary Administrator on a windows computer. It has the ability to modify and override many files and processes on your system. If for some reason a program may have a bug and attempts to remove important information like client information for example it has no restrictions from stopping it. The same can be said about a user. A user may have access to modify or read certain key files but what if they accidently modify or delete a few file for the Operating System. The results can be devastating and the power or the root user should be used only when necessary. By having other users besides the root user you can implement meaningful security measures that can be very valuable for keeping a production system up and running.  
