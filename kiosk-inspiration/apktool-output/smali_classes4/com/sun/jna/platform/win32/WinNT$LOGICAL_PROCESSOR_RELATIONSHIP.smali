.class public interface abstract Lcom/sun/jna/platform/win32/WinNT$LOGICAL_PROCESSOR_RELATIONSHIP;
.super Ljava/lang/Object;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LOGICAL_PROCESSOR_RELATIONSHIP"
.end annotation


# static fields
.field public static final RelationAll:I = 0xffff

.field public static final RelationCache:I = 0x2

.field public static final RelationGroup:I = 0x4

.field public static final RelationNumaNode:I = 0x1

.field public static final RelationProcessorCore:I = 0x0

.field public static final RelationProcessorPackage:I = 0x3
