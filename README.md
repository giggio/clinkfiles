My clink files
------

These are the files that accompany my
[Clink](https://chrisant996.github.io/clink/)
installation.

Quick installation
------

* Install Clink
* Clone this repo to your profile

````cmd
git clone --recurse-submodules https://github.com/giggio/clinkfiles.git %localappdata%\clink
````

A more complex installation
------

I don't like having to go to `%localappdata%` to update my installation, so I just keep the
configuration files at `c:\p\clinkfiles`. So I clone it like this:

````cmd
git clone --recurse-submodules https://github.com/giggio/clinkfiles.git c:\p\clinkfiles
````

I updated CLink start menu shortcut to use this profile directory, but I barely
use it. I open it from Windows Terminal, with this profile configuration:

````json
{
  "commandline": "C:\\WINDOWS\\system32\\cmd.exe /K \"C:/Program Files (x86)/clink/clink_x64.exe\" inject --profile c:/p/clinkfiles --quiet",
  "guid": "{d1ea39af-b74d-4457-8f81-12141350771c}",
  "icon": "ms-appx:///ProfileIcons/{0caa0dad-35be-5f56-a8ff-afceeeaa6101}.png",
  "name": "cmd",
  "tabTitle": "cmd"
},
````

To make have Unix tools in my Path I just added Git's bin path do the Path: `C:\Program Files\Git\usr\bin`.
With it I have `ls`, `which` etc available with cmd.

Author
------

[Giovanni Bassi](https://github.com/giggio)

License
-------

Licensed under the Apache License, Version 2.0.
