.class public interface abstract Lcom/sun/jna/platform/win32/WinUser;
.super Ljava/lang/Object;
.source "WinUser.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;,
        Lcom/sun/jna/platform/win32/WinUser$MONITORENUMPROC;,
        Lcom/sun/jna/platform/win32/WinUser$MONITORINFOEX;,
        Lcom/sun/jna/platform/win32/WinUser$MONITORINFO;,
        Lcom/sun/jna/platform/win32/WinUser$HMONITOR;,
        Lcom/sun/jna/platform/win32/WinUser$WindowProc;,
        Lcom/sun/jna/platform/win32/WinUser$WNDCLASSEX;,
        Lcom/sun/jna/platform/win32/WinUser$LASTINPUTINFO;,
        Lcom/sun/jna/platform/win32/WinUser$MOUSEINPUT;,
        Lcom/sun/jna/platform/win32/WinUser$KEYBDINPUT;,
        Lcom/sun/jna/platform/win32/WinUser$INPUT;,
        Lcom/sun/jna/platform/win32/WinUser$HARDWAREINPUT;,
        Lcom/sun/jna/platform/win32/WinUser$KBDLLHOOKSTRUCT;,
        Lcom/sun/jna/platform/win32/WinUser$CWPSTRUCT;,
        Lcom/sun/jna/platform/win32/WinUser$HOOKPROC;,
        Lcom/sun/jna/platform/win32/WinUser$HHOOK;,
        Lcom/sun/jna/platform/win32/WinUser$BLENDFUNCTION;,
        Lcom/sun/jna/platform/win32/WinUser$SIZE;,
        Lcom/sun/jna/platform/win32/WinUser$WinEventProc;,
        Lcom/sun/jna/platform/win32/WinUser$LowLevelKeyboardProc;,
        Lcom/sun/jna/platform/win32/WinUser$WNDENUMPROC;,
        Lcom/sun/jna/platform/win32/WinUser$FLASHWINFO;,
        Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;,
        Lcom/sun/jna/platform/win32/WinUser$MSG;,
        Lcom/sun/jna/platform/win32/WinUser$WINDOWPLACEMENT;,
        Lcom/sun/jna/platform/win32/WinUser$WINDOWINFO;,
        Lcom/sun/jna/platform/win32/WinUser$GUITHREADINFO;,
        Lcom/sun/jna/platform/win32/WinUser$HDEVNOTIFY;
    }
.end annotation


# static fields
.field public static final AC_SRC_ALPHA:I = 0x1

.field public static final AC_SRC_NO_ALPHA:I = 0x2

.field public static final AC_SRC_NO_PREMULT_ALPHA:I = 0x1

.field public static final AC_SRC_OVER:I = 0x0

.field public static final BS_3STATE:I = 0x5

.field public static final BS_AUTO3STATE:I = 0x6

.field public static final BS_AUTOCHECKBOX:I = 0x3

.field public static final BS_AUTORADIOBUTTON:I = 0x9

.field public static final BS_CHECKBOX:I = 0x2

.field public static final BS_DEFPUSHBUTTON:I = 0x1

.field public static final BS_GROUPBOX:I = 0x7

.field public static final BS_LEFTTEXT:I = 0x20

.field public static final BS_OWNERDRAW:I = 0xb

.field public static final BS_PUSHBOX:I = 0xa

.field public static final BS_PUSHBUTTON:I = 0x0

.field public static final BS_RADIOBUTTON:I = 0x4

.field public static final BS_TYPEMASK:I = 0xf

.field public static final BS_USERBUTTON:I = 0x8

.field public static final CCHDEVICENAME:I = 0x20

.field public static final CF_BITMAT:I = 0x2

.field public static final CF_DIB:I = 0x8

.field public static final CF_DIBV5:I = 0x11

.field public static final CF_DIF:I = 0x5

.field public static final CF_DSPBITMAP:I = 0x82

.field public static final CF_DSPENHMETAFILE:I = 0x8e

.field public static final CF_DSPMETAFILEPICT:I = 0x83

.field public static final CF_DSPTEXT:I = 0x81

.field public static final CF_ENHMETAFILE:I = 0xe

.field public static final CF_GDIOBJFIRST:I = 0x300

.field public static final CF_GDIOBJLAST:I = 0x3ff

.field public static final CF_HDROP:I = 0xf

