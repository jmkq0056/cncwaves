.class public interface abstract Lcom/sun/jna/platform/unix/X11;
.super Ljava/lang/Object;
.source "X11.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/unix/X11$XKeyboardStateRef;,
        Lcom/sun/jna/platform/unix/X11$XKeyboardControlRef;,
        Lcom/sun/jna/platform/unix/X11$XModifierKeymapRef;,
        Lcom/sun/jna/platform/unix/X11$XErrorHandler;,
        Lcom/sun/jna/platform/unix/X11$XKeymapEvent;,
        Lcom/sun/jna/platform/unix/X11$XErrorEvent;,
        Lcom/sun/jna/platform/unix/X11$XMappingEvent;,
        Lcom/sun/jna/platform/unix/X11$XColormapEvent;,
        Lcom/sun/jna/platform/unix/X11$XSelectionEvent;,
        Lcom/sun/jna/platform/unix/X11$XSelectionRequestEvent;,
        Lcom/sun/jna/platform/unix/X11$XSelectionClearEvent;,
        Lcom/sun/jna/platform/unix/X11$XPropertyEvent;,
        Lcom/sun/jna/platform/unix/X11$XCirculateRequestEvent;,
        Lcom/sun/jna/platform/unix/X11$XCirculateEvent;,
        Lcom/sun/jna/platform/unix/X11$XConfigureRequestEvent;,
        Lcom/sun/jna/platform/unix/X11$XResizeRequestEvent;,
        Lcom/sun/jna/platform/unix/X11$XGravityEvent;,
        Lcom/sun/jna/platform/unix/X11$XConfigureEvent;,
        Lcom/sun/jna/platform/unix/X11$XReparentEvent;,
        Lcom/sun/jna/platform/unix/X11$XMapRequestEvent;,
        Lcom/sun/jna/platform/unix/X11$XMapEvent;,
        Lcom/sun/jna/platform/unix/X11$XUnmapEvent;,
        Lcom/sun/jna/platform/unix/X11$XDestroyWindowEvent;,
        Lcom/sun/jna/platform/unix/X11$XCreateWindowEvent;,
        Lcom/sun/jna/platform/unix/X11$XVisibilityEvent;,
        Lcom/sun/jna/platform/unix/X11$XNoExposeEvent;,
        Lcom/sun/jna/platform/unix/X11$XGraphicsExposeEvent;,
        Lcom/sun/jna/platform/unix/X11$XExposeEvent;,
        Lcom/sun/jna/platform/unix/X11$XFocusOutEvent;,
        Lcom/sun/jna/platform/unix/X11$XFocusInEvent;,
        Lcom/sun/jna/platform/unix/X11$XFocusChangeEvent;,
        Lcom/sun/jna/platform/unix/X11$XLeaveWindowEvent;,
        Lcom/sun/jna/platform/unix/X11$XEnterWindowEvent;,
        Lcom/sun/jna/platform/unix/X11$XCrossingEvent;,
        Lcom/sun/jna/platform/unix/X11$XPointerMovedEvent;,
        Lcom/sun/jna/platform/unix/X11$XMotionEvent;,
        Lcom/sun/jna/platform/unix/X11$XClientMessageEvent;,
        Lcom/sun/jna/platform/unix/X11$XButtonReleasedEvent;,
        Lcom/sun/jna/platform/unix/X11$XButtonPressedEvent;,
        Lcom/sun/jna/platform/unix/X11$XButtonEvent;,
        Lcom/sun/jna/platform/unix/X11$XKeyEvent;,
        Lcom/sun/jna/platform/unix/X11$XAnyEvent;,
        Lcom/sun/jna/platform/unix/X11$XEvent;,
        Lcom/sun/jna/platform/unix/X11$XGCValues;,
        Lcom/sun/jna/platform/unix/X11$XRectangle;,
        Lcom/sun/jna/platform/unix/X11$XPoint;,
        Lcom/sun/jna/platform/unix/X11$XVisualInfo;,
        Lcom/sun/jna/platform/unix/X11$XSetWindowAttributes;,
        Lcom/sun/jna/platform/unix/X11$XWindowAttributes;,
        Lcom/sun/jna/platform/unix/X11$XSizeHints;,
        Lcom/sun/jna/platform/unix/X11$XTextProperty;,
        Lcom/sun/jna/platform/unix/X11$XWMHints;,
        Lcom/sun/jna/platform/unix/X11$XDeviceByReference;,
        Lcom/sun/jna/platform/unix/X11$XInputClassInfoByReference;,
        Lcom/sun/jna/platform/unix/X11$XTest;,
        Lcom/sun/jna/platform/unix/X11$Xevie;,
        Lcom/sun/jna/platform/unix/X11$Xrender;,
        Lcom/sun/jna/platform/unix/X11$Xext;,
        Lcom/sun/jna/platform/unix/X11$XImage;,
        Lcom/sun/jna/platform/unix/X11$GC;,
        Lcom/sun/jna/platform/unix/X11$Screen;,
        Lcom/sun/jna/platform/unix/X11$Visual;,
        Lcom/sun/jna/platform/unix/X11$Display;,
        Lcom/sun/jna/platform/unix/X11$Pixmap;,
        Lcom/sun/jna/platform/unix/X11$WindowByReference;,
        Lcom/sun/jna/platform/unix/X11$Window;,
        Lcom/sun/jna/platform/unix/X11$Drawable;,
        Lcom/sun/jna/platform/unix/X11$KeySym;,
        Lcom/sun/jna/platform/unix/X11$Cursor;,
        Lcom/sun/jna/platform/unix/X11$Font;,
        Lcom/sun/jna/platform/unix/X11$Colormap;,
        Lcom/sun/jna/platform/unix/X11$AtomByReference;,
        Lcom/sun/jna/platform/unix/X11$Atom;,
        Lcom/sun/jna/platform/unix/X11$XID;,
        Lcom/sun/jna/platform/unix/X11$VisualID;
    }
