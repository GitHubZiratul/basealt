#-------------------------------------------------
#
# Project created by QtCreator 2013-05-10T22:49:41
#
#-------------------------------------------------

QT  += core gui


# TRANSLATIONS = cnc-qt.ts 

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport multimedia

TARGET = ponyprog
TEMPLATE = app
DESTDIR = build

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.qrc
UI_DIR = $$DESTDIR/.ui

APP_NAME                      = "PonyProg"
APP_LOW_NAME                  = "ponyprog"
APP_LOW_H_NAME                = ".ponyprog"
APP_AUTHOR                    = "Claudio Lanconelli"
APP_COPYRIGHT                 = "(C) 1997-2017 $$APP_AUTHOR"
APP_VERSION                   = "3.0.0"
APP_LONG_NAME                 = "$$APP_NAME $$APP_VERSION"
APP_EMAIL                     = "PonyProg2000@gmail.com"
APP_URL                       = "https://github.com/lancos/ponyprog/"
APP_URL_ISSUES                = "https://github.com/lancos/ponyprog/issues"
APP_URL_WIKI                  = "https://github.com/lancos/ponyprog/wiki"
APP_USERAGENT                 = "PonyProg/$$APP_VERSION (github.com/lancos/ponyprog)"
# replace it with yours info for donates
# APP_DONATE_URL                = "https://goo.gl/YFVJ0j"


# TODO: please check this
win32:INCLUDEPATH += $$PWD/windows 
win32:DEPENDPATH += $$PWD/windows

win64:INCLUDEPATH += $$PWD/windows 
win64:DEPENDPATH += $$PWD/windows

# TODO: please add this for macx
# macx

# in case of manually installations, not from repositories
unix:INCLUDEPATH +=/usr/local/include/


# Custom definitions.
DEFINES += APP_VERSION='"\\\"$$APP_VERSION\\\""'
DEFINES += APP_NAME='"\\\"$$APP_NAME\\\""'
DEFINES += APP_LOW_NAME='"\\\"$$APP_LOW_NAME\\\""'
DEFINES += APP_LOW_H_NAME='"\\\"$$APP_LOW_H_NAME\\\""'
DEFINES += APP_LONG_NAME='"\\\"$$APP_LONG_NAME\\\""'
DEFINES += APP_AUTHOR='"\\\"$$APP_AUTHOR\\\""'
DEFINES += APP_EMAIL='"\\\"$$APP_EMAIL\\\""'
DEFINES += APP_URL='"\\\"$$APP_URL\\\""'
DEFINES += APP_URL_ISSUES='"\\\"$$APP_URL_ISSUES\\\""'
DEFINES += APP_URL_ISSUES_NEW='"\\\"$$APP_URL_ISSUES_NEW\\\""'
DEFINES += APP_URL_WIKI='"\\\"$$APP_URL_WIKI\\\""'
DEFINES += APP_USERAGENT='"\\\"$$APP_USERAGENT\\\""'
# DEFINES += APP_DONATE_URL='"\\\"$$APP_DONATE_URL\\\""'
DEFINES += APP_SYSTEM_NAME='"\\\"$$QMAKE_HOST.os\\\""'
DEFINES += APP_SYSTEM_VERSION='"\\\"$$QMAKE_HOST.arch\\\""'


CODECFORTR  = UTF-8
CODECFORSRC = UTF-8


exists(.git) {
  APP_REVISION = $$system(git rev-parse --short HEAD)
}

isEmpty(APP_REVISION) {
  APP_REVISION = ""
}

DEFINES += APP_REVISION='"\\\"$$APP_REVISION\\\""'


