An executable file that allows any file to be represented as an array of bytes.
It was done primarily in order to be able to connect arbitrary files to the output of the web server on esp32.

To use, download **file_to_arr.sh** and make it executable.

To work, pass two arguments to the file: *./file_to_arr.sh* **#1 #2**
**1#** - name (or full path) of the file to be converted;
**2#** - the name of the variable in which the array will be stored;


When using ESP8266 and other devices at AT-commands, it will be necessary to write a method to transfer data in fragments or byte.
In other cases, the transfer from the arduino environment occurs directly through Serial.write (arr, size);

Tested with C ++ and GCC compilers.