.field public static final CF_LOCALE:I = 0x10

.field public static final CF_METAFILEPICT:I = 0x3

.field public static final CF_OEMTEXT:I = 0x7

.field public static final CF_OWNERDISPLAY:I = 0x80

.field public static final CF_PALETTE:I = 0x9

.field public static final CF_PENDATA:I = 0xa

.field public static final CF_PRIVATEFIRST:I = 0x200

.field public static final CF_PRIVATELAST:I = 0x2ff

.field public static final CF_RIFF:I = 0xb

.field public static final CF_SYLK:I = 0x4

.field public static final CF_TEXT:I = 0x1

.field public static final CF_TIFF:I = 0x6

.field public static final CF_UNICODETEXT:I = 0xd

.field public static final CF_WAVE:I = 0xc

.field public static final DWL_DLGPROC:I

.field public static final DWL_MSGRESULT:I = 0x0

.field public static final DWL_USER:I

.field public static final EWX_FORCE:I = 0x4

.field public static final EWX_FORCEIFHUNG:I = 0x10

.field public static final EWX_HYBRID_SHUTDOWN:I = 0x400000

.field public static final EWX_LOGOFF:I = 0x0

.field public static final EWX_POWEROFF:I = 0x8

.field public static final EWX_REBOOT:I = 0x2

.field public static final EWX_RESTARTAPPS:I = 0x40

.field public static final EWX_SHUTDOWN:I = 0x1

.field public static final FLASHW_ALL:I = 0x3

.field public static final FLASHW_CAPTION:I = 0x1

.field public static final FLASHW_STOP:I = 0x0

.field public static final FLASHW_TIMER:I = 0x4

.field public static final FLASHW_TIMERNOFG:I = 0xc

.field public static final FLASHW_TRAY:I = 0x2

.field public static final GA_PARENT:I = 0x1

.field public static final GA_ROOT:I = 0x2

.field public static final GA_ROOTOWNER:I = 0x3

.field public static final GCLP_HBRBACKGROUND:I = -0xa

.field public static final GCLP_HCURSOR:I = -0xc

.field public static final GCLP_HICON:I = -0xe

.field public static final GCLP_HICONSM:I = -0x22

.field public static final GCLP_HMODULE:I = -0x10

.field public static final GCLP_MENUNAME:I = -0x8

.field public static final GCLP_WNDPROC:I = -0x18

.field public static final GCL_CBCLSEXTRA:I = -0x14

.field public static final GCL_CBWNDEXTRA:I = -0x12

.field public static final GCL_HICON:I = -0xe

.field public static final GCL_HICONSM:I = -0x22

.field public static final GCL_STYLE:I = -0x1a

.field public static final GCW_ATOM:I = -0x20

.field public static final GWL_EXSTYLE:I = -0x14

.field public static final GWL_HINSTANCE:I = -0x6

.field public static final GWL_HWNDPARENT:I = -0x8

.field public static final GWL_ID:I = -0xc

.field public static final GWL_STYLE:I = -0x10

.field public static final GWL_USERDATA:I = -0x15

.field public static final GWL_WNDPROC:I = -0x4

.field public static final GW_CHILD:I = 0x5

.field public static final GW_ENABLEDPOPUP:I = 0x6

.field public static final GW_HWNDFIRST:I = 0x0

.field public static final GW_HWNDLAST:I = 0x1

.field public static final GW_HWNDNEXT:I = 0x2

.field public static final GW_HWNDPREV:I = 0x3

.field public static final GW_OWNER:I = 0x4

.field public static final HWND_BROADCAST:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public static final HWND_MESSAGE:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public static final ICON_BIG:I = 0x1

.field public static final ICON_SMALL:I = 0x0

.field public static final ICON_SMALL2:I = 0x2

.field public static final IDC_APPSTARTING:I = 0x7f8a

.field public static final IDC_ARROW:I = 0x7f00

.field public static final IDC_CROSS:I = 0x7f03

.field public static final IDC_HAND:I = 0x7f89

.field public static final IDC_HELP:I = 0x7f8b

.field public static final IDC_IBEAM:I = 0x7f01

.field public static final IDC_NO:I = 0x7f88

.field public static final IDC_SIZEALL:I = 0x7f86

.field public static final IDC_SIZENESW:I = 0x7f83

.field public static final IDC_SIZENS:I = 0x7f85

