# Check the Qt version. If QT_VERSION is not set, it is probably Qt 3.
isEmpty(QT_VERSION) {
    error("QT_VERSION not defined. Tiled does not work with Qt 3.")
}

# Taken from Qt Creator project files
defineTest(minQtVersion) {
    maj = $$1
    min = $$2
    patch = $$3
    isEqual(QT_MAJOR_VERSION, $$maj) {
        isEqual(QT_MINOR_VERSION, $$min) {
            isEqual(QT_PATCH_VERSION, $$patch) {
                return(true)
            }
            greaterThan(QT_PATCH_VERSION, $$patch) {
                return(true)
            }
        }
        greaterThan(QT_MINOR_VERSION, $$min) {
            return(true)
        }
    }
    greaterThan(QT_MAJOR_VERSION, $$maj) {
        return(true)
    }
    return(false)
}
!minQtVersion(5, 9, 0) {
    message("Cannot build Tiled with Qt version $${QT_VERSION}")
    error("Use at least Qt 5.9.0.")
}

win* {
    message("Building Tiled for Windows using qmake is no longer supported")
    error("Use the tiled.qbs project file instead")
}

# Set project
TEMPLATE    = subdirs
SUBDIRS     = src

