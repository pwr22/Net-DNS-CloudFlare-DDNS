# DDFlare
Command line Dynamic DNS client for CloudFlare

## Usage
    ddflare [ options ] path_to_config

## Options
    --version                 Version Information
    -?, --help                Usage info
    -v, --verbose             Verbose output
    -o file, --output=file    Append output to file
    -e file, --error=file     Append error to file

## Installation

Install from CPAN

    cpan install App::DDFlare

Then set up to run as a service

## Config
The configuration file is YAML in the following structure
    --- # Credentials
    user: cloudflare-user
    key: cloudflare-api-key
    --- # Updates dom.com and sub1.dom1.com
    zone: dom.com
    domains:
     -
     - sub1
    --- # Updates sub1.dom2.com and sub2.dom2.com
    zone: dom2.com
    domains:
     - sub1
     - sub2

## License

Copyright (c) 2014 Peter Roberts

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