.end annotation


# static fields
.field public static final Above:I = 0x0

.field public static final AllTemporary:I = 0x0

.field public static final AllocAll:I = 0x1

.field public static final AllocNone:I = 0x0

.field public static final AllowExposures:I = 0x1

.field public static final AlreadyGrabbed:I = 0x1

.field public static final Always:I = 0x2

.field public static final AnyButton:I = 0x0

.field public static final AnyKey:I = 0x0

.field public static final AnyModifier:I = 0x8000

.field public static final AnyPropertyType:I = 0x0

.field public static final ArcChord:I = 0x0

.field public static final ArcPieSlice:I = 0x1

.field public static final AsyncBoth:I = 0x6

.field public static final AsyncKeyboard:I = 0x3

.field public static final AsyncPointer:I = 0x0

.field public static final AutoRepeatModeDefault:I = 0x2

.field public static final AutoRepeatModeOff:I = 0x0

.field public static final AutoRepeatModeOn:I = 0x1

.field public static final BadAccess:I = 0xa

.field public static final BadAlloc:I = 0xb

.field public static final BadAtom:I = 0x5

.field public static final BadColor:I = 0xc

.field public static final BadCursor:I = 0x6

.field public static final BadDrawable:I = 0x9

.field public static final BadFont:I = 0x7

.field public static final BadGC:I = 0xd

.field public static final BadIDChoice:I = 0xe

.field public static final BadImplementation:I = 0x11

.field public static final BadLength:I = 0x10

.field public static final BadMatch:I = 0x8

.field public static final BadName:I = 0xf

.field public static final BadPixmap:I = 0x4

.field public static final BadRequest:I = 0x1

.field public static final BadValue:I = 0x2

.field public static final BadWindow:I = 0x3

.field public static final Below:I = 0x1

.field public static final BottomIf:I = 0x3

.field public static final Button1:I = 0x1

.field public static final Button1Mask:I = 0x100

.field public static final Button1MotionMask:I = 0x100

.field public static final Button2:I = 0x2

.field public static final Button2Mask:I = 0x200

.field public static final Button2MotionMask:I = 0x200

.field public static final Button3:I = 0x3

.field public static final Button3Mask:I = 0x400

.field public static final Button3MotionMask:I = 0x400

.field public static final Button4:I = 0x4

.field public static final Button4Mask:I = 0x800

.field public static final Button4MotionMask:I = 0x800

.field public static final Button5:I = 0x5

.field public static final Button5Mask:I = 0x1000

.field public static final Button5MotionMask:I = 0x1000

.field public static final ButtonMotionMask:I = 0x2000

.field public static final ButtonPress:I = 0x4

.field public static final ButtonPressMask:I = 0x4

.field public static final ButtonRelease:I = 0x5

.field public static final ButtonReleaseMask:I = 0x8

.field public static final CWBackPixel:I = 0x2

.field public static final CWBackPixmap:I = 0x1

.field public static final CWBackingPixel:I = 0x100

.field public static final CWBackingPlanes:I = 0x80

.field public static final CWBackingStore:I = 0x40

.field public static final CWBitGravity:I = 0x10

.field public static final CWBorderPixel:I = 0x8

.field public static final CWBorderPixmap:I = 0x4

.field public static final CWBorderWidth:I = 0x10

.field public static final CWColormap:I = 0x2000

.field public static final CWCursor:I = 0x4000

.field public static final CWDontPropagate:I = 0x1000

.field public static final CWEventMask:I = 0x800

.field public static final CWHeight:I = 0x8

.field public static final CWOverrideRedirect:I = 0x200

.field public static final CWSaveUnder:I = 0x400

.field public static final CWSibling:I = 0x20

.field public static final CWStackMode:I = 0x40

.field public static final CWWidth:I = 0x4

.field public static final CWWinGravity:I = 0x20

.field public static final CWX:I = 0x1

.field public static final CWY:I = 0x2

.field public static final CapButt:I = 0x1

.field public static final CapNotLast:I = 0x0

.field public static final CapProjecting:I = 0x3

.field public static final CapRound:I = 0x2

.field public static final CenterGravity:I = 0x5

.field public static final CirculateNotify:I = 0x1a

