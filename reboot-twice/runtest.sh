#!/bin/bash

. /usr/bin/rhts-environment.sh || exit 1
. /usr/share/beakerlib/beakerlib.sh || exit 1

rlJournalStart

if [ $REBOOTCOUNT -eq 0 ] ; then
    rlPhaseStartSetup 
       rlRun "echo REBOOTCOUNT=$REBOOTCOUNT"
    rlPhaseEnd
    rhts-reboot
elif [ $REBOOTCOUNT -eq 1 ] ; then
    rlPhaseStartTest
       rlRun "echo REBOOTCOUNT=$REBOOTCOUNT"
    rlPhaseEnd
    rhts-reboot
else
    rlPhaseStartCleanup
       rlRun "echo REBOOTCOUNT=$REBOOTCOUNT"
    rlPhaseEnd
fi
rlJournalPrintText
rlJournalEnd
