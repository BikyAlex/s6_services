# s6_services

This repo is hosting s6-rc services in an opinionated way.

 - all the atomic services should be written in execline, using skarnet.org's utilities, like s6-portable-utils and s6-linux-utils
 - scripts that need to be written in other languages are to be invoked from the scripts folder, with the service script (up / down / run / finish etc.) still remaining written in execline
 - all atomic services need to have dependencies, even if it's just a dependency on the "00" service (just a welcome banner)
 - services need to be added to the proper "runlevel" folders (for lack of better terms), which are used to force services that are created without dependencies, to obtain at least the dependency from the lower "runlevel"
 - most services created should most likely end up in the multi-user bundle and have a dependency on ok-local bundle
