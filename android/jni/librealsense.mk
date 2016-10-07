# Android build config for libusb
# Copyright © 2012-2013 RealVNC Ltd. <toby.gray@realvnc.com>
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
#

LOCAL_PATH:= $(call my-dir)
LIBREALSENSE_ROOT_REL:= ../../
LIBREALSENSE_ROOT_ABS:= $(LOCAL_PATH)/../../

include $(CLEAR_VARS)

LIBUSB_PATH:=./libusb

LOCAL_SRC_FILES := \
	$(LIBREALSENSE_ROOT_REL)/src/archive.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/ds-device.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/hw-monitor.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/ivcam-private.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/r200.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/stream.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/types.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/uvc-v4l2.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/verify.c \
	$(LIBREALSENSE_ROOT_REL)/src/context.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/ds-private.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/image.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/log.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/rs.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/sync.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/uvc.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/uvc-wmf.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/device.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/f200.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/ivcam-device.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/motion-module.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/sr300.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/timestamps.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/uvc-libuvc.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/zr300.cpp \
	$(LIBREALSENSE_ROOT_REL)/src/libuvc/ctrl.c \
	$(LIBREALSENSE_ROOT_REL)/src/libuvc/dev.c \
	$(LIBREALSENSE_ROOT_REL)/src/libuvc/diag.c \
	$(LIBREALSENSE_ROOT_REL)/src/libuvc/frame.c \
	$(LIBREALSENSE_ROOT_REL)/src/libuvc/init.c \
	$(LIBREALSENSE_ROOT_REL)/src/libuvc/stream.c

LOCAL_C_INCLUDES += \
  $(LIBREALSENSE_ROOT_ABS)/include \
  $(LIBUSB_PATH)/libusb/ \
  $(LIBUSB_PATH)/libusb/os

LOCAL_EXPORT_C_INCLUDES := \
  $(LIBREALSENSE_ROOT_ABS)/include \
  $(LIBUSB_PATH)/libusb/ \
  $(LIBUSB_PATH)/libusb/os

LOCAL_LDLIBS := -llog

LOCAL_MODULE := librealsense1.0
LOCAL_ARM_NEON := true
LOCAL_SHARED_LIBRARIES := usb1.0
LOCAL_CPPFLAGS += -fexceptions -frtti -DRS_USE_V4L2_BACKEND

include $(BUILD_SHARED_LIBRARY)