.field public static final CirculateRequest:I = 0x1b

.field public static final ClientMessage:I = 0x21

.field public static final ClipByChildren:I = 0x0

.field public static final ColormapChangeMask:I = 0x800000

.field public static final ColormapInstalled:I = 0x1

.field public static final ColormapNotify:I = 0x20

.field public static final ColormapUninstalled:I = 0x0

.field public static final Complex:I = 0x0

.field public static final ConfigureNotify:I = 0x16

.field public static final ConfigureRequest:I = 0x17

.field public static final ControlMapIndex:I = 0x2

.field public static final ControlMask:I = 0x4

.field public static final Convex:I = 0x2

.field public static final CoordModeOrigin:I = 0x0

.field public static final CoordModePrevious:I = 0x1

.field public static final CopyFromParent:I = 0x0

.field public static final CreateNotify:I = 0x10

.field public static final CurrentTime:I = 0x0

.field public static final CursorShape:I = 0x0

.field public static final DefaultBlanking:I = 0x2

.field public static final DefaultExposures:I = 0x2

.field public static final DestroyAll:I = 0x0

.field public static final DestroyNotify:I = 0x11

.field public static final DirectColor:I = 0x5

.field public static final DisableAccess:I = 0x0

.field public static final DisableScreenInterval:I = 0x0

.field public static final DisableScreenSaver:I = 0x0

.field public static final DoBlue:I = 0x4

.field public static final DoGreen:I = 0x2

.field public static final DoRed:I = 0x1

.field public static final DontAllowExposures:I = 0x0

.field public static final DontPreferBlanking:I = 0x0

.field public static final EastGravity:I = 0x6

.field public static final EnableAccess:I = 0x1

.field public static final EnterNotify:I = 0x7

.field public static final EnterWindowMask:I = 0x10

.field public static final EvenOddRule:I = 0x0

.field public static final Expose:I = 0xc

.field public static final ExposureMask:I = 0x8000

.field public static final FamilyChaos:I = 0x2

.field public static final FamilyDECnet:I = 0x1

.field public static final FamilyInternet:I = 0x0

.field public static final FamilyInternet6:I = 0x6

.field public static final FamilyServerInterpreted:I = 0x5

.field public static final FillOpaqueStippled:I = 0x3

.field public static final FillSolid:I = 0x0

.field public static final FillStippled:I = 0x2

.field public static final FillTiled:I = 0x1

.field public static final FirstExtensionError:I = 0x80

.field public static final FocusChangeMask:I = 0x200000

.field public static final FocusIn:I = 0x9

.field public static final FocusOut:I = 0xa

.field public static final FontChange:I = 0xff

.field public static final FontLeftToRight:I = 0x0

.field public static final FontRightToLeft:I = 0x1

.field public static final ForgetGravity:I = 0x0

.field public static final GCArcMode:I = 0x400000

.field public static final GCBackground:I = 0x8

.field public static final GCCapStyle:I = 0x40

.field public static final GCClipMask:I = 0x80000

.field public static final GCClipXOrigin:I = 0x20000

.field public static final GCClipYOrigin:I = 0x40000

.field public static final GCDashList:I = 0x200000

.field public static final GCDashOffset:I = 0x100000

.field public static final GCFillRule:I = 0x200

.field public static final GCFillStyle:I = 0x100

.field public static final GCFont:I = 0x4000

.field public static final GCForeground:I = 0x4

.field public static final GCFunction:I = 0x1

.field public static final GCGraphicsExposures:I = 0x10000

.field public static final GCJoinStyle:I = 0x80

.field public static final GCLastBit:I = 0x16

.field public static final GCLineStyle:I = 0x20

.field public static final GCLineWidth:I = 0x10

.field public static final GCPlaneMask:I = 0x2

.field public static final GCStipple:I = 0x800

.field public static final GCSubwindowMode:I = 0x8000

.field public static final GCTile:I = 0x400

.field public static final GCTileStipXOrigin:I = 0x1000

.field public static final GCTileStipYOrigin:I = 0x2000

.field public static final GXand:I = 0x1

.field public static final GXandInverted:I = 0x4

.field public static final GXandReverse:I = 0x2

.field public static final GXclear:I = 0x0

.field public static final GXcopy:I = 0x3

.field public static final GXcopyInverted:I = 0xc

.field public static final GXequiv:I = 0x9

.field public static final GXinvert:I = 0xa

.field public static final GXnand:I = 0xe

.field public static final GXnoop:I = 0x5

.field public static final GXnor:I = 0x8

.field public static final GXor:I = 0x7

.field public static final GXorInverted:I = 0xd

.field public static final GXorReverse:I = 0xb

.field public static final GXset:I = 0xf

.field public static final GXxor:I = 0x6

.field public static final GrabFrozen:I = 0x4

.field public static final GrabInvalidTime:I = 0x2

.field public static final GrabModeAsync:I = 0x1

.field public static final GrabModeSync:I = 0x0

.field public static final GrabNotViewable:I = 0x3

.field public static final GrabSuccess:I = 0x0

