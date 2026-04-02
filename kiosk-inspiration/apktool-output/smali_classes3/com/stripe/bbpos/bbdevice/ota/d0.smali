.class Lcom/stripe/bbpos/bbdevice/ota/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/e;->a(Ljava/lang/String;I)[B

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p2

    .line 3
    invoke-static {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/q;->b([B[B)[B

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