.field public static final IDC_SIZENWSE:I = 0x7f82

.field public static final IDC_SIZEWE:I = 0x7f84

.field public static final IDC_UPARROW:I = 0x7f04

.field public static final IDC_WAIT:I = 0x7f02

.field public static final IDI_APPLICATION:I = 0x7f00

.field public static final IDI_ASTERISK:I = 0x7f04

.field public static final IDI_EXCLAMATION:I = 0x7f03

.field public static final IDI_HAND:I = 0x7f01

.field public static final IDI_QUESTION:I = 0x7f02

.field public static final IDI_WINLOGO:I = 0x7f05

.field public static final IMAGE_BITMAP:I = 0x0

.field public static final IMAGE_CURSOR:I = 0x2

.field public static final IMAGE_ENHMETAFILE:I = 0x3

.field public static final IMAGE_ICON:I = 0x1

.field public static final KL_NAMELENGTH:I = 0x9

.field public static final LR_COLOR:I = 0x2

.field public static final LR_COPYDELETEORG:I = 0x8

.field public static final LR_COPYFROMRESOURCE:I = 0x4000

.field public static final LR_COPYRETURNORG:I = 0x4

.field public static final LR_CREATEDIBSECTION:I = 0x2000

.field public static final LR_DEFAULTCOLOR:I = 0x0

.field public static final LR_DEFAULTSIZE:I = 0x40

.field public static final LR_LOADFROMFILE:I = 0x10

.field public static final LR_LOADMAP3DCOLORS:I = 0x1000

.field public static final LR_LOADTRANSPARENT:I = 0x20

.field public static final LR_MONOCHROME:I = 0x1

.field public static final LR_SHARED:I = 0x8000

.field public static final LR_VGACOLOR:I = 0x80

.field public static final LWA_ALPHA:I = 0x2

.field public static final LWA_COLORKEY:I = 0x1

.field public static final MAPVK_VK_TO_CHAR:I = 0x2

.field public static final MAPVK_VK_TO_VSC:I = 0x0

.field public static final MAPVK_VK_TO_VSC_EX:I = 0x4

.field public static final MAPVK_VSC_TO_VK:I = 0x1

.field public static final MAPVK_VSC_TO_VK_EX:I = 0x3

.field public static final MODIFIER_ALT_MASK:I = 0x4

.field public static final MODIFIER_CTRL_MASK:I = 0x2

.field public static final MODIFIER_HANKAKU_MASK:I = 0x8

.field public static final MODIFIER_RESERVED1_MASK:I = 0x10

.field public static final MODIFIER_RESERVED2_MASK:I = 0x20

.field public static final MODIFIER_SHIFT_MASK:I = 0x1

.field public static final MOD_ALT:I = 0x1

.field public static final MOD_CONTROL:I = 0x2

.field public static final MOD_NOREPEAT:I = 0x4000

.field public static final MOD_SHIFT:I = 0x4

.field public static final MOD_WIN:I = 0x8

.field public static final MONITORINFOF_PRIMARY:I = 0x1

.field public static final MONITOR_DEFAULTTONEAREST:I = 0x2

.field public static final MONITOR_DEFAULTTONULL:I = 0x0

.field public static final MONITOR_DEFAULTTOPRIMARY:I = 0x1

.field public static final RDW_ALLCHILDREN:I = 0x80

.field public static final RDW_ERASE:I = 0x4

.field public static final RDW_ERASENOW:I = 0x200

.field public static final RDW_FRAME:I = 0x400

.field public static final RDW_INTERNALPAINT:I = 0x2

.field public static final RDW_INVALIDATE:I = 0x1

.field public static final RDW_NOCHILDREN:I = 0x40

.field public static final RDW_NOERASE:I = 0x20

.field public static final RDW_NOFRAME:I = 0x800

.field public static final RDW_NOINTERNALPAINT:I = 0x10

.field public static final RDW_UPDATENOW:I = 0x100

.field public static final RDW_VALIDATE:I = 0x8

.field public static final RIM_TYPEHID:I = 0x2

.field public static final RIM_TYPEKEYBOARD:I = 0x1

.field public static final RIM_TYPEMOUSE:I = 0x0

.field public static final SC_MAXIMIZE:I = 0xf030

.field public static final SC_MINIMIZE:I = 0xf020

.field public static final SMTO_ABORTIFHUNG:I = 0x2