.field public static final GraphicsExpose:I = 0xd

.field public static final GravityNotify:I = 0x18

.field public static final GrayScale:I = 0x1

.field public static final HostDelete:I = 0x1

.field public static final HostInsert:I = 0x0

.field public static final INSTANCE:Lcom/sun/jna/platform/unix/X11;

.field public static final IncludeInferiors:I = 0x1

.field public static final InputFocus:I = 0x1

.field public static final InputOnly:I = 0x2

.field public static final InputOutput:I = 0x1

.field public static final IsUnmapped:I = 0x0

.field public static final IsUnviewable:I = 0x1

.field public static final IsViewable:I = 0x2

.field public static final JoinBevel:I = 0x2

.field public static final JoinMiter:I = 0x0

.field public static final JoinRound:I = 0x1

.field public static final KBAutoRepeatMode:I = 0x80

.field public static final KBBellDuration:I = 0x8

.field public static final KBBellPercent:I = 0x2

.field public static final KBBellPitch:I = 0x4

.field public static final KBKey:I = 0x40

.field public static final KBKeyClickPercent:I = 0x1

.field public static final KBLed:I = 0x10

.field public static final KBLedMode:I = 0x20

.field public static final KeyPress:I = 0x2

.field public static final KeyPressMask:I = 0x1

.field public static final KeyRelease:I = 0x3

.field public static final KeyReleaseMask:I = 0x2

.field public static final KeymapNotify:I = 0xb

.field public static final KeymapStateMask:I = 0x4000

.field public static final LASTEvent:I = 0x23

.field public static final LSBFirst:I = 0x0

.field public static final LastExtensionError:I = 0xff

.field public static final LeaveNotify:I = 0x8

.field public static final LeaveWindowMask:I = 0x20

.field public static final LedModeOff:I = 0x0

.field public static final LedModeOn:I = 0x1

.field public static final LineDoubleDash:I = 0x2

.field public static final LineOnOffDash:I = 0x1

.field public static final LineSolid:I = 0x0

.field public static final LockMapIndex:I = 0x1

.field public static final LockMask:I = 0x2

.field public static final LowerHighest:I = 0x1

.field public static final MSBFirst:I = 0x1

.field public static final MapNotify:I = 0x13

.field public static final MapRequest:I = 0x14

.field public static final MappingBusy:I = 0x1

.field public static final MappingFailed:I = 0x2

.field public static final MappingKeyboard:I = 0x1

.field public static final MappingModifier:I = 0x0

.field public static final MappingNotify:I = 0x22

.field public static final MappingPointer:I = 0x2

.field public static final MappingSuccess:I = 0x0

.field public static final Mod1MapIndex:I = 0x3

.field public static final Mod1Mask:I = 0x8

.field public static final Mod2MapIndex:I = 0x4

.field public static final Mod2Mask:I = 0x10

.field public static final Mod3MapIndex:I = 0x5

.field public static final Mod3Mask:I = 0x20

.field public static final Mod4MapIndex:I = 0x6

.field public static final Mod4Mask:I = 0x40

.field public static final Mod5MapIndex:I = 0x7

.field public static final Mod5Mask:I = 0x80

.field public static final MotionNotify:I = 0x6

.field public static final NoEventMask:I = 0x0

.field public static final NoExpose:I = 0xe

.field public static final NoSymbol:I = 0x0

.field public static final Nonconvex:I = 0x1

.field public static final None:I = 0x0

.field public static final NorthEastGravity:I = 0x3

.field public static final NorthGravity:I = 0x2

.field public static final NorthWestGravity:I = 0x1

.field public static final NotUseful:I = 0x0

.field public static final NotifyAncestor:I = 0x0

.field public static final NotifyDetailNone:I = 0x7

.field public static final NotifyGrab:I = 0x1

.field public static final NotifyHint:I = 0x1

.field public static final NotifyInferior:I = 0x2

.field public static final NotifyNonlinear:I = 0x3

.field public static final NotifyNonlinearVirtual:I = 0x4

.field public static final NotifyNormal:I = 0x0

.field public static final NotifyPointer:I = 0x5

.field public static final NotifyPointerRoot:I = 0x6

.field public static final NotifyUngrab:I = 0x2

.field public static final NotifyVirtual:I = 0x1

.field public static final NotifyWhileGrabbed:I = 0x3

.field public static final Opposite:I = 0x4

.field public static final OwnerGrabButtonMask:I = 0x1000000

.field public static final ParentRelative:I = 0x1

.field public static final PlaceOnBottom:I = 0x1

.field public static final PlaceOnTop:I = 0x0

.field public static final PointerMotionHintMask:I = 0x80

.field public static final PointerMotionMask:I = 0x40

.field public static final PointerRoot:I = 0x1

.field public static final PointerWindow:I = 0x0

.field public static final PreferBlanking:I = 0x1

.field public static final PropModeAppend:I = 0x2

.field public static final PropModePrepend:I = 0x1

.field public static final PropModeReplace:I = 0x0

.field public static final PropertyChangeMask:I = 0x400000

