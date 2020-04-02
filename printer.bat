@echo off
@mode com1:300,n,8,1 >rdr
@mode lpt1=com1 >rdr
@echo 0000000000 >prn