message(ponyprog: PonyProg version is: \"$$APP_VERSION\")
message(ponyprog: Detected Qt version: \"$$QT_VERSION\")
message(ponyprog: Build destination directory: \"$$DESTDIR\")
message(ponyprog: Prefix directory: \"$$PREFIX\")
message(ponyprog: Build revision: \"$$APP_REVISION\")
message(ponyprog: lrelease executable name: \"$$LRELEASE_EXECUTABLE\")

# to add automatically in the source code
VERSION = $$APP_VERSION


win32 {
  # Makes sure we use correct subsystem on Windows.
  #  !contains(QMAKE_TARGET.arch, x86_64) {
  #      message(rssguard: Compilling x86 variant.)
  #      QMAKE_LFLAGS_WINDOWS = /SUBSYSTEM:WINDOWS,5.01
  #  } else {
  #      message(rssguard: Compilling x86_64 variant.)
  #      QMAKE_LFLAGS_WINDOWS = /SUBSYSTEM:WINDOWS,5.02
  #  }
  #  QMAKE_TARGET_COMPANY = $$APP_AUTHOR
  #  QMAKE_TARGET_DESCRIPTION = $$APP_NAME
  #  QMAKE_TARGET_COPYRIGHT = $$APP_COPYRIGHT
  #  QMAKE_TARGET_PRODUCT = $$APP_NAME
}


INCLUDEPATH += qhexedit2/src

SOURCES  += SrcPony/aboutmdlg.cpp \
            SrcPony/main.cpp \
            SrcPony/e2app.cpp \
            SrcPony/at25xxx.cpp \
            SrcPony/at93cbus.cpp \
            SrcPony/crc.cpp \
            SrcPony/e24xx-1.cpp \
            SrcPony/e24xx-2.cpp \
            SrcPony/e24xx.cpp \
            SrcPony/e24xx-5.cpp \
            SrcPony/e2profil.cpp \
            SrcPony/fusemdlg.cpp \
            SrcPony/intfbuf.cpp \
            SrcPony/lpt_io_interf.cpp \
            SrcPony/pgminter.cpp \
            SrcPony/picbus.cpp \
            SrcPony/progoption.cpp \
            SrcPony/sernumdlg.cpp \
            SrcPony/x2444.cpp \
            SrcPony/at17xxx.cpp \
            SrcPony/at89sbus.cpp \
            SrcPony/at93cxx8.cpp \
            SrcPony/csmfbuf.cpp \
            SrcPony/e2cmdw.cpp \
            SrcPony/e2awinfo.cpp \
            SrcPony/easyi2c_interf.cpp \
            SrcPony/i2cbus.cpp \
            SrcPony/ispinterf.cpp \
            SrcPony/microbus.cpp \
            SrcPony/pic125xx.cpp \
            SrcPony/picbusnew.cpp \
            SrcPony/spi-bus.cpp \
            SrcPony/at250bus2.cpp \
            SrcPony/at89sxx.cpp \
            SrcPony/at93cxx.cpp \
            SrcPony/device.cpp \
            SrcPony/eeptypes.cpp \
            SrcPony/imbus.cpp \
            SrcPony/linuxsysfsint.cpp \
            SrcPony/pic12bus.cpp \
            SrcPony/ponyioint.cpp \
            SrcPony/rs232int.cpp \
            SrcPony/at250bus.cpp \
            SrcPony/at90sbus.cpp \
            SrcPony/binfbuf.cpp \
            SrcPony/dt006interf.cpp \
            SrcPony/e2dlg.cpp \
            SrcPony/filebuf.cpp \
            SrcPony/infomdlg.cpp \
            SrcPony/lpt_ext_interf.cpp \
            SrcPony/motsfbuf.cpp \
            SrcPony/pic168xx.cpp \
            SrcPony/portint.cpp \
            SrcPony/sde2506.cpp \
            SrcPony/wait.cpp \
            SrcPony/at250xx.cpp \
            SrcPony/at90sxx.cpp \
            SrcPony/busio.cpp \
            SrcPony/e2401.cpp \
            SrcPony/e2pfbuf.cpp \
            SrcPony/filldlg.cpp \
            SrcPony/interfconv.cpp \
            SrcPony/lptinterf.cpp \
            SrcPony/nvm3060.cpp \
            SrcPony/pic16xx.cpp \
            SrcPony/x2444bus.cpp \
            SrcPony/sdebus.cpp \
            SrcPony/Translator.cpp \
            qhexedit2/src/chunks.cpp \
            qhexedit2/src/commands.cpp \
            qhexedit2/src/qhexedit.cpp \

HEADERS  += SrcPony/e2app.h \ 
            SrcPony/e2awinfo.h \
            SrcPony/e2cmdw.h \ 
            SrcPony/globals.h \
            SrcPony/device.h \
            SrcPony/microbus.h \
            SrcPony/aboutmdlg.h \
            SrcPony/at25xxx.h \
            SrcPony/at93cbus.h \
            SrcPony/busio.h \
            SrcPony/dt006interf.h \
            SrcPony/e24xx.h \
            SrcPony/e2dlg.h \
            SrcPony/eeptypes.h \
            SrcPony/ispinterf.h \
            SrcPony/lpt_io_interf.h \
            SrcPony/pgminter.h \
            SrcPony/picbus.h \
            SrcPony/sde2506.h \
            SrcPony/at17xxx.h \
            SrcPony/at89sbus.h \
            SrcPony/at93cxx8.h \
            SrcPony/e2401.h \
            SrcPony/e2pfbuf.h \
            SrcPony/errcode.h \
            SrcPony/i2cbus.h \
            SrcPony/jdminter.h \
            SrcPony/pic125xx.h \
            SrcPony/picbusnew.h \
            SrcPony/progoption.h \
            SrcPony/sdebus.h \
            SrcPony/types.h \
            SrcPony/at250bus2.h \
            SrcPony/at89sxx.h \
            SrcPony/at93cxx.h \
            SrcPony/crc.h \
            SrcPony/e24xx-1.h \
            SrcPony/e2phead.h \
            SrcPony/filebuf.h \
            SrcPony/imbus.h \
            SrcPony/linuxsysfsint.h \
            SrcPony/pic12bus.h \
            SrcPony/ponyioint.h \
            SrcPony/resource.h \
            SrcPony/sernumdlg.h \
            SrcPony/wait.h \
            SrcPony/at250bus.h \
            SrcPony/at90sbus.h \
            SrcPony/binfbuf.h \
            SrcPony/csmfbuf.h \
            SrcPony/e24xx-2.h \
            SrcPony/e2profil.h \
            SrcPony/filldlg.h \
            SrcPony/infomdlg.h \
            SrcPony/lpt_ext_interf.h \
            SrcPony/motsfbuf.h \
            SrcPony/pic168xx.h \
            SrcPony/portint.h \
            SrcPony/spi-bus.h \
            SrcPony/x2444bus.h \
            SrcPony/at250xx.h \
            SrcPony/at90sxx.h \
            SrcPony/businter.h \
            SrcPony/e24xx-5.h \
            SrcPony/easyi2c_interf.h \
            SrcPony/fusemdlg.h \
            SrcPony/intfbuf.h \
            SrcPony/lptinterf.h \
            SrcPony/nvm3060.h \
            SrcPony/pic16xx.h \
            SrcPony/ppuser.h \
            SrcPony/rs232int.h \
            SrcPony/x2444.h \
            SrcPony/Translator.h \
            qhexedit2/src/chunks.h \
            qhexedit2/src/commands.h \
            qhexedit2/src/qhexedit.h

FORMS    += SrcPony/forms/aboutdlg.ui \ 
            SrcPony/forms/blockdlg.ui \
            SrcPony/forms/editdlg.ui \
            SrcPony/forms/notesdlg.ui \
            SrcPony/forms/e2dlg.ui \
            SrcPony/forms/fusedlg.ui \
            SrcPony/forms/mainwindow.ui \
            SrcPony/forms/osccalibr.ui \
            SrcPony/forms/progoption.ui \
            SrcPony/forms/sernumcfg.ui

# for next version, when script for ts files convertion is implemented
#TRANSLATIONS += localization/qtbase_cs.ts 
	    
# TODO: please check this
#win32:LIBS += -L$$PWD/windows/
#win64:LIBS += -L$$PWD/windows/

# TODO: please add this for macx
# macx:LIBS +=

# in case of manually installations, not from repositories
unix:!macx: LIBS += -L/usr/local/lib 


# # Make sure QM translations are generated.
# lrelease.input = TRANSLATIONS
# lrelease.output = $$OUT_PWD/translations/${QMAKE_FILE_BASE}.qm
# lrelease.commands = $$LRELEASE_EXECUTABLE -compress ${QMAKE_FILE_IN} -qm $$OUT_PWD/translations/${QMAKE_FILE_BASE}.qm
# lrelease.CONFIG += no_link target_predeps

# # Create new "make lupdate" target.
# lupdate.target = lupdate
# lupdate.commands = lupdate $$shell_path($$PWD/rssguard.pro) -ts $$shell_path($$TRANSLATIONS_WO_QT)
# 
# QMAKE_EXTRA_TARGETS += lupdate
# QMAKE_EXTRA_COMPILERS += lrelease


RESOURCES += SrcPony/ponyprog.qrc



CONFIG(debug, debug|release) {
    # debug configuration
    # QMAKE_CXXFLAGS_DEBUG += ...
} else {
    # release configuration
    QMAKE_CXXFLAGS_RELEASE -= -O2
    QMAKE_CXXFLAGS_RELEASE += -O3
    QMAKE_CXXFLAGS_RELEASE += -fno-exceptions -fno-rtti
    DEFINES += QT_NO_DEBUG_OUTPUT QT_USE_FAST_CONCATENATION QT_USE_FAST_OPERATOR_PLUS
}

# -Wall are already on the command line (where does it come from?)
QMAKE_CXXFLAGS += -std=c++11 -Wno-unused-parameter

# EK 2017 
# i hope, it's right...
win32 {
    isEmpty(QTDIR):QTDIR           = "c:\Qt\5.8.0"
    isEmpty(MINGWDIR):MINGWDIR     = "C:\Qt\Qt5.8.0\Tools\mingw530_32"
    isEmpty(ISCC):ISCC = "c:\Program Files\Inno Setup 5\ISCC.exe"
    
    win32setup.depends  = make_first
    win32setup.target   = win32setup
    win32setup.commands = \"$$ISCC /DAPPNAME=$$APP_NAME \
                       /DAPPVERSION=$$APP_VERSION \
                       /DAPPCOPYRIGHT=$$APP_COPYRIGHT \
                       distribution\innosetup\ponyprog.iss \"
    
    QMAKE_EXTRA_TARGETS += win32setup
}


# Install all files on Linux.
unix:!mac {
  target.path = $$PREFIX/bin

  misc_texts.files = $$TEXTS
  misc_texts.path = $$quote($$PREFIX/share/$$TARGET/information/)

  desktop_file.files = desktop/$${TARGET}.desktop
  desktop_file.path = $$quote($$PREFIX/share/applications/)

  translations.files = $$OUT_PWD/lang
  translations.path = $$quote($$PREFIX/share/$$TARGET/lang/)

  INSTALLS += target misc_texts \
              desktop_file translations
}

mac {
  CONFIG -= app_bundle

  target.path = $$quote($$PREFIX/Contents/MacOs/)
  
  misc_texts.files = $$TEXTS
  misc_texts.path = $$quote($$PREFIX/Contents/Resources/information/)

  translations.files = $$OUT_PWD/lang
  translations.path =  $$quote($$PREFIX/Contents/Resources/lang/)

  INSTALLS += target misc_texts translations
}
