@echo off
rem Batch file for setting up ESS Solo-1 soundcards with the PCISET utility.
rem Made by Kamerat of vogons.org forums, version 0.1.
rem Data sheet: ftp://ftp.alsa-project.org/pub/manuals/ess/DS_1946.PDF
rem
rem                          ÚLegacy audio address decode disable (1 def)
rem                          ³ 1 disable  0 enable
rem                          ³ ÚMIDI IRQ select (010 def)
rem                          ³ ³ 000 IRQ 5   100 IRQ 11
rem                          ³ ³ 001 IRQ 7   101 IRQ 12
rem                          ³ ³ 010 IRQ 9   110 IRQ 13
rem                          ³ ³ 011 IRQ 10  111 IRQ 14
rem                          ³ ³  ÚSound Blaster IRQ select (000 def)
rem                          ³ ³  ³ 000 IRQ 5   100 IRQ 11
rem                          ³ ³  ³ 001 IRQ 7   101 IRQ 12
rem                          ³ ³  ³ 010 IRQ 9   110 IRQ 13
rem                          ³ ³  ³ 011 IRQ 10  111 IRQ 14
rem                          ³RÃÄ¿ÃÄ¿
pciset 1969 125D 41 10111111 00010000
rem                           
rem                          ÚSound Blaster DMA select (01 def)
rem                          ³ 00 DMA 0   01 DMA 1   11 DMA 3
rem                          ³ ÚI/O address aliasing control (1 def)
rem                          ³ ³ 1 10 bit I/O address
rem                          ³ ³ 0 16 bit I/O address
rem                          ³ ³ÚMPU-401 IRQ enable/mask (1 def)
rem                          ³ ³³ 1 enable  0 disable
rem                          ³ ³³ÚMPU-401 enable (1 def)
rem                          ³ ³³³ 1 enable  0 disable
rem                          ³ ³³³ÚGame port enable (1 def)
rem                          ³ ³³³³ 1 enable  0 disable
rem                          ³ ³³³³ÚFM synthesis enable (1 def)
rem                          ³ ³³³³³ 1 enable  0 disable
rem                          ³ ³³³³³ÚSound Blaster channel enable (1 def)
rem                          ³ ³³³³³³ 1 enable   0 disable
rem                          Ã¿³³³³³³
pciset 1969 125D 40 11111111 01111111
rem
rem                                 ÚISA serial IRQ enable
rem                                 ³ 1 enable  0 disable
rem                          RRRRRRR³
pciset 1969 125D 52 00000001 00000000
rem
rem                           ÚISA IRQ emulation policy (00 def)
rem                           ³ 00 Emulation disabled
rem                           ³ 01 PCI IRQ is one of IRQ 5/7/9/10
rem                           ³ 10 PCI IRQ is not one of IRQ 5/7/9/10
rem                           ³   ÚSB DMA emulation  (000 def)
rem                           ³   ³ 000 DDMA
rem                           ³   ³ 001 TDMA
rem                           ³   ³ 010 PC/PCI
rem                           ³   ³ 100 101 110 111 WBDMA modes?
rem                          RÃ¿RRÃÄ¿
pciset 1969 125D 51 01100111 00000001
rem
rem                             ÚMPU base address select (00 def)
rem                             ³ 00 330h   10 320h
rem                             ³ 01 300h   11 340h
rem                             ³ ÚSB base address select (0 def)
rem                             ³ ³ 0 220h   1 240h
rem                          RRRÃ¿³R-
pciset 1969 125D 50 00011100 00000000
rem
rem                          ÚDDMA base address cont. reg. 60, (00000000 def)     
rem                          ÃÄÄÄÄÄÄ¿
pciset 1969 125D 61 11111111 00000000
rem
rem                          ÚDDMA base address, starts at reg. 61 (0000 def)     
rem                          ³      ÚDDMA enable (0 def)
rem                          ³      ³ 1 enable   0 disable
rem                          ÃÄÄ¿RRR³
pciset 1969 125D 60 11110001 00000000
rem
SET BLASTER=A220 I5 D1 T4
