# ManchesterEncoding
This is an implementation of the famous Manchester-Encoding. This encoding is used in telecommunication and data storage. I used it to transmit data with a RF-Transciever.

## How it works
The data (could be anything) gets converted to a byte array. Each byte of this array is than xor-ed with 85 which represents the clock. The string "My Manchester Encoding" becomes ",u4;6=0&!0'u;6:1<;2".

## Why
Manchester-Encoding is used because it reduces the appearence of series of zeros or ones. This is important as many wireless-transmission-methods require a constantly changing data-line.
