MSI CUBA MS-7301 BIOS upgrade
==============================

Thanks to TheWiz, delidded.com (now defunct), uponneenalinuxiin for the instructions

Technical details
==================

This is a guide on how to upgrade the BIOS for the MSI CUBA MS-7301,
a board mostly found on older Packard Bell PCs like :
J8500, 2470, 9668, J7010, MC 2659, 9669, MC 9001, MC 9218, etc..

Max supported RAM is 4GB (the maximum the chipset can support).
Chipset is single channel memory only, so you really want
to OC the RAM as much as possible as you are going to be starved for bandwidth.

The motherboard has several interesting features :
- The VIA chipset supports the ESS Solo-1 OK under DOS (although DMA sound will work best if USB is disabled)
- Can support other 65nm processors with a BIOS upgrade like the Q6700, X3220 and L5320.
- Is quite cheap on its own. (either as a whole computer or just motherboard)

I thought this should make an ideal board for a Windows ME/XP/7 hybrid PC.

The git repo has the following provided :
- An "ESS" folder provided to enable ESS sound cards without needing a TSR or installing the Windows driver
- The tools used to modify the BIOS : MODBIN, INTELMICROCODELIST, AWDFLASH (flasher), CBROM (modifies microde in BIOS)
- A premodified BIOS with the RAM changes by TheWiz + newer microcode

Flash the modified BIOS
========================

Boot into DOS somehow either with a FreeDOS USB stick or installing Windows 95/98/ME.
You need both AWDFLASH.EXE and W7301VP2-B2.BIN.

AWDFLASH W7301VP2-B2.BIN /py /sy /cc /cp /cd /sb /r /tiny

You will need to specify the name of the BIOS file to backup before flashing.
Confirm the choices and let it run for a minute or two.
It will reboot on its boot and if sucessful, it will display the new BIOS image by TheWiz.

Resources
=========

Packard-Bell MSI CUBA MS-7301 Quad Xeon upgrade
https://uponneenalinuxiin.blogspot.com/2017/11/packard-bell-msi-cuba-ms-7301-quad-xeon.html

How to Update CPU Microcode in Award or Phoenix BIOS - For LGA 771 & 775
https://web.archive.org/web/20140629084929/https://www.delidded.com/how-to-update-cpu-microcode-in-award-or-phoenix-bios/


