PsRemoteFiles
=============

Utility to copy local file to remote computer using PowerShell Remoting

Features
========

1. Copy any file to remote computer
2. Support PowerShell Remoting Sessions

Warning
=======

Right now tool is pretty dumb, so it loads content of the file at least two times on client and then two times on server. This will be improved leter.

Examples
========

To copy file Tests.ps1 to the Docmuents folder of the User01 on computer Comp1

    copy-remoteItem Tests.ps1 -Credential "Comp1\User01" -ComputerName "Comp1"
    
You can also use sessions

    $session = new-pssession -Credential "Comp1\User01" -ComputerName "Comp1"
    copy-remoteitem Tests.ps1 -Session $session


Installation
============

With [PsGet](https://github.com/chaliy/psget/) run:

    install-module https://github.com/chaliy/psremotefiles/raw/master/PsRemoteFiles/PsRemoteFiles.psm1

Roadmap
=======

Roadmap is not sorted in any order. This is just list what is think should be done.

1. Transfer files by chancks
2. Specify path on remote computer
3. Add more remote connection options
4. Add pregress indication
5. Add support to download files from remote computer
