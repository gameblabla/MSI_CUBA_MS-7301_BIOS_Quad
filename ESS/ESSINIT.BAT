@echo off
rem Batch file for setting up ESS Solo-1 soundcards with the PCISET utility.
rem Made by Kamerat of vogons.org forums, version 0.1.
rem Data sheet: ftp://ftp.alsa-project.org/pub/manuals/ess/DS_1946.PDF
rem
rem                          �Legacy audio address decode disable (1 def)
rem                          � 1 disable  0 enable
rem                          � �MIDI IRQ select (010 def)
rem                          � � 000 IRQ 5   100 IRQ 11
rem                          � � 001 IRQ 7   101 IRQ 12
rem                          � � 010 IRQ 9   110 IRQ 13
rem                          � � 011 IRQ 10  111 IRQ 14
rem                          � �  �Sound Blaster IRQ select (000 def)
rem                          � �  � 000 IRQ 5   100 IRQ 11
rem                          � �  � 001 IRQ 7   101 IRQ 12
rem                          � �  � 010 IRQ 9   110 IRQ 13
rem                          � �  � 011 IRQ 10  111 IRQ 14
rem                          �R�Ŀ�Ŀ
pciset 1969 125D 41 10111111 00010000
rem                           
rem                          �Sound Blaster DMA select (01 def)
rem                          � 00 DMA 0   01 DMA 1   11 DMA 3
rem                          � �I/O address aliasing control (1 def)
rem                          � � 1 10 bit I/O address
rem                          � � 0 16 bit I/O address
rem                          � ��MPU-401 IRQ enable/mask (1 def)
rem                          � �� 1 enable  0 disable
rem                          � ���MPU-401 enable (1 def)
rem                          � ��� 1 enable  0 disable
rem                          � ����Game port enable (1 def)
rem                          � ���� 1 enable  0 disable
rem                          � �����FM synthesis enable (1 def)
rem                          � ����� 1 enable  0 disable
rem                          � ������Sound Blaster channel enable (1 def)
rem                          � ������ 1 enable   0 disable
rem                          ÿ������
pciset 1969 125D 40 11111111 01111111
rem
rem                                 �ISA serial IRQ enable
rem                                 � 1 enable  0 disable
rem                          RRRRRRR�
pciset 1969 125D 52 00000001 00000000
rem
rem                           �ISA IRQ emulation policy (00 def)
rem                           � 00 Emulation disabled
rem                           � 01 PCI IRQ is one of IRQ 5/7/9/10
rem                           � 10 PCI IRQ is not one of IRQ 5/7/9/10
rem                           �   �SB DMA emulation  (000 def)
rem                           �   � 000 DDMA
rem                           �   � 001 TDMA
rem                           �   � 010 PC/PCI
rem                           �   � 100 101 110 111 WBDMA modes?
rem                          RÿRR�Ŀ
pciset 1969 125D 51 01100111 00000001
rem
rem                             �MPU base address select (00 def)
rem                             � 00 330h   10 320h
rem                             � 01 300h   11 340h
rem                             � �SB base address select (0 def)
rem                             � � 0 220h   1 240h
rem                          RRRÿ�R-
pciset 1969 125D 50 00011100 00000000
rem
rem                          �DDMA base address cont. reg. 60, (00000000 def)     
rem                          ������Ŀ
pciset 1969 125D 61 11111111 00000000
rem
rem                          �DDMA base address, starts at reg. 61 (0000 def)     
rem                          �      �DDMA enable (0 def)
rem                          �      � 1 enable   0 disable
rem                          ��ĿRRR�
pciset 1969 125D 60 11110001 00000000
rem
SET BLASTER=A220 I5 D1 T4