.field public static final PropertyDelete:I = 0x1

.field public static final PropertyNewValue:I = 0x0

.field public static final PropertyNotify:I = 0x1c

.field public static final PseudoColor:I = 0x3

.field public static final RaiseLowest:I = 0x0

.field public static final ReparentNotify:I = 0x15

.field public static final ReplayKeyboard:I = 0x5

.field public static final ReplayPointer:I = 0x2

.field public static final ResizeRedirectMask:I = 0x40000

.field public static final ResizeRequest:I = 0x19

.field public static final RetainPermanent:I = 0x1

.field public static final RetainTemporary:I = 0x2

.field public static final RevertToNone:I = 0x0

.field public static final RevertToParent:I = 0x2

.field public static final RevertToPointerRoot:I = 0x1

.field public static final ScreenSaverActive:I = 0x1

.field public static final ScreenSaverReset:I = 0x0

.field public static final SelectionClear:I = 0x1d

.field public static final SelectionNotify:I = 0x1f

.field public static final SelectionRequest:I = 0x1e

.field public static final SetModeDelete:I = 0x1

.field public static final SetModeInsert:I = 0x0

.field public static final ShiftMapIndex:I = 0x0

.field public static final ShiftMask:I = 0x1

.field public static final SouthEastGravity:I = 0x9

.field public static final SouthGravity:I = 0x8

.field public static final SouthWestGravity:I = 0x7

.field public static final StaticColor:I = 0x2

.field public static final StaticGravity:I = 0xa

.field public static final StaticGray:I = 0x0

.field public static final StippleShape:I = 0x2

.field public static final StructureNotifyMask:I = 0x20000

.field public static final SubstructureNotifyMask:I = 0x80000

.field public static final SubstructureRedirectMask:I = 0x100000

.field public static final Success:I = 0x0

.field public static final SyncBoth:I = 0x7

.field public static final SyncKeyboard:I = 0x4

.field public static final SyncPointer:I = 0x1

.field public static final TileShape:I = 0x1

.field public static final TopIf:I = 0x2

.field public static final TrueColor:I = 0x4

.field public static final UnmapGravity:I = 0x0

.field public static final UnmapNotify:I = 0x12

.field public static final Unsorted:I = 0x0

.field public static final VisibilityChangeMask:I = 0x10000

.field public static final VisibilityFullyObscured:I = 0x2

.field public static final VisibilityNotify:I = 0xf

.field public static final VisibilityPartiallyObscured:I = 0x1

.field public static final VisibilityUnobscured:I = 0x0

.field public static final VisualAllMask:I = 0x1ff

.field public static final VisualBitsPerRGBMask:I = 0x100

.field public static final VisualBlueMaskMask:I = 0x40

.field public static final VisualClassMask:I = 0x8

.field public static final VisualColormapSizeMask:I = 0x80

.field public static final VisualDepthMask:I = 0x4

.field public static final VisualGreenMaskMask:I = 0x20

.field public static final VisualIDMask:I = 0x1

.field public static final VisualNoMask:I = 0x0

.field public static final VisualRedMaskMask:I = 0x10

.field public static final VisualScreenMask:I = 0x2

.field public static final WestGravity:I = 0x4

.field public static final WhenMapped:I = 0x1

.field public static final WindingRule:I = 0x1

.field public static final XA_ARC:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_ATOM:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_BITMAP:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_CAP_HEIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_CARDINAL:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_COLORMAP:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_COPYRIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_CURSOR:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_CUT_BUFFER0:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_CUT_BUFFER1:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_CUT_BUFFER2:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_CUT_BUFFER3:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_CUT_BUFFER4:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_CUT_BUFFER5:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_CUT_BUFFER6:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_CUT_BUFFER7:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_DRAWABLE:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_END_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_FAMILY_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_FONT:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_FONT_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_FULL_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_INTEGER:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_ITALIC_ANGLE:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_LAST_PREDEFINED:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_MAX_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_MIN_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_NORM_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_NOTICE:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_PIXMAP:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_POINT:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_POINT_SIZE:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_PRIMARY:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_QUAD_WIDTH:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_RECTANGLE:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_RESOLUTION:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_RESOURCE_MANAGER:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_RGB_BEST_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_RGB_BLUE_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_RGB_COLOR_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_RGB_DEFAULT_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_RGB_GRAY_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_RGB_GREEN_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_RGB_RED_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_SECONDARY:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_STRIKEOUT_ASCENT:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_STRIKEOUT_DESCENT:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_STRING:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_SUBSCRIPT_X:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_SUBSCRIPT_Y:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_SUPERSCRIPT_X:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_SUPERSCRIPT_Y:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_UNDERLINE_POSITION:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_UNDERLINE_THICKNESS:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_VISUALID:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WEIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WINDOW:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WM_CLASS:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WM_CLIENT_MACHINE:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WM_COMMAND:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WM_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WM_ICON_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WM_ICON_SIZE:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WM_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WM_NORMAL_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WM_SIZE_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WM_TRANSIENT_FOR:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_WM_ZOOM_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XA_X_HEIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

