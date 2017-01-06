#!/usr/bin/expect
#Connecting to terminal server first
spawn ssh username@terminalserver
expect "assword: "
send "mypassword\r"

#Connecting to target host
#Type shortcut (can be any) to run interact command
#First argument (argv 0) - name of target host
interact "shortcut" {
	send -- "ssh [lindex $argv 0]\r"
	expect "yes/no)?" {send "yes\r" ; exp_continue ;} "assword: "
	send "mypassword\r"}
