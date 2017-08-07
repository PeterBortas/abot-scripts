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

# Make sure whatever is needed* is in the path
# * phantomjs and wpull as of writing
export PATH=$PATH:/opt/ateam/bin/:$HOME/.local/bin/wpull

# FIXME: The above wont really work for wpull right now. The pipeline is
# throwing away PATH somewhere, so wpull needs to be in the default
# PATH: /usr/bin/wpull

######## Do not edit anything below this line ########

export RSYNC_URL=rsync://fos.textfiles.com/archivebot/
export REDIS_URL=redis://127.0.0.1:16379/0
export FINISHED_WARCS_DIR=$HOME/warcs4fos

# FIXME: This is abhorrent
if [ ! -x /usr/bin/wpull ]; then
    echo "FATAL: For currently unknown reasons the pipeline needs wpull to be in /usr/bin/wpull"
    echo "The current workaround is to link is there from the pip installation:"
    echo "ln -s ~archivebot/.local/bin/wpull /usr/bin/wpull"
    exit 1
fi

if [ $MYUSER = "YOUR-USERNAME-GOES-HERE" ]; then
    echo "FATAL: No account configured, unable to start tunnel"
    exit 1
fi

if [ $MYUSER = "YOUR-PIPELINE-NAME-GOES-HERE" ]; then
    echo "FATAL: Your pipeline name is not configured"
    exit 1
fi