.field public static final XK_0:I = 0x30

.field public static final XK_9:I = 0x39

.field public static final XK_A:I = 0x41

.field public static final XK_Alt_L:I = 0xffe9

.field public static final XK_Alt_R:I = 0xffea

.field public static final XK_CapsLock:I = 0xffe5

.field public static final XK_Control_L:I = 0xffe3

.field public static final XK_Control_R:I = 0xffe4

.field public static final XK_Meta_L:I = 0xffe7

.field public static final XK_Meta_R:I = 0xffe8

.field public static final XK_ShiftLock:I = 0xffe6

.field public static final XK_Shift_L:I = 0xffe1

.field public static final XK_Shift_R:I = 0xffe1

.field public static final XK_Z:I = 0x5a

.field public static final XK_a:I = 0x61

.field public static final XK_z:I = 0x7a

.field public static final XYBitmap:I = 0x0

.field public static final XYPixmap:I = 0x1

.field public static final YSorted:I = 0x1

.field public static final YXBanded:I = 0x3

.field public static final YXSorted:I = 0x2

.field public static final ZPixmap:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 396
    const-string v0, "X11"

    const-class v1, Lcom/sun/jna/platform/unix/X11;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/unix/X11;

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->INSTANCE:Lcom/sun/jna/platform/unix/X11;

    .line 657
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_PRIMARY:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 658
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_SECONDARY:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 659
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_ARC:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 660
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_ATOM:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 661
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_BITMAP:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 662
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_CARDINAL:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 663
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_COLORMAP:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 664
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_CURSOR:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 665
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER0:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 666
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER1:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 667
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER2:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 668
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER3:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 669
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER4:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 670
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER5:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 671
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER6:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 672
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER7:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 673
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_DRAWABLE:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 674
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_FONT:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 675
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_INTEGER:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 676
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_PIXMAP:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 677
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_POINT:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 678
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x16

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_RECTANGLE:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 679
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x17

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_RESOURCE_MANAGER:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 680
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x18

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_RGB_COLOR_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 681
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x19

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_RGB_BEST_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 682
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_RGB_BLUE_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 683
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_RGB_DEFAULT_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 684
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_RGB_GRAY_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 685
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_RGB_GREEN_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 686
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_RGB_RED_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 687
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_STRING:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 688
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_VISUALID:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 689
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WINDOW:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 690
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x22

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WM_COMMAND:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 691
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x23

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WM_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 692
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x24

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WM_CLIENT_MACHINE:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 693
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x25

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WM_ICON_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 694
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x26

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WM_ICON_SIZE:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 695
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x27

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WM_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 696
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WM_NORMAL_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 697
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x29

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WM_SIZE_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 698
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WM_ZOOM_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 699
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_MIN_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 700
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_NORM_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 701
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_MAX_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 702
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_END_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 703
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_SUPERSCRIPT_X:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 704
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x30

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_SUPERSCRIPT_Y:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 705
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x31

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_SUBSCRIPT_X:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 706
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_SUBSCRIPT_Y:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 707
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x33

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_UNDERLINE_POSITION:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 708
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x34

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_UNDERLINE_THICKNESS:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 709
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x35

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_STRIKEOUT_ASCENT:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 710
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x36

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_STRIKEOUT_DESCENT:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 711
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x37

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_ITALIC_ANGLE:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 712
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x38

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_X_HEIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 713
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x39

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_QUAD_WIDTH:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 714
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x3a

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WEIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 715
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x3b

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_POINT_SIZE:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 716
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_RESOLUTION:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 717
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x3d

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_COPYRIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 718
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x3e

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_NOTICE:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 719
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x3f

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_FONT_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 720
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x40

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_FAMILY_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 721
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x41

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_FULL_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 722
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x42

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_CAP_HEIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 723
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x43

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WM_CLASS:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 724
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    const-wide/16 v1, 0x44

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_WM_TRANSIENT_FOR:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 725
    sput-object v0, Lcom/sun/jna/platform/unix/X11;->XA_LAST_PREDEFINED:Lcom/sun/jna/platform/unix/X11$Atom;

    return-void
.end method


# virtual methods
.method public abstract DefaultScreenOfDisplay(Lcom/sun/jna/platform/unix/X11$Display;)Lcom/sun/jna/platform/unix/X11$Screen;
.end method

.method public abstract XAllocNamedColor(Lcom/sun/jna/platform/unix/X11$Display;ILjava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)I
.end method

.method public abstract XAllocSizeHints()Lcom/sun/jna/platform/unix/X11$XSizeHints;
.end method

.method public abstract XAutoRepeatOff(Lcom/sun/jna/platform/unix/X11$Display;)I
.end method

.method public abstract XAutoRepeatOn(Lcom/sun/jna/platform/unix/X11$Display;)I
.end method

.method public abstract XBell(Lcom/sun/jna/platform/unix/X11$Display;I)I
.end method

.method public abstract XChangeKeyboardControl(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XKeyboardControlRef;)I
.end method