.field public static final SMTO_BLOCK:I = 0x1

.field public static final SMTO_ERRORONEXIT:I = 0x20

.field public static final SMTO_NORMAL:I = 0x0

.field public static final SMTO_NOTIMEOUTIFNOTHUNG:I = 0x8

.field public static final SM_ARRANGE:I = 0x38

.field public static final SM_CARETBLINKINGENABLED:I = 0x2002

.field public static final SM_CLEANBOOT:I = 0x43

.field public static final SM_CMONITORS:I = 0x50

.field public static final SM_CMOUSEBUTTONS:I = 0x2b

.field public static final SM_CXBORDER:I = 0x5

.field public static final SM_CXCURSOR:I = 0xd

.field public static final SM_CXDLGFRAME:I = 0x7

.field public static final SM_CXDOUBLECLK:I = 0x24

.field public static final SM_CXDRAG:I = 0x44

.field public static final SM_CXEDGE:I = 0x2d

.field public static final SM_CXFIXEDFRAME:I = 0x7

.field public static final SM_CXFOCUSBORDER:I = 0x53

.field public static final SM_CXFRAME:I = 0x20

.field public static final SM_CXFULLSCREEN:I = 0x10

.field public static final SM_CXHSCROLL:I = 0x15

.field public static final SM_CXHTHUMB:I = 0xa

.field public static final SM_CXICON:I = 0xb

.field public static final SM_CXICONSPACING:I = 0x26

.field public static final SM_CXMAXIMIZED:I = 0x3d

.field public static final SM_CXMAXTRACK:I = 0x3b

.field public static final SM_CXMENUCHECK:I = 0x47

.field public static final SM_CXMENUSIZE:I = 0x36

.field public static final SM_CXMIN:I = 0x1c

.field public static final SM_CXMINIMIZED:I = 0x39

.field public static final SM_CXMINSPACING:I = 0x2f

.field public static final SM_CXMINTRACK:I = 0x22

.field public static final SM_CXPADDEDBORDER:I = 0x5c

.field public static final SM_CXSCREEN:I = 0x0

.field public static final SM_CXSIZE:I = 0x1e

.field public static final SM_CXSIZEFRAME:I = 0x20

.field public static final SM_CXSMICON:I = 0x31

.field public static final SM_CXSMSIZE:I = 0x34

.field public static final SM_CXVIRTUALSCREEN:I = 0x4e

.field public static final SM_CXVSCROLL:I = 0x2

.field public static final SM_CYBORDER:I = 0x6

.field public static final SM_CYCAPTION:I = 0x4

.field public static final SM_CYCURSOR:I = 0xe

.field public static final SM_CYDLGFRAME:I = 0x8

.field public static final SM_CYDOUBLECLK:I = 0x25

.field public static final SM_CYDRAG:I = 0x45

.field public static final SM_CYEDGE:I = 0x2e

.field public static final SM_CYFIXEDFRAME:I = 0x8

.field public static final SM_CYFOCUSBORDER:I = 0x54

.field public static final SM_CYFRAME:I = 0x21

.field public static final SM_CYFULLSCREEN:I = 0x11

.field public static final SM_CYHSCROLL:I = 0x3

.field public static final SM_CYICON:I = 0xc

.field public static final SM_CYICONSPACING:I = 0x27

.field public static final SM_CYKANJIWINDOW:I = 0x12

.field public static final SM_CYMAXIMIZED:I = 0x3e

.field public static final SM_CYMAXTRACK:I = 0x3c

.field public static final SM_CYMENU:I = 0xf

.field public static final SM_CYMENUCHECK:I = 0x48

.field public static final SM_CYMENUSIZE:I = 0x37

.field public static final SM_CYMIN:I = 0x1d

.field public static final SM_CYMINIMIZED:I = 0x3a

.field public static final SM_CYMINSPACING:I = 0x30

.field public static final SM_CYMINTRACK:I = 0x23

.field public static final SM_CYSCREEN:I = 0x1

.field public static final SM_CYSIZE:I = 0x1f

.field public static final SM_CYSIZEFRAME:I = 0x21

.field public static final SM_CYSMCAPTION:I = 0x33

.field public static final SM_CYSMICON:I = 0x32

.field public static final SM_CYSMSIZE:I = 0x35

.field public static final SM_CYVIRTUALSCREEN:I = 0x4f

