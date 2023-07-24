#!/bin/bash

maininterface=$(ip route get 8.8.8.8 | awk -- '{printf $5}')

nmcli device show $maininterface

exit 0