.method public abstract XChangeKeyboardMapping(Lcom/sun/jna/platform/unix/X11$Display;II[Lcom/sun/jna/platform/unix/X11$KeySym;I)I
.end method

.method public abstract XChangeProperty(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$Atom;Lcom/sun/jna/platform/unix/X11$Atom;IILcom/sun/jna/Pointer;I)I
.end method

.method public abstract XChangeWindowAttributes(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XSetWindowAttributes;)I
.end method

.method public abstract XCheckMaskEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XEvent;)Z
.end method

.method public abstract XCheckTypedEvent(Lcom/sun/jna/platform/unix/X11$Display;ILcom/sun/jna/platform/unix/X11$XEvent;)Z
.end method

.method public abstract XCheckTypedWindowEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;ILcom/sun/jna/platform/unix/X11$XEvent;)Z
.end method

.method public abstract XCheckWindowEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XEvent;)Z
.end method

.method public abstract XClearArea(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;IIIII)I
.end method

.method public abstract XClearWindow(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;)I
.end method

.method public abstract XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I
.end method

.method public abstract XCopyArea(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$GC;IIIIII)I
.end method

.method public abstract XCreateBitmapFromData(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/Pointer;II)Lcom/sun/jna/platform/unix/X11$Pixmap;
.end method

.method public abstract XCreateColormap(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$Visual;I)Lcom/sun/jna/platform/unix/X11$Colormap;
.end method

.method public abstract XCreateGC(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XGCValues;)Lcom/sun/jna/platform/unix/X11$GC;
.end method

.method public abstract XCreateImage(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Visual;IIILcom/sun/jna/Pointer;IIII)Lcom/sun/jna/platform/unix/X11$XImage;
.end method

.method public abstract XCreatePixmap(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;III)Lcom/sun/jna/platform/unix/X11$Pixmap;
.end method

.method public abstract XCreateSimpleWindow(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;IIIIIII)Lcom/sun/jna/platform/unix/X11$Window;
.end method

.method public abstract XDefaultColormap(Lcom/sun/jna/platform/unix/X11$Display;I)Lcom/sun/jna/platform/unix/X11$Colormap;
.end method

.method public abstract XDefaultRootWindow(Lcom/sun/jna/platform/unix/X11$Display;)Lcom/sun/jna/platform/unix/X11$Window;
.end method

.method public abstract XDefaultScreen(Lcom/sun/jna/platform/unix/X11$Display;)I
.end method

.method public abstract XDefaultVisual(Lcom/sun/jna/platform/unix/X11$Display;I)Lcom/sun/jna/platform/unix/X11$Visual;
.end method

.method public abstract XDeleteModifiermapEntry(Lcom/sun/jna/platform/unix/X11$XModifierKeymapRef;BI)Lcom/sun/jna/platform/unix/X11$XModifierKeymapRef;
.end method

.method public abstract XDeleteProperty(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$Atom;)I
.end method

.method public abstract XDestroyImage(Lcom/sun/jna/platform/unix/X11$XImage;)I
.end method

.method public abstract XDestroyWindow(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;)I
.end method

.method public abstract XDisplayHeight(Lcom/sun/jna/platform/unix/X11$Display;I)I
.end method

