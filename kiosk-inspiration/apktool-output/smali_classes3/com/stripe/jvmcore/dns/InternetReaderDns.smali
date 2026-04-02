.class public final Lcom/stripe/jvmcore/dns/InternetReaderDns;
.super Ljava/lang/Object;
.source "InternetReaderDns.kt"

# interfaces
.implements Lokhttp3/Dns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/dns/InternetReaderDns$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInternetReaderDns.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InternetReaderDns.kt\ncom/stripe/jvmcore/dns/InternetReaderDns\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n11383#2,9:103\n13309#2:112\n13310#2:114\n11392#2:115\n1#3:113\n1#3:119\n766#4:116\n857#4,2:117\n*S KotlinDebug\n*F\n+ 1 InternetReaderDns.kt\ncom/stripe/jvmcore/dns/InternetReaderDns\n*L\n71#1:103,9\n71#1:112\n71#1:114\n71#1:115\n71#1:113\n72#1:116\n72#1:117,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0012\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/jvmcore/dns/InternetReaderDns;",
        "Lokhttp3/Dns;",
        "inetAddressValidator",
        "Lcom/stripe/jvmcore/dns/InetAddressValidator;",
        "fallbackDns",
        "lookupDomains",
        "",
        "",
        "(Lcom/stripe/jvmcore/dns/InetAddressValidator;Lokhttp3/Dns;[Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "lookup",
        "",
        "Ljava/net/InetAddress;",
        "hostname",
        "lookupForDomain",
        "lookupDomain",
        "Companion",
        "dns"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Companion:Lcom/stripe/jvmcore/dns/InternetReaderDns$Companion;

.field private static final HASH_VALUE_PATTERN:Ljava/lang/String; = "[a-z0-9]+"

.field private static final IP16B_BLOCK_PATTERN:Ljava/lang/String; = "192\\-168\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])"

.field private static final IP20B_BLOCK_PATTERN:Ljava/lang/String; = "172\\-(1[6-9]|2[0-9]|3[0-1])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])"

.field private static final IP22B_BLOCK_PATTERN:Ljava/lang/String; = "100\\-(6[4-9]|7[0-9]|8[0-9]|9[0-9]|10[0-9]|11[0-9]|12[0-7])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])"

.field private static final IP24B_BLOCK_PATTERN:Ljava/lang/String; = "10\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])"

.field private static final IP32B_BLOCK_PATTERN:Ljava/lang/String; = "127\\-0\\-0\\-1"

.field private static final IP_BYTE_0B01XXXXXX:Ljava/lang/String; = "(6[4-9]|7[0-9]|8[0-9]|9[0-9]|10[0-9]|11[0-9]|12[0-7])"

.field private static final IP_OCTET_PATTERN:Ljava/lang/String; = "(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])"

.field private static final IP_PARTS_PATTERN:Ljava/lang/String; = "(10\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|172\\-(1[6-9]|2[0-9]|3[0-1])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|192\\-168\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|127\\-0\\-0\\-1|100\\-(6[4-9]|7[0-9]|8[0-9]|9[0-9]|10[0-9]|11[0-9]|12[0-7])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9]))"

.field private static final ipPartsMatcher:Lkotlin/text/Regex;


# instance fields
.field private final fallbackDns:Lokhttp3/Dns;

.field private final inetAddressValidator:Lcom/stripe/jvmcore/dns/InetAddressValidator;

.field private final lookupDomains:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/dns/InternetReaderDns$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/dns/InternetReaderDns$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/dns/InternetReaderDns;->Companion:Lcom/stripe/jvmcore/dns/InternetReaderDns$Companion;

    .line 66
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(10\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|172\\-(1[6-9]|2[0-9]|3[0-1])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|192\\-168\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|127\\-0\\-0\\-1|100\\-(6[4-9]|7[0-9]|8[0-9]|9[0-9]|10[0-9]|11[0-9]|12[0-7])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9]))"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/jvmcore/dns/InternetReaderDns;->ipPartsMatcher:Lkotlin/text/Regex;

    return-void
.end method

.method public varargs constructor <init>(Lcom/stripe/jvmcore/dns/InetAddressValidator;Lokhttp3/Dns;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "inetAddressValidator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackDns"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupDomains"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/stripe/jvmcore/dns/InternetReaderDns;->inetAddressValidator:Lcom/stripe/jvmcore/dns/InetAddressValidator;

    .line 30
    iput-object p2, p0, Lcom/stripe/jvmcore/dns/InternetReaderDns;->fallbackDns:Lokhttp3/Dns;

    .line 31
    iput-object p3, p0, Lcom/stripe/jvmcore/dns/InternetReaderDns;->lookupDomains:[Ljava/lang/String;

    return-void
.end method

.method private final lookupForDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7

    .line 83
    new-instance v0, Lkotlin/text/Regex;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^(?i)(10\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|172\\-(1[6-9]|2[0-9]|3[0-1])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|192\\-168\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|127\\-0\\-0\\-1|100\\-(6[4-9]|7[0-9]|8[0-9]|9[0-9]|10[0-9]|11[0-9]|12[0-7])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9]))\\.([a-z0-9]+\\.)?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 85
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 87
    :try_start_0
    sget-object p1, Lcom/stripe/jvmcore/dns/InternetReaderDns;->ipPartsMatcher:Lkotlin/text/Regex;

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v1, v2, v0}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 89
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    const-string v2, "-"

    const-string v3, "."

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/stripe/jvmcore/dns/InternetReaderDns;->lookupDomains:[Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 112
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 71
    invoke-direct {p0, v4, p1}, Lcom/stripe/jvmcore/dns/InternetReaderDns;->lookupForDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 111
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 103
    check-cast v1, Ljava/lang/Iterable;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 117
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/net/InetAddress;

    .line 72
    iget-object v4, p0, Lcom/stripe/jvmcore/dns/InternetReaderDns;->inetAddressValidator:Lcom/stripe/jvmcore/dns/InetAddressValidator;

    invoke-interface {v4, v3}, Lcom/stripe/jvmcore/dns/InetAddressValidator;->isValid(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 116
    check-cast v0, Ljava/util/Collection;

    .line 73
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/stripe/jvmcore/dns/InternetReaderDns;->fallbackDns:Lokhttp3/Dns;

    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_4
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
