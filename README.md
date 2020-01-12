# vagrant-apache-webmin
A couple files to get you up and running with vagrant, apache, and webmin. Just vagrant up, and go.

If you run into GPG errors due to "NO_PUBKEY" - run `sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys YOUR_KEY`
and replace "YOUR_KEY" with one of the keys the error provided.

Once you have run this command for all of the keys, run `vagrant up --provision` to re-run the provisioner and get your box started.

Port 10000 will be running webmin with a default username and password
Port 2000 will be your Apache server

Good luck and have fun! 
