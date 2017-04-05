#
##alias volume='echo Master; amixer | grep -5 Master | grep %; echo Capture; amixer | grep Capture | grep %'
#alias volumeasrock_pro4_z270="echo Master; echo '$(amixer | grep -4 Master | tail -4)'; echo 'Capture 0'; echo '$(amixer | grep -5 \'Capture\',0 | tail -5)'; echo 'Capture 1'; echo '$(amixer | grep -5 \'Capture\',1 | tail -5)'"

echo Master
echo "$(amixer | grep -4 \'Master\' | tail -4)"
echo "Capture 0"
echo "$(amixer | grep -5 \'Capture\',0 | tail -5)"