.method public abstract XDisplayKeycodes(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract XDisplayWidth(Lcom/sun/jna/platform/unix/X11$Display;I)I
.end method

.method public abstract XDrawPoint(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$GC;II)I
.end method

.method public abstract XDrawPoints(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$GC;[Lcom/sun/jna/platform/unix/X11$XPoint;II)I
.end method

.method public abstract XEventsQueued(Lcom/sun/jna/platform/unix/X11$Display;I)I
.end method

.method public abstract XFetchName(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract XFillArc(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$GC;IIIIII)I
.end method

.method public abstract XFillPolygon(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$GC;[Lcom/sun/jna/platform/unix/X11$XPoint;III)I
.end method

.method public abstract XFillRectangle(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$GC;IIII)I
.end method

.method public abstract XFillRectangles(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$GC;[Lcom/sun/jna/platform/unix/X11$XRectangle;I)I
.end method

.method public abstract XFlush(Lcom/sun/jna/platform/unix/X11$Display;)I
.end method

.method public abstract XFree(Lcom/sun/jna/Pointer;)I
.end method

.method public abstract XFreeGC(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$GC;)I
.end method

.method public abstract XFreeModifiermap(Lcom/sun/jna/platform/unix/X11$XModifierKeymapRef;)I
.end method

.method public abstract XFreePixmap(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Pixmap;)I
.end method

.method public abstract XGetAtomName(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Atom;)Ljava/lang/String;
.end method

.method public abstract XGetErrorText(Lcom/sun/jna/platform/unix/X11$Display;I[BI)I
.end method

.method public abstract XGetGeometry(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$WindowByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract XGetKeyboardControl(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$XKeyboardStateRef;)I
.end method

.method public abstract XGetKeyboardMapping(Lcom/sun/jna/platform/unix/X11$Display;BILcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/unix/X11$KeySym;
.end method

.method public abstract XGetModifierMapping(Lcom/sun/jna/platform/unix/X11$Display;)Lcom/sun/jna/platform/unix/X11$XModifierKeymapRef;
.end method

.method public abstract XGetVisualInfo(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XVisualInfo;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/unix/X11$XVisualInfo;
.end method

.method public abstract XGetWMHints(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;)Lcom/sun/jna/platform/unix/X11$XWMHints;
.end method

.method public abstract XGetWMName(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$XTextProperty;)I
.end method

.method public abstract XGetWMProtocols(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract XGetWindowAttributes(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$XWindowAttributes;)I
.end method

.method public abstract XGetWindowProperty(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$Atom;Lcom/sun/jna/NativeLong;Lcom/sun/jna/NativeLong;ZLcom/sun/jna/platform/unix/X11$Atom;Lcom/sun/jna/platform/unix/X11$AtomByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/NativeLongByReference;Lcom/sun/jna/ptr/NativeLongByReference;Lcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract XGrabKey(Lcom/sun/jna/platform/unix/X11$Display;IILcom/sun/jna/platform/unix/X11$Window;III)I
.end method

.method public abstract XGrabKeyboard(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;IIILcom/sun/jna/NativeLong;)I
.end method

.method public abstract XInsertModifiermapEntry(Lcom/sun/jna/platform/unix/X11$XModifierKeymapRef;BI)Lcom/sun/jna/platform/unix/X11$XModifierKeymapRef;
.end method

.method public abstract XInternAtom(Lcom/sun/jna/platform/unix/X11$Display;Ljava/lang/String;Z)Lcom/sun/jna/platform/unix/X11$Atom;
.end method

.method public abstract XKeycodeToKeysym(Lcom/sun/jna/platform/unix/X11$Display;BI)Lcom/sun/jna/platform/unix/X11$KeySym;
.end method

.method public abstract XKeysymToKeycode(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$KeySym;)B
.end method

.method public abstract XKeysymToString(Lcom/sun/jna/platform/unix/X11$KeySym;)Ljava/lang/String;
.end method

.method public abstract XMapRaised(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;)I
.end method

.method public abstract XMapSubwindows(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;)I
.end method

.method public abstract XMapWindow(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;)I
.end method

.method public abstract XMaskEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XEvent;)I
.end method

.method public abstract XNewModifiermap(I)Lcom/sun/jna/platform/unix/X11$XModifierKeymapRef;
.end method

.method public abstract XNextEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$XEvent;)I
.end method

.method public abstract XOpenDisplay(Ljava/lang/String;)Lcom/sun/jna/platform/unix/X11$Display;
.end method

.method public abstract XPeekEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$XEvent;)I
.end method

.method public abstract XPending(Lcom/sun/jna/platform/unix/X11$Display;)I
.end method

.method public abstract XPutImage(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$GC;Lcom/sun/jna/platform/unix/X11$XImage;IIIIII)I
.end method

.method public abstract XQueryKeymap(Lcom/sun/jna/platform/unix/X11$Display;[B)I
.end method

.method public abstract XQueryPointer(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$WindowByReference;Lcom/sun/jna/platform/unix/X11$WindowByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract XQueryTree(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$WindowByReference;Lcom/sun/jna/platform/unix/X11$WindowByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract XRootWindow(Lcom/sun/jna/platform/unix/X11$Display;I)Lcom/sun/jna/platform/unix/X11$Window;
.end method

.method public abstract XSelectInput(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/NativeLong;)I
.end method

.method public abstract XSendEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;ILcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XEvent;)I
.end method

.method public abstract XSetBackground(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$GC;Lcom/sun/jna/NativeLong;)I
.end method

.method public abstract XSetErrorHandler(Lcom/sun/jna/platform/unix/X11$XErrorHandler;)Lcom/sun/jna/platform/unix/X11$XErrorHandler;
.end method

.method public abstract XSetFillRule(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$GC;I)I
.end method

.method public abstract XSetForeground(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$GC;Lcom/sun/jna/NativeLong;)I
.end method

.method public abstract XSetModifierMapping(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$XModifierKeymapRef;)I
.end method

.method public abstract XSetWMProperties(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/sun/jna/platform/unix/X11$XSizeHints;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)V
.end method

.method public abstract XSetWMProtocols(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;[Lcom/sun/jna/platform/unix/X11$Atom;I)I
.end method

.method public abstract XStringToKeysym(Ljava/lang/String;)Lcom/sun/jna/platform/unix/X11$KeySym;
.end method

.method public abstract XSync(Lcom/sun/jna/platform/unix/X11$Display;Z)I
.end method

.method public abstract XTranslateCoordinates(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$Window;IILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/unix/X11$WindowByReference;)Z
.end method

.method public abstract XUngrabKey(Lcom/sun/jna/platform/unix/X11$Display;IILcom/sun/jna/platform/unix/X11$Window;)I
.end method

.method public abstract XUngrabKeyboard(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/NativeLong;)I
.end method

.method public abstract XUnmapWindow(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;)I
.end method

.method public abstract XWindowEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XEvent;)I
.end method
