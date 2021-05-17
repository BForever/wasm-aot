# java -jar avrora-beta-1.7.117.jar \
#  -colors=false -monitors=memory,c-timer,c-print,profile,stack \
#   -rtc-data-filename=${rtcdataFile}", "-rtc-gradle-build=${buildDir} \
#   -profile-data-filename=${profiledataFile} \
#    -single -mcu=atmega128 \
#    -dump-writes \
#    -locations=0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,0x1b,0x1c,0x1d,0x1e,0x1f \
#    ../bin/test

java -jar avrora-beta-1.7.117-st.jar \
-single -monitors=c-print \
-mcu=atmega128 \
../bin/test.elf