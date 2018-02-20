#-------------------------------------------------
#
# XCITE project created by XBY developers
#
#-------------------------------------------------

VERSION = 0.0.0

QT	+= core gui
QT	+= xml
QT	+= quick
QT += svg
CONFIG	+= c++11

DEFINES += QT_DEPRECATED_WARNINGS

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = xcite
TEMPLATE = app

CONFIG(debug, debug|release) {
    DESTDIR = build/debug
}
CONFIG(release, debug|release) {
    DESTDIR = build/release
}

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.qrc
UI_DIR = $$DESTDIR/.u

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

SOURCES += main/main.cpp \
	    backend/xchat/xchat.cpp \
	    backend/xchat/xchataiml.cpp \
            backend/p2p/p2p.cpp \
            frontend/support/sortfilterproxymodel.cpp \
            backend/xchat/xchatconversationmodel.cpp \
            backend/xboard/nodes/nodetransaction.cpp \
            backend/testnet/testnet.cpp \
            backend/testnet/transactionmodel.cpp \
            backend/addressbook/addressbookmodel.cpp \
            backend/support/ClipboardProxy.cpp \
            backend/support/qrcode/QtQrCodeQuickItem.cpp

RESOURCES += resources/resources.qrc
RESOURCES += frontend/frontend.qrc

HEADERS  += backend/xchat/xchat.hpp \
	    backend/xchat/xchataiml.hpp \
            backend/p2p/p2p.hpp \
            frontend/support/sortfilterproxymodel.hpp \
            backend/xchat/xchatconversationmodel.hpp \
            backend/xboard/nodes/nodetransaction.h \
            backend/testnet/testnet.hpp \
            backend/testnet/transactionmodel.hpp \
            backend/addressbook/addressbookmodel.hpp \
            backend/support/ClipboardProxy.hpp \
            backend/support/qrcode/QtQrCodeQuickItem.hpp

DISTFILES += \
    xcite.ico

RC_ICONS = xcite.ico

win32:CONFIG(release, debug|release): LIBS += -L../qt-qrcode -lqtqrcode
else:win32:CONFIG(debug, debug|release): LIBS += -L../qt-qrcode -lqtqrcode
else:unix: LIBS += -L../qt-qrcode -lqtqrcode

INCLUDEPATH += ../qt-qrcode