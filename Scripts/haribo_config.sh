#!/bin/bash
set -e
echo "Configuring for Haribo"
sed -i '/CUSTOM_MENDEL_NAME/c\#define CUSTOM_MENDEL_NAME "3030 Haribo Edition"' Firmware/Configuration_prusa.h
sed -i '/lcd_print_at_PGM(0, 1, PSTR("   Original Prusa   "));/c\lcd_print_at_PGM(0, 1, PSTR("    3030 Haribo     "));' Firmware/Marlin_main.cpp
sed -i '/lcd_print_at_PGM(0, 2, PSTR("    3D  Printers    "));/c\lcd_print_at_PGM(0, 2, PSTR("      Edition       "));' Firmware/Marlin_main.cpp

sed -i '/Z_MAX_POS/c\#define Z_MAX_POS 225' Firmware/Configuration_prusa.h
sed -i '/FILAMENTCHANGE_XPOS/c\#define FILAMENTCHANGE_XPOS 221' Firmware/Configuration_prusa.h