.field public static final SM_CYVSCROLL:I = 0x14

.field public static final SM_CYVTHUMB:I = 0x9

.field public static final SM_DBCSENABLED:I = 0x2a

.field public static final SM_DEBUG:I = 0x16

.field public static final SM_IMMENABLED:I = 0x52

.field public static final SM_MEDIACENTER:I = 0x57

.field public static final SM_MENUDROPALIGNMENT:I = 0x28

.field public static final SM_MIDEASTENABLED:I = 0x4a

.field public static final SM_MOUSEHORIZONTALWHEELPRESENT:I = 0x5b

.field public static final SM_MOUSEPRESENT:I = 0x13

.field public static final SM_MOUSEWHEELPRESENT:I = 0x4b

.field public static final SM_NETWORK:I = 0x3f

.field public static final SM_PENWINDOWS:I = 0x29

.field public static final SM_REMOTECONTROL:I = 0x2001

.field public static final SM_REMOTESESSION:I = 0x1000

.field public static final SM_RESERVED1:I = 0x18

.field public static final SM_RESERVED2:I = 0x19

.field public static final SM_RESERVED3:I = 0x1a

.field public static final SM_RESERVED4:I = 0x1b

.field public static final SM_SAMEDISPLAYFORMAT:I = 0x51

.field public static final SM_SECURE:I = 0x2c

.field public static final SM_SERVERR2:I = 0x59

.field public static final SM_SHOWSOUNDS:I = 0x46

.field public static final SM_SHUTTINGDOWN:I = 0x2000

.field public static final SM_SLOWMACHINE:I = 0x49

.field public static final SM_STARTER:I = 0x58

.field public static final SM_SWAPBUTTON:I = 0x17

.field public static final SM_TABLETPC:I = 0x56

.field public static final SM_XVIRTUALSCREEN:I = 0x4c

.field public static final SM_YVIRTUALSCREEN:I = 0x4d

.field public static final SWP_ASYNCWINDOWPOS:I = 0x4000

.field public static final SWP_DEFERERASE:I = 0x2000

.field public static final SWP_DRAWFRAME:I = 0x20

.field public static final SWP_FRAMECHANGED:I = 0x20

.field public static final SWP_HIDEWINDOW:I = 0x80

.field public static final SWP_NOACTIVATE:I = 0x10

.field public static final SWP_NOCOPYBITS:I = 0x100

.field public static final SWP_NOMOVE:I = 0x2

.field public static final SWP_NOOWNERZORDER:I = 0x200

.field public static final SWP_NOREDRAW:I = 0x8

.field public static final SWP_NOREPOSITION:I = 0x200

.field public static final SWP_NOSENDCHANGING:I = 0x400

.field public static final SWP_NOSIZE:I = 0x1

.field public static final SWP_NOZORDER:I = 0x4

.field public static final SWP_SHOWWINDOW:I = 0x40

.field public static final SW_FORCEMINIMIZE:I = 0xb

.field public static final SW_HIDE:I = 0x0

.field public static final SW_MAX:I = 0xb

.field public static final SW_MAXIMIZE:I = 0x3

.field public static final SW_MINIMIZE:I = 0x6

.field public static final SW_NORMAL:I = 0x1

.field public static final SW_RESTORE:I = 0x9

.field public static final SW_SHOW:I = 0x5

.field public static final SW_SHOWDEFAULT:I = 0xa

.field public static final SW_SHOWMAXIMIZED:I = 0x3

.field public static final SW_SHOWMINIMIZED:I = 0x2

.field public static final SW_SHOWMINNOACTIVE:I = 0x7

.field public static final SW_SHOWNA:I = 0x8

.field public static final SW_SHOWNOACTIVATE:I = 0x4

.field public static final SW_SHOWNORMAL:I = 0x1

.field public static final ULW_ALPHA:I = 0x2

.field public static final ULW_COLORKEY:I = 0x1

.field public static final ULW_OPAQUE:I = 0x4

.field public static final VK_CONTROL:I = 0x11

.field public static final VK_LCONTROL:I = 0xa2

.field public static final VK_LMENU:I = 0xa4

.field public static final VK_LSHIFT:I = 0xa0

.field public static final VK_MENU:I = 0x12

.field public static final VK_RCONTROL:I = 0xa3

.field public static final VK_RMENU:I = 0xa5

.field public static final VK_RSHIFT:I = 0xa1

