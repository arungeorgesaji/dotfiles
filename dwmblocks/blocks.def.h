//Modify this file to change what commands output to your statusbar, and recompile using the make command.

static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  //Display memory usage
	{" Mem:", "neofetch --memory | grep 'Memory' | awk '{printf \"%.1fG/%.1fG\\n\", $2/1000, $4/1000}'",10,0},
  //Display battery percentage left
	{"Bat:", "upower -i $(upower -e | grep BAT) | awk '/percentage/ {print $2}'",10,0},
  //Display connected networks
  {"Net:", "$HOME/bash/network.sh",10,0},
	//Display connected bluetooth connections
  {"BT:", "bluetoothctl info | awk '/Name:/ {for (i=2; i<=NF; i++) printf \"%s \", $i; print \"\"}'" ,10,0},
  //Display the current month,date,day of the week and time
	{"", "date '+%b %d (%a) %I:%M%p'",					60,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;


