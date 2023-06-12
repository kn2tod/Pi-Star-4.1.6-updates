# Pi-Star-4.1.x-Plus
An augmented version of Pi-Star 4.1.x that tracks with the original. 

The file(s) included in this repository are provided as a means to seemlessly switch from the native Pi-Star respositories to equivalent (parellel, forked) repositories that include new and extended features.  The intent is to provide incremental improvements and developments in Pi-Star while allowing one to revert to the original (current) Pi-Star with minimum effort and no disruptions.

=======================================================================

The main features of this extended release are:

1) LH (Last Heard) line depth control added
2) Dashboard width control added
3) Mouse-over Callsign/Talkgroup information
4) Backup/restore of MMDVM logs over boots
5) LH/LL toggle: Live Log presented in LH form
6) Fix for M1ABC revert after updates
7) Display activity for duplex hats correctly
8) Modified to allow system to boot from USB's
9) Calibration/Sysinfo panels added to Expert selections
10) Numerous bug fixes + optimization
11) Prep system for conversion to Bullseye, later version of Python

=======================================================================

Installation:

Download the installation file, either manually or via GitHub:

  rpi-rw
  
  wget -r 'https://raw.githubusercontent.com/kn2tod/Pi-Star-4.1.x-Plus/main/GIT-Remote-Set.sh'

Next, run it:

  sudo bash GIT-Remote-Set.sh kn2tod

Then, from the expert dashboard, run:

  Update
  
  Upgrade

You won't see much for these two processes, particularily the upgrade process, but the upgrade sets up some background tasks and settings that are required to get the full benefits of the this Pi-Star version.

And you're good to go: run your hotspot as you have before. Future fixes and improvements will be delievered via the usual update process, either manually invoked from the dashboard or via the nightly processing. The additional host files utilized by this version are also updated via the same processes.

-

In the unlikely situation you decide or need to revert back to the original Pi-Star files, run the following:

  sudo bash GIT-Remote-Set.sh mw0mwz

=======================================================================

(tbc)

.\\ark
kn2tod@arrl.net

