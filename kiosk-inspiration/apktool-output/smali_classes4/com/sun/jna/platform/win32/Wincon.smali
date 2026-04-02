.class public interface abstract Lcom/sun/jna/platform/win32/Wincon;
.super Ljava/lang/Object;
.source "Wincon.java"


# static fields
.field public static final ATTACH_PARENT_PROCESS:I = -0x1

.field public static final CONSOLE_FULLSCREEN:I = 0x1

.field public static final CONSOLE_FULLSCREEN_HARDWARE:I = 0x2

.field public static final CTRL_BREAK_EVENT:I = 0x1

.field public static final CTRL_C_EVENT:I = 0x0

.field public static final ENABLE_ECHO_INPUT:I = 0x4

.field public static final ENABLE_EXTENDED_FLAGS:I = 0x80

.field public static final ENABLE_INSERT_MODE:I = 0x20

.field public static final ENABLE_LINE_INPUT:I = 0x2

.field public static final ENABLE_MOUSE_INPUT:I = 0x10

.field public static final ENABLE_PROCESSED_INPUT:I = 0x1

.field public static final ENABLE_PROCESSED_OUTPUT:I = 0x1

.field public static final ENABLE_QUICK_EDIT_MODE:I = 0x40

.field public static final ENABLE_WINDOW_INPUT:I = 0x8

.field public static final ENABLE_WRAP_AT_EOL_OUTPUT:I = 0x2

.field public static final MAX_CONSOLE_TITLE_LENGTH:I = 0x10000

.field public static final STD_ERROR_HANDLE:I = -0xc

.field public static final STD_INPUT_HANDLE:I = -0xa

.field public static final STD_OUTPUT_HANDLE:I = -0xb


# virtual methods
.method public abstract AllocConsole()Z
.end method

.method public abstract AttachConsole(I)Z
.end method

.method public abstract FlushConsoleInputBuffer(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract FreeConsole()Z
.end method

.method public abstract GenerateConsoleCtrlEvent(II)Z
.end method

.method public abstract GetConsoleCP()I
.end method

.method public abstract GetConsoleDisplayMode(Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetConsoleMode(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetConsoleOriginalTitle([CI)I
.end method

.method public abstract GetConsoleOutputCP()I
.end method

.method public abstract GetConsoleTitle([CI)I
.end method

.method public abstract GetConsoleWindow()Lcom/sun/jna/platform/win32/WinDef$HWND;
.end method

.method public abstract GetNumberOfConsoleInputEvents(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetNumberOfConsoleMouseButtons(Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetStdHandle(I)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract SetConsoleCP(I)Z
.end method

.method public abstract SetConsoleMode(Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)Z
.end method

.method public abstract SetConsoleOutputCP(I)Z
.end method

.method public abstract SetConsoleTitle(Ljava/lang/String;)Z
.end method

.method public abstract SetStdHandle(ILcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method
