.class public interface abstract Lcom/sun/jna/platform/win32/COM/Wbemcli$WBEM_CONDITION_FLAG_TYPE;
.super Ljava/lang/Object;
.source "Wbemcli.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/Wbemcli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WBEM_CONDITION_FLAG_TYPE"
.end annotation


# static fields
.field public static final WBEM_FLAG_ALWAYS:I = 0x0

.field public static final WBEM_FLAG_CLASS_LOCAL_AND_OVERRIDES:I = 0x200

.field public static final WBEM_FLAG_CLASS_OVERRIDES_ONLY:I = 0x100

.field public static final WBEM_FLAG_KEYS_ONLY:I = 0x4

.field public static final WBEM_FLAG_LOCAL_ONLY:I = 0x10

.field public static final WBEM_FLAG_NONSYSTEM_ONLY:I = 0x40

.field public static final WBEM_FLAG_ONLY_IF_FALSE:I = 0x2

.field public static final WBEM_FLAG_ONLY_IF_IDENTICAL:I = 0x3

.field public static final WBEM_FLAG_ONLY_IF_TRUE:I = 0x1

.field public static final WBEM_FLAG_PROPAGATED_ONLY:I = 0x20

.field public static final WBEM_FLAG_REFS_ONLY:I = 0x8

.field public static final WBEM_FLAG_SYSTEM_ONLY:I = 0x30

.field public static final WBEM_MASK_CLASS_CONDITION:I = 0x300

.field public static final WBEM_MASK_CONDITION_ORIGIN:I = 0x70

.field public static final WBEM_MASK_PRIMARY_CONDITION:I = 0x3
