GSDK_PATH=/usr/local/share/google/google-cloud-sdk
export PATH=$PATH:/opt/gradle/bin:$GSDK_PATH/bin/
export PYTHONPATH=$PYTHONPATH:$GSDK_PATH/platform/google_appengine/:$GSDK_PATH/lib/:$GSDK_PATH/platform/google_appengine/lib/webapp2-2.5.2/:$GSDK_PATH/platform/google_appengine/lib/webob-1.2.3/
if [ ! -f .vnc/xstartup ]
then
mkdir .vnc
gsutil cp gs://startup-scripts-compute/xstartup .vnc/xstartup
chmod u+x .vnc/xstartup
fi