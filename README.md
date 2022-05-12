# README

BankMarshall simulates a banking application that passes a marshalled user object between steps such as might be done during the identity validation process.  It is deliberately vulnerable to unmarshalling attacks.

The app was built under Rails 6.1.5 and Ruby 3.0.3

It is known to be vulnerable to https://github.com/httpvoid/writeups/blob/main/Ruby-deserialization-gadget-on-rails.md

