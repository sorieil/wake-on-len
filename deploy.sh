#!/bin/bash
echo "------ build completed ------"
systemctl stop wake-on-lan
echo "------ stop ------"
systemctl disable wake-on-lan
echo "------ disable ------"
cp ./wake-on-lan.service /etc/systemd/system/
echo "------ copy completed ------"
systemctl enable wake-on-lan.service
echo "------ enable ------"
systemctl start wake-on-lan
echo "------ start ------"
systemctl status wake-on-lan