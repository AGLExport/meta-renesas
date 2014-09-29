require ../../include/gles-control.inc

# For wayland
# none

# For x11
FILESEXTRAPATHS_prepend_rcar-gen2 := \
    "${@'${THISDIR}/gstreamer1.0-plugins-good/x11:' \
        if '1' in '${USE_GLES_X11}' else ''}"

X11_PATCHES = "file://0001-v4l2sink-1.2.3-renesas-rcar-support.patch \
    file://0002-v4l2ink-support-userptr-mode.patch \
    file://0003-bufferpool-fix_assertion_buffer_NULL_failed_warning.patch \
    file://0004-v4l2sink-1.2.3-Fix-plane-intialize-issue.patch \
    file://0005-bufferpool-Fix-mmap-mode-issue.patch \
    file://0006-v4l2src-support-for-rcar.patch \
    file://0007-bufferpool-support-dmabuf-import-mode.patch \
    file://0008-v4l2object-support-crop-function-for-v4l2src.patch \
    file://0009-bufferpool-remove-workaround-for-NV16-wrong-byteperline.patch \
"

SRC_URI_append_rcar-gen2 = \
    " ${@'${X11_PATCHES}' if '1' in '${USE_GLES_X11}' else ''}"