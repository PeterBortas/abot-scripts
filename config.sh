# For details on how to configure see:
# https://github.com/ArchiveTeam/ArchiveBot/blob/master/INSTALL.pipeline

# Your ninjawedding SSH account
MYUSER=YOUR-USERNAME-GOES-HERE

# Your carefully choosen pipeline name. Will show up in global public dashboard
MYPIPELINE=YOUR-PIPELINE-NAME-GOES-HERE

# Uncomment this if you can handle 100G+ jobs
#export LARGE=1  

# Uncomment this if you only want to handle !ao/!archiveonly jobs
#export AO_ONLY=1


######## Do not edit anything below this line ########

if [ $MYUSER = "YOUR-USERNAME-GOES-HERE" ]; then
    echo "FATAL: No account configured, unable to start tunnel"
    exit 1
fi

if [ $MYUSER = "YOUR-PIPELINE-NAME-GOES-HERE" ]; then
    echo "FATAL: Your pipeline name is not configured"
    exit 1
fi
