###########################################
# enabled telnet
lu_util exec 'if [ ! -f /tmp/fuse_d/enable_info_display.script ]; then touch /tmp/fuse_d/enable_info_display.script; fi'
###########################################

# put your favorite setting here

###########################################
# prepare files and scripts for external commands
lu_util exec 'if [ ! -f /tmp/fuse_d/commands_from_app.ash ]; then touch /tmp/fuse_d/commands_from_app.ash; fi'
sleep 1
lu_util exec 'nohup /tmp/fuse_d/SCRIPTS/cmd_get/cmd_get.sh &'
t pwm 1 enable
sleep 1
t pwm 1 disable
###########################################
# loop for external commands
while true
do
d:\commands_from_app.ash
lu_util exec 'if [ -s /tmp/fuse_d/commands_from_app.ash ]; then > /tmp/fuse_d/commands_from_app.ash; fi'
sleep 2
done
