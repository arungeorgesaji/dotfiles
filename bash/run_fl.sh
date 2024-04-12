#!/bin/bash

#Open fl studio
grep '^Exec=' ~/.local/share/applications/flstudio.desktop | sed 's/^Exec=//' | sed 's/%.//' | sh
