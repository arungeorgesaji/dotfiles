//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{" Mem:", "neofetch --memory | grep 'Memory' | awk '{printf \"%.1fG/%.1fG\\n\", $2/1000, $4/1000}'",10,0},
	{"Bat:", "upower -i $(upower -e | grep BAT) | awk '/percentage/ {print $2}'",10,0},
	{"Net:", "$HOME/bash/network.sh",10,0},
	{"BT:", "bluetoothctl info | awk '/Name:/ {for (i=2; i<=NF; i++) printf \"%s \", $i; print \"\"}'" ,10,0},
	{"", "date '+%b %d (%a) %I:%M%p'",					60,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;