.field public static final VK_SHIFT:I = 0x10

.field public static final WH_CALLWNDPROC:I = 0x4

.field public static final WH_KEYBOARD:I = 0x2

.field public static final WH_KEYBOARD_LL:I = 0xd

.field public static final WH_MOUSE:I = 0x7

.field public static final WH_MOUSE_LL:I = 0xe

.field public static final WM_CHAR:I = 0x102

.field public static final WM_CLOSE:I = 0x10

.field public static final WM_COPYDATA:I = 0x4a

.field public static final WM_CREATE:I = 0x1

.field public static final WM_DESTROY:I = 0x2

.field public static final WM_DEVICECHANGE:I = 0x219

.field public static final WM_DRAWITEM:I = 0x2b

.field public static final WM_GETICON:I = 0x7f

.field public static final WM_HOTKEY:I = 0x312

.field public static final WM_KEYDOWN:I = 0x100

.field public static final WM_KEYUP:I = 0x101

.field public static final WM_MDIMAXIMIZE:I = 0x225

.field public static final WM_PAINT:I = 0xf

.field public static final WM_QUIT:I = 0x12

.field public static final WM_SESSION_CHANGE:I = 0x2b1

.field public static final WM_SHOWWINDOW:I = 0x18

.field public static final WM_SIZE:I = 0x5

.field public static final WM_SYSCOMMAND:I = 0x112

.field public static final WM_SYSKEYDOWN:I = 0x104

.field public static final WM_SYSKEYUP:I = 0x105

.field public static final WM_USER:I = 0x400

.field public static final WS_BORDER:I = 0x800000

.field public static final WS_CAPTION:I = 0xc00000

.field public static final WS_CHILD:I = 0x40000000

.field public static final WS_CHILDWINDOW:I = 0x40000000

.field public static final WS_CLIPCHILDREN:I = 0x2000000

.field public static final WS_CLIPSIBLINGS:I = 0x4000000

.field public static final WS_DISABLED:I = 0x8000000

.field public static final WS_DLGFRAME:I = 0x400000

.field public static final WS_EX_COMPOSITED:I = 0x20000000

.field public static final WS_EX_LAYERED:I = 0x80000

.field public static final WS_EX_TRANSPARENT:I = 0x20

.field public static final WS_GROUP:I = 0x20000

.field public static final WS_HSCROLL:I = 0x100000

.field public static final WS_ICONIC:I = 0x20000000

.field public static final WS_MAXIMIZE:I = 0x1000000

.field public static final WS_MAXIMIZEBOX:I = 0x10000

.field public static final WS_MINIMIZE:I = 0x20000000

.field public static final WS_MINIMIZEBOX:I = 0x20000

.field public static final WS_OVERLAPPED:I = 0x0

.field public static final WS_OVERLAPPEDWINDOW:I = 0xcf0000

.field public static final WS_POPUP:I = -0x80000000

.field public static final WS_POPUPWINDOW:I = -0x7f780000

.field public static final WS_SIZEBOX:I = 0x40000

.field public static final WS_SYSMENU:I = 0x80000

.field public static final WS_TABSTOP:I = 0x10000

.field public static final WS_THICKFRAME:I = 0x40000

.field public static final WS_TILED:I = 0x0

.field public static final WS_TILEDWINDOW:I = 0xcf0000

.field public static final WS_VISIBLE:I = 0x10000000

.field public static final WS_VSCROLL:I = 0x200000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$HWND;

    const v1, 0xffff

    invoke-static {v1}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinDef$HWND;-><init>(Lcom/sun/jna/Pointer;)V

    sput-object v0, Lcom/sun/jna/platform/win32/WinUser;->HWND_BROADCAST:Lcom/sun/jna/platform/win32/WinDef$HWND;

    .line 46
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$HWND;

    const/4 v1, -0x3

    invoke-static {v1}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinDef$HWND;-><init>(Lcom/sun/jna/Pointer;)V

    sput-object v0, Lcom/sun/jna/platform/win32/WinUser;->HWND_MESSAGE:Lcom/sun/jna/platform/win32/WinDef$HWND;

    .line 186
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    sput v0, Lcom/sun/jna/platform/win32/WinUser;->DWL_DLGPROC:I

    .line 188
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sun/jna/platform/win32/WinUser;->DWL_USER:I

    return-void
.end method
