.class public interface abstract Lcom/sun/jna/platform/unix/solaris/LibKstat;
.super Ljava/lang/Object;
.source "LibKstat.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatCtl;,
        Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatIO;,
        Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatTimer;,
        Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatIntr;,
        Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;,
        Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;
    }
.end annotation


# static fields
.field public static final EAGAIN:I = 0xb

.field public static final INSTANCE:Lcom/sun/jna/platform/unix/solaris/LibKstat;

.field public static final KSTAT_DATA_CHAR:B = 0x0t

.field public static final KSTAT_DATA_INT32:B = 0x1t

.field public static final KSTAT_DATA_INT64:B = 0x3t

.field public static final KSTAT_DATA_STRING:B = 0x9t

.field public static final KSTAT_DATA_UINT32:B = 0x2t

.field public static final KSTAT_DATA_UINT64:B = 0x4t

.field public static final KSTAT_INTR_HARD:I = 0x0

.field public static final KSTAT_INTR_MULTSVC:I = 0x4

.field public static final KSTAT_INTR_SOFT:I = 0x1

.field public static final KSTAT_INTR_SPURIOUS:I = 0x3

.field public static final KSTAT_INTR_WATCHDOG:I = 0x2

.field public static final KSTAT_NUM_INTRS:I = 0x5

.field public static final KSTAT_STRLEN:I = 0x1f

.field public static final KSTAT_TYPE_INTR:B = 0x2t

.field public static final KSTAT_TYPE_IO:B = 0x3t

.field public static final KSTAT_TYPE_NAMED:B = 0x1t

.field public static final KSTAT_TYPE_RAW:B = 0x0t

.field public static final KSTAT_TYPE_TIMER:B = 0x4t


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-string v0, "kstat"

    const-class v1, Lcom/sun/jna/platform/unix/solaris/LibKstat;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/unix/solaris/LibKstat;

    sput-object v0, Lcom/sun/jna/platform/unix/solaris/LibKstat;->INSTANCE:Lcom/sun/jna/platform/unix/solaris/LibKstat;

    return-void
.end method


# virtual methods
.method public abstract kstat_chain_update(Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatCtl;)I
.end method

.method public abstract kstat_close(Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatCtl;)I
.end method

.method public abstract kstat_data_lookup(Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;Ljava/lang/String;)Lcom/sun/jna/Pointer;
.end method

.method public abstract kstat_lookup(Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatCtl;Ljava/lang/String;ILjava/lang/String;)Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;
.end method

.method public abstract kstat_open()Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatCtl;
.end method

.method public abstract kstat_read(Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatCtl;Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;Lcom/sun/jna/Pointer;)I
.end method

.method public abstract kstat_write(Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatCtl;Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;Lcom/sun/jna/Pointer;)I
.end method
