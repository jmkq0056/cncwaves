.class public interface abstract Lcom/example/digitalkiosk/msprintsdk/JNAData1;
.super Ljava/lang/Object;
.source "JNAData1.java"

# interfaces
.implements Lcom/sun/jna/Library;


# static fields
.field public static final INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    const-string v0, "msprintdata1"

    const-class v1, Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    sput-object v0, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    return-void
.end method


# virtual methods
.method public abstract Data1GetPrintDataA()Ljava/lang/String;
.end method

.method public abstract Data1PrintDataMatrix(Ljava/lang/String;I)I
.end method

.method public abstract Data1PrintDiskbmpfile(Ljava/lang/String;)I
.end method

.method public abstract Data1PrintQrcode(Ljava/lang/String;III)I
.end method

.method public abstract Data1Release()I
.end method

.method public abstract Data1SetNvbmp(ILjava/lang/String;)I
.end method
