#! /bin/bash

GRADLE_VERSION=2.3
export DEBIAN_FRONTEND=noninteractive

# commands in this block won't be run if env_vars.sh exists
if [ ! -f /etc/profile.d/env_vars.sh ]
then
apt-get update
apt-get install -y zip \
                   python-pip \
                   git \
                   mysql-client \
                   openjdk-7-jdk \
                   build-essential \
                   libssl-dev \
                   libffi-dev \
                   python-dev \
                   vnc4server \
                   gedit \
                   gnome-core

gcloud components update pkg-python pkg-java --quiet

pip install pyopenssl pep8 pylint

gsutil cp gs://startup-scripts-compute/keyboard /etc/default/keyboard

wget -P /tmp https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip
unzip /tmp/gradle-$GRADLE_VERSION-bin.zip
mv gradle-$GRADLE_VERSION /opt/gradle
rm /tmp/gradle-$GRADLE_VERSION-bin.zip
gsutil cp gs://startup-scripts-compute/env_vars.sh /etc/profile.d/env_vars.sh
fi