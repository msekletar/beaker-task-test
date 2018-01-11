#!/bin/bash

. /usr/bin/rhts-environment.sh || exit 1
. /usr/share/beakerlib/beakerlib.sh || exit 1

rlJournalStart
   rlPhaseStartTest
       rlRun "true"
   rlPhaseEnd
rlJournalPrintText
rlJournalEnd
