.class public interface abstract Lcom/sun/jna/platform/win32/Ntifs;
.super Ljava/lang/Object;
.source "Ntifs.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinDef;
.implements Lcom/sun/jna/platform/win32/BaseTSD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;,
        Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer;,
        Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;,
        Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;
    }
.end annotation


# static fields
.field public static final MAXIMUM_REPARSE_DATA_BUFFER_SIZE:I = 0x4000

.field public static final REPARSE_BUFFER_HEADER_SIZE:I = 0x8

.field public static final SYMLINK_FLAG_RELATIVE:I = 0x1
