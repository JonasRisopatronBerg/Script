#!/bin/bash - 
#===============================================================================
#
#          FILE: TextFormatting.sh
# 
#         USAGE: ./TextFormatting.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jonas Risopatron Berg (), jonasrisopatronberg@gmail.com
#  ORGANIZATION: 
#       CREATED: 18. nov. 2016 07:58
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# Attributes
echo -e "Normal \e[1mBold\e[0m"
echo -e "Normal \e[2mDim\e[0m"
echo -e "Normal \e[4mUnderlined\e[0m"
echo -e "Normal \e[5mBlink\e[0m"
echo -e "Normal \e[7mInverted\e[0m"
echo -e "Normal \e[8mHidden\e[0m"

# Reset attributes
echo -e "Normal \e[0mReset All\e[0m"
echo -e "Normal \e[21mReset Bold\e[0m"
echo -e "Normal \e[22mReset Dim\e[0m"
echo -e "Normal \e[24mReset Underlined\e[0m"
echo -e "Normal \e[25mReset Blink\e[0m"
echo -e "Normal \e[27mReset Reverse\e[0m"
echo -e "Normal \e[28mReset Hidden\e[0m"

# Colors foreground
echo -e "Normal \e[39mDefault\e[0m"
echo -e "Normal \e[30mBlack\e[0m"
echo -e "Normal \e[31mRed\e[0m"
echo -e "Normal \e[32mGreen\e[0m"
echo -e "Normal \e[33mYellow\e[0m"
echo -e "Normal \e[34mBlue\e[0m"
echo -e "Normal \e[35mMagenta\e[0m"
echo -e "Normal \e[36mCyan\e[0m"
echo -e "Normal \e[37mLight Gray\e[0m"
echo -e "Normal \e[90mDark Gray\e[0m"
echo -e "Normal \e[91mLight Red\e[0m"
echo -e "Normal \e[92mLight Green\e[0m"
echo -e "Normal \e[93mLight Yellow\e[0m"
echo -e "Normal \e[94mLight Blue\e[0m"
echo -e "Normal \e[95mLight Magenta\e[0m"
echo -e "Normal \e[96mLight Cyan\e[0m"
echo -e "Normal \e[97mWhite\e[0m"

# Colors background
echo -e "Normal \e[49mDefault\e[0m"
echo -e "Normal \e[40mBlack\e[0m"
echo -e "Normal \e[41mRed\e[0m"
echo -e "Normal \e[42mGreen\e[0m"
echo -e "Normal \e[43mYellow\e[0m"
echo -e "Normal \e[44mBlue\e[0m"
echo -e "Normal \e[45mMagenta\e[0m"
echo -e "Normal \e[46mCyan\e[0m"
echo -e "Normal \e[47mLight Gray\e[0m"
echo -e "Normal \e[100mDark Gray\e[0m"
echo -e "Normal \e[101mLight Red\e[0m"
echo -e "Normal \e[102mLight Green\e[0m"
echo -e "Normal \e[103mLight Yellow\e[0m"
echo -e "Normal \e[104mLight Blue\e[0m"
echo -e "Normal \e[105mLight Magenta\e[0m"
echo -e "Normal \e[106mLight Cyan\e[0m"
echo -e "Normal \e[107mWhite\e[0m"

# Combination example
echo -e "Normal \e[1;4;91mCombo!\e[0m"
