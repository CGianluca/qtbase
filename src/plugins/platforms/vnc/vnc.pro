TARGET = qvnc

PLUGIN_TYPE = platforms
PLUGIN_CLASS_NAME = QVncIntegrationPlugin
!equals(TARGET, $$QT_DEFAULT_QPA_PLUGIN): PLUGIN_EXTENDS = -
load(qt_plugin)

QT += core-private gui-private platformsupport-private network

SOURCES = main.cpp qvncintegration.cpp qvncscreen.cpp qvnc.cpp
HEADERS = qvncintegration.h qvncscreen.h qvnc_p.h

CONFIG += qpa/genericunixfontdatabase

OTHER_FILES += vnc.json
