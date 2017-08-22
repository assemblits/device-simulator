Device Simulator
-------------------------------------------------------------------------------

Device-simulator is a small app based on a Qt example to test Eru scada comms.

[![Build Status](https://travis-ci.org/eru-scada/device-simulator.svg?branch=master)](https://travis-ci.org/eru-scada/device-simulator)
[![Join the chat at https://gitter.im/eru_An_open_linux_SCADA_based_on_JavaFX/Lobby](https://badges.gitter.im/eru_An_open_linux_SCADA_based_on_JavaFX/Lobby.svg)](https://gitter.im/eru_An_open_linux_SCADA_based_on_JavaFX/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Compiling
-------------------------------------------------------------------------------

Make sure the Qt (>= 5.9) development libraries are installed:
* You can download Qt from: https://www.qt.io/download-open-source/

After installing you can compile by running:

    $ qmake (or qmake-qt5 on some systems)
    $ make

To do a shadow build, you can run qmake from a different directory and refer
it to device-simulator.pro build file, for example:

    $ cd ~
    $ mkdir device-simulator
    $ cd device-simulator
    $ qmake [PATH TO THE SOURCE]/tiled.pro
    $ make

You can now simply run device-simulator using bin/device-simulator.

Installing
-------------------------------------------------------------------------------

For installing device-simulator you can run `make install`. By default device-simulator
will install to `/opt/eru/device-simulator`. You can change this prefix when running qmake,
and/or you can change the install root when running make install, as follows:

Use `/usr/local` instead of `/opt/eru`:

    $ qmake -r PREFIX=/usr/local

(Recursive needed when it's not the first time that you're running qmake, since
this affects nested pro files)
