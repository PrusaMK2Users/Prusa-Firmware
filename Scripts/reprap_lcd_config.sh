#!/bin/bash
#
sed -i '/BTN_EN1 72/c\#define BTN_EN1 14' Firmware/pins.h
sed -i '/BTN_EN2 14/c\#define BTN_EN2 72' Firmware/pins.h