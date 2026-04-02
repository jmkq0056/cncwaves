.class public interface abstract Lcom/sun/jna/platform/win32/Winioctl;
.super Ljava/lang/Object;
.source "Winioctl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Winioctl$STORAGE_DEVICE_NUMBER;
    }
.end annotation


# static fields
.field public static final FILE_ANY_ACCESS:I = 0x0

.field public static final FILE_DEVICE_8042_PORT:I = 0x27

.field public static final FILE_DEVICE_ACPI:I = 0x32

.field public static final FILE_DEVICE_BATTERY:I = 0x29

.field public static final FILE_DEVICE_BEEP:I = 0x1

.field public static final FILE_DEVICE_BIOMETRIC:I = 0x44

.field public static final FILE_DEVICE_BLUETOOTH:I = 0x41

.field public static final FILE_DEVICE_BUS_EXTENDER:I = 0x2a

.field public static final FILE_DEVICE_CD_ROM:I = 0x2

.field public static final FILE_DEVICE_CD_ROM_FILE_SYSTEM:I = 0x3

.field public static final FILE_DEVICE_CHANGER:I = 0x30

.field public static final FILE_DEVICE_CONSOLE:I = 0x50

.field public static final FILE_DEVICE_CONTROLLER:I = 0x4

.field public static final FILE_DEVICE_CRYPT_PROVIDER:I = 0x3f

.field public static final FILE_DEVICE_DATALINK:I = 0x5

.field public static final FILE_DEVICE_DEVAPI:I = 0x47

.field public static final FILE_DEVICE_DFS:I = 0x6

.field public static final FILE_DEVICE_DFS_FILE_SYSTEM:I = 0x35

.field public static final FILE_DEVICE_DFS_VOLUME:I = 0x36

.field public static final FILE_DEVICE_DISK:I = 0x7

.field public static final FILE_DEVICE_DISK_FILE_SYSTEM:I = 0x8

.field public static final FILE_DEVICE_DVD:I = 0x33

.field public static final FILE_DEVICE_EHSTOR:I = 0x46

.field public static final FILE_DEVICE_FILE_SYSTEM:I = 0x9

.field public static final FILE_DEVICE_FIPS:I = 0x3a

.field public static final FILE_DEVICE_FULLSCREEN_VIDEO:I = 0x34

.field public static final FILE_DEVICE_GPIO:I = 0x48

.field public static final FILE_DEVICE_INFINIBAND:I = 0x3b

.field public static final FILE_DEVICE_INPORT_PORT:I = 0xa

.field public static final FILE_DEVICE_KEYBOARD:I = 0xb

.field public static final FILE_DEVICE_KS:I = 0x2f

.field public static final FILE_DEVICE_KSEC:I = 0x39

.field public static final FILE_DEVICE_MAILSLOT:I = 0xc

.field public static final FILE_DEVICE_MASS_STORAGE:I = 0x2d

.field public static final FILE_DEVICE_MIDI_IN:I = 0xd

.field public static final FILE_DEVICE_MIDI_OUT:I = 0xe

.field public static final FILE_DEVICE_MODEM:I = 0x2b

.field public static final FILE_DEVICE_MOUSE:I = 0xf

.field public static final FILE_DEVICE_MT_COMPOSITE:I = 0x42

.field public static final FILE_DEVICE_MT_TRANSPORT:I = 0x43

.field public static final FILE_DEVICE_MULTI_UNC_PROVIDER:I = 0x10

.field public static final FILE_DEVICE_NAMED_PIPE:I = 0x11

.field public static final FILE_DEVICE_NETWORK:I = 0x12

.field public static final FILE_DEVICE_NETWORK_BROWSER:I = 0x13

.field public static final FILE_DEVICE_NETWORK_FILE_SYSTEM:I = 0x14

.field public static final FILE_DEVICE_NETWORK_REDIRECTOR:I = 0x28

.field public static final FILE_DEVICE_NFP:I = 0x51

.field public static final FILE_DEVICE_NULL:I = 0x15

.field public static final FILE_DEVICE_PARALLEL_PORT:I = 0x16

.field public static final FILE_DEVICE_PHYSICAL_NETCARD:I = 0x17

.field public static final FILE_DEVICE_PMI:I = 0x45

.field public static final FILE_DEVICE_POINT_OF_SERVICE:I = 0x54

.field public static final FILE_DEVICE_PRINTER:I = 0x18

.field public static final FILE_DEVICE_SCANNER:I = 0x19

.field public static final FILE_DEVICE_SCREEN:I = 0x1c

.field public static final FILE_DEVICE_SERENUM:I = 0x37

.field public static final FILE_DEVICE_SERIAL_MOUSE_PORT:I = 0x1a

.field public static final FILE_DEVICE_SERIAL_PORT:I = 0x1b

.field public static final FILE_DEVICE_SMARTCARD:I = 0x31

.field public static final FILE_DEVICE_SMB:I = 0x2e

.field public static final FILE_DEVICE_SOUND:I = 0x1d

.field public static final FILE_DEVICE_STREAMS:I = 0x1e

.field public static final FILE_DEVICE_SYSENV:I = 0x52

.field public static final FILE_DEVICE_TAPE:I = 0x1f

.field public static final FILE_DEVICE_TAPE_FILE_SYSTEM:I = 0x20

.field public static final FILE_DEVICE_TERMSRV:I = 0x38

.field public static final FILE_DEVICE_TRANSPORT:I = 0x21

.field public static final FILE_DEVICE_UNKNOWN:I = 0x22

.field public static final FILE_DEVICE_USBEX:I = 0x49

.field public static final FILE_DEVICE_VDM:I = 0x2c

.field public static final FILE_DEVICE_VIDEO:I = 0x23

.field public static final FILE_DEVICE_VIRTUAL_BLOCK:I = 0x53

.field public static final FILE_DEVICE_VIRTUAL_DISK:I = 0x24

.field public static final FILE_DEVICE_VMBUS:I = 0x3e

.field public static final FILE_DEVICE_WAVE_IN:I = 0x25

.field public static final FILE_DEVICE_WAVE_OUT:I = 0x26

.field public static final FILE_DEVICE_WPD:I = 0x40

.field public static final FILE_READ_ACCESS:I = 0x1

.field public static final FILE_SPECIAL_ACCESS:I = 0x0

.field public static final FILE_WRITE_ACCESS:I = 0x2

.field public static final FSCTL_DELETE_REPARSE_POINT:I = 0x2b

.field public static final FSCTL_GET_COMPRESSION:I = 0xf

.field public static final FSCTL_GET_REPARSE_POINT:I = 0x2a

.field public static final FSCTL_SET_COMPRESSION:I = 0x10

.field public static final FSCTL_SET_REPARSE_POINT:I = 0x29

.field public static final IOCTL_STORAGE_GET_DEVICE_NUMBER:I = 0x2d1080

.field public static final METHOD_BUFFERED:I = 0x0

.field public static final METHOD_IN_DIRECT:I = 0x1

.field public static final METHOD_NEITHER:I = 0x3

.field public static final METHOD_OUT_DIRECT:I = 0x2
