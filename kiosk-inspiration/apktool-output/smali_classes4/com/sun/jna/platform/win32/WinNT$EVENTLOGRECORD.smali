.class public Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Length",
        "Reserved",
        "RecordNumber",
        "TimeGenerated",
        "TimeWritten",
        "EventID",
        "EventType",
        "NumStrings",
        "EventCategory",
        "ReservedFlags",
        "ClosingRecordNumber",
        "StringOffset",
        "UserSidLength",
        "UserSidOffset",
        "DataLength",
        "DataOffset"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EVENTLOGRECORD"
.end annotation


# instance fields
.field public ClosingRecordNumber:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public DataLength:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public DataOffset:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public EventCategory:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public EventID:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public EventType:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public Length:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public NumStrings:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public RecordNumber:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public Reserved:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public ReservedFlags:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public StringOffset:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public TimeGenerated:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public TimeWritten:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public UserSidLength:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public UserSidOffset:Lcom/sun/jna/platform/win32/WinDef$DWORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2208
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 2212
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 2213
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->read()V

    return-void
.end method
