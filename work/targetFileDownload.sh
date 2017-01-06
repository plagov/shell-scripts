#!/usr/bin/expect
#Connect to terminal server first
spawn ssh username@terminalserver
expect "assword: "
send "mypassword\r"

#Create directory at terminal server with host name
#First argument - target host name
#Second argument - file name
expect "$ "
send "mkdir [lindex $argv 0]\r"

#Run scp command at target host
#Type shortcut (can be any) to start interact command
interact "shortcut" {
	send -- "scp username@[lindex $argv 0]:/path/to/remote/target/folder/[lindex $argv 1] /path/to/ts/folder/[lindex $argv 0]/\r"
	expect "yes/no)" {send "yes\r"; exp_continue;} "assword: "
	send "mypassword\r"
	expect "$ "
	send "exit\r"}
