.class public final Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
.super Ljava/lang/Object;
.source "CardPresentDetails.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/CardPresentDetails$$serializer;,
        Lcom/stripe/stripeterminal/external/models/CardPresentDetails$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u00080\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 w2\u00060\u0001j\u0002`\u0002:\u0002vwB\u0081\u0002\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001d\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010#\u00a2\u0006\u0002\u0010$B\u008f\u0002\u0008\u0000\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u000e\u0008\u0002\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001d\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010%J\u000b\u0010P\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u0012\u0010T\u001a\u0004\u0018\u00010\u0015H\u00c0\u0003\u00a2\u0006\u0004\u0008U\u0010?J\u000b\u0010V\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u001bH\u00c6\u0003J\u000f\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001dH\u00c6\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u001fH\u00c6\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010a\u001a\u00020\u0004H\u00c6\u0003J\t\u0010b\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0096\u0002\u0010g\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u000e\u0008\u0002\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010hJ\u0013\u0010i\u001a\u00020\u00152\u0008\u0010j\u001a\u0004\u0018\u00010kH\u00d6\u0003J\t\u0010l\u001a\u00020\u0004H\u00d6\u0001J\t\u0010m\u001a\u00020\u0006H\u00d6\u0001J&\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020\u00002\u0006\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020tH\u00c1\u0001\u00a2\u0006\u0002\u0008uR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010\'R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\'R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\'R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008/\u0010)\u001a\u0004\u00080\u0010\'R\u001c\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00081\u0010)\u001a\u0004\u00082\u00103R\u001c\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00084\u0010)\u001a\u0004\u00085\u00103R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\'R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010\'R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\'R\u001c\u00109\u001a\u00020:8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008;\u0010)\u001a\u0004\u0008<\u0010=R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010@\u001a\u0004\u0008>\u0010?R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010\'R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010\'R\u0013\u0010 \u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010\'R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010\'R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010FR\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010HR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010\'R\u0013\u0010!\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010\'R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008K\u0010)\u001a\u0004\u0008L\u0010MR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010O\u00a8\u0006x"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "brand",
        "",
        "country",
        "emvAuthData",
        "expMonth",
        "expYear",
        "funding",
        "generatedCard",
        "last4",
        "readMethod",
        "cardholderName",
        "receiptDetails",
        "Lcom/stripe/stripeterminal/external/models/ReceiptDetails;",
        "networks",
        "Lcom/stripe/stripeterminal/external/models/CardNetworks;",
        "incrementalAuthorizationSupported",
        "",
        "network",
        "iin",
        "issuer",
        "description",
        "wallet",
        "Lcom/stripe/stripeterminal/external/models/Wallet;",
        "preferredLocales",
        "",
        "dynamicCurrencyConversion",
        "Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;",
        "location",
        "reader",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;)V",
        "getBrand",
        "()Ljava/lang/String;",
        "getCardholderName$annotations",
        "()V",
        "getCardholderName",
        "getCountry",
        "getDescription",
        "getDynamicCurrencyConversion",
        "()Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;",
        "getEmvAuthData$annotations",
        "getEmvAuthData",
        "getExpMonth$annotations",
        "getExpMonth",
        "()I",
        "getExpYear$annotations",
        "getExpYear",
        "getFunding",
        "getGeneratedCard",
        "getIin",
        "incrementalAuthorizationStatus",
        "Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;",
        "getIncrementalAuthorizationStatus$annotations",
        "getIncrementalAuthorizationStatus",
        "()Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;",
        "getIncrementalAuthorizationSupported$public_release",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getIssuer",
        "getLast4",
        "getLocation",
        "getNetwork",
        "getNetworks",
        "()Lcom/stripe/stripeterminal/external/models/CardNetworks;",
        "getPreferredLocales",
        "()Ljava/util/List;",
        "getReadMethod",
        "getReader",
        "getReceiptDetails$annotations",
        "getReceiptDetails",
        "()Lcom/stripe/stripeterminal/external/models/ReceiptDetails;",
        "getWallet",
        "()Lcom/stripe/stripeterminal/external/models/Wallet;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component13$public_release",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/CardPresentDetails;",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$public_release",
        "$serializer",
        "Companion",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/CardPresentDetails$Companion;


# instance fields
.field private final brand:Ljava/lang/String;

.field private final cardholderName:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

.field private final emvAuthData:Ljava/lang/String;

.field private final expMonth:I

.field private final expYear:I

.field private final funding:Ljava/lang/String;

.field private final generatedCard:Ljava/lang/String;

.field private final iin:Ljava/lang/String;

.field private final incrementalAuthorizationStatus:Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;

.field private final incrementalAuthorizationSupported:Ljava/lang/Boolean;

.field private final issuer:Ljava/lang/String;

.field private final last4:Ljava/lang/String;

.field private final location:Ljava/lang/String;

.field private final network:Ljava/lang/String;

.field private final networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

.field private final preferredLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final readMethod:Ljava/lang/String;

.field private final reader:Ljava/lang/String;

.field private final receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

.field private final wallet:Lcom/stripe/stripeterminal/external/models/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/CardPresentDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->Companion:Lcom/stripe/stripeterminal/external/models/CardPresentDetails$Companion;

    const/16 v0, 0x16

    .line 17
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x12

    aput-object v2, v0, v3

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    const v23, 0x3fffff

    const/16 v24, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v24}, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2
    .param p12    # Lcom/stripe/stripeterminal/external/models/ReceiptDetails;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "receipt"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_3

    iput p3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    goto :goto_3

    :cond_3
    iput p5, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput p3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    goto :goto_4

    :cond_4
    iput p6, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    goto :goto_7

    :cond_7
    iput-object p9, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    :goto_7
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    goto :goto_8

    :cond_8
    iput-object p10, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    :goto_8
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    goto :goto_9

    :cond_9
    iput-object p11, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    :goto_9
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_a

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    goto :goto_a

    :cond_a
    iput-object p12, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    :goto_a
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_b

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    goto :goto_b

    :cond_b
    iput-object p13, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    :goto_b
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_c

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    :goto_c
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_d

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 p2, p15

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    :goto_d
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_e

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    :goto_e
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    :goto_f
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_10

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    :goto_10
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_11

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    goto :goto_11

    :cond_11
    move-object/from16 p2, p19

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    :goto_11
    const/high16 p2, 0x40000

    and-int/2addr p2, p1

    if-nez p2, :cond_12

    .line 124
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_12

    :cond_12
    move-object/from16 p2, p20

    .line 17
    :goto_12
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->preferredLocales:Ljava/util/List;

    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    if-nez p2, :cond_13

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    goto :goto_13

    :cond_13
    move-object/from16 p2, p21

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    :goto_13
    const/high16 p2, 0x100000

    and-int/2addr p2, p1

    if-nez p2, :cond_14

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 p2, p22

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    :goto_14
    const/high16 p2, 0x200000

    and-int/2addr p1, p2

    if-nez p1, :cond_15

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    .line 148
    :goto_15
    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    if-nez p1, :cond_16

    .line 149
    sget-object p1, Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;

    goto :goto_16

    .line 150
    :cond_16
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    sget-object p1, Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;->NOT_SUPPORTED:Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;

    goto :goto_16

    :cond_17
    const/4 p2, 0x1

    .line 151
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    sget-object p1, Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;->SUPPORTED:Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;

    .line 17
    :goto_16
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationStatus:Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;

    return-void

    .line 151
    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/ReceiptDetails;",
            "Lcom/stripe/stripeterminal/external/models/CardNetworks;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/Wallet;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p13

    move-object/from16 v1, p19

    const-string v2, "preferredLocales"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    .line 45
    iput p5, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    .line 51
    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    .line 63
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    .line 68
    iput-object p9, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    .line 75
    iput-object p10, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    .line 81
    iput-object p11, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    .line 87
    iput-object p12, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    .line 89
    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    move-object/from16 p1, p14

    .line 95
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 101
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 107
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 113
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 118
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    .line 124
    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->preferredLocales:Ljava/util/List;

    move-object/from16 p1, p20

    .line 129
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    move-object/from16 p1, p21

    .line 134
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 139
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 149
    sget-object p1, Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 150
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;->NOT_SUPPORTED:Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 151
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;->SUPPORTED:Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;

    .line 148
    :goto_0
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationStatus:Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;

    return-void

    .line 151
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    .line 124
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v19

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v0, v0, v22

    if-eqz v0, :cond_15

    const/16 p23, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 p23, p22

    :goto_15
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    .line 18
    invoke-direct/range {p1 .. p23}, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 17
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p23

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p23, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p23, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p23, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->preferredLocales:Ljava/util/List;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p23, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p23, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p23, v16

    if-eqz v16, :cond_15

    move-object/from16 p7, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    move-object/from16 p22, p7

    move-object/from16 p23, v1

    goto :goto_15

    :cond_15
    move-object/from16 p23, p22

    move-object/from16 p22, v1

    :goto_15
    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p23}, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getCardholderName$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEmvAuthData$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getExpMonth$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getExpYear$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getIncrementalAuthorizationStatus$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getReceiptDetails$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "receipt"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 17
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_1
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_2
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    if-eqz v2, :cond_7

    :goto_3
    iget v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_7
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    if-eqz v2, :cond_9

    :goto_4
    iget v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_9
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_5
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_6
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_7
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    if-eqz v2, :cond_11

    :goto_8
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_9
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_a

    :cond_14
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    if-eqz v2, :cond_15

    :goto_a
    sget-object v2, Lcom/stripe/stripeterminal/external/models/ReceiptDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/ReceiptDetails$$serializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_b

    :cond_16
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    if-eqz v2, :cond_17

    :goto_b
    sget-object v2, Lcom/stripe/stripeterminal/external/models/CardNetworks$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CardNetworks$$serializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_c

    :cond_18
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    if-eqz v2, :cond_19

    :goto_c
    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_19
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_d

    :cond_1a
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    if-eqz v2, :cond_1b

    :goto_d
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1b
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_e

    :cond_1c
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    if-eqz v2, :cond_1d

    :goto_e
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    const/16 v1, 0xf

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_f

    :cond_1e
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    if-eqz v2, :cond_1f

    :goto_f
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1f
    const/16 v1, 0x10

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_10

    :cond_20
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    if-eqz v2, :cond_21

    :goto_10
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_21
    const/16 v1, 0x11

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_11

    :cond_22
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    if-eqz v2, :cond_23

    :goto_11
    sget-object v2, Lcom/stripe/stripeterminal/external/models/Wallet$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/Wallet$$serializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_23
    const/16 v1, 0x12

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_12

    :cond_24
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->preferredLocales:Ljava/util/List;

    .line 124
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 17
    :goto_12
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->preferredLocales:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_25
    const/16 v0, 0x13

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_13

    :cond_26
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    if-eqz v1, :cond_27

    :goto_13
    sget-object v1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_27
    const/16 v0, 0x14

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_14

    :cond_28
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    if-eqz v1, :cond_29

    :goto_14
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_29
    const/16 v0, 0x15

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_15

    :cond_2a
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    if-eqz v1, :cond_2b

    :goto_15
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2b
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Lcom/stripe/stripeterminal/external/models/ReceiptDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    return-object v0
.end method

.method public final component12()Lcom/stripe/stripeterminal/external/models/CardNetworks;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    return-object v0
.end method

.method public final component13$public_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Lcom/stripe/stripeterminal/external/models/Wallet;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    return-object v0
.end method

.method public final component19()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->preferredLocales:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/ReceiptDetails;",
            "Lcom/stripe/stripeterminal/external/models/CardNetworks;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/Wallet;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;"
        }
    .end annotation

    const-string v0, "preferredLocales"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    invoke-direct/range {v1 .. v23}, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    iget v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    iget v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->preferredLocales:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->preferredLocales:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getBrand()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardholderName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDynamicCurrencyConversion()Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    return-object v0
.end method

.method public final getEmvAuthData()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpMonth()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    return v0
.end method

.method public final getExpYear()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    return v0
.end method

.method public final getFunding()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    return-object v0
.end method

.method public final getGeneratedCard()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    return-object v0
.end method

.method public final getIin()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    return-object v0
.end method

.method public final getIncrementalAuthorizationStatus()Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationStatus:Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;

    return-object v0
.end method

.method public final getIncrementalAuthorizationSupported$public_release()Ljava/lang/Boolean;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIssuer()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public final getLast4()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetwork()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworks()Lcom/stripe/stripeterminal/external/models/CardNetworks;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    return-object v0
.end method

.method public final getPreferredLocales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->preferredLocales:Ljava/util/List;

    return-object v0
.end method

.method public final getReadMethod()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getReader()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiptDetails()Lcom/stripe/stripeterminal/external/models/ReceiptDetails;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    return-object v0
.end method

.method public final getWallet()Lcom/stripe/stripeterminal/external/models/Wallet;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/ReceiptDetails;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardNetworks;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Wallet;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->preferredLocales:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardPresentDetails(brand="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", country="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emvAuthData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->emvAuthData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expMonth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expYear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->expYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", funding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->funding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", generatedCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->generatedCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", last4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->last4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", readMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->readMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cardholderName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->cardholderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", receiptDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->receiptDetails:Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", networks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->networks:Lcom/stripe/stripeterminal/external/models/CardNetworks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", incrementalAuthorizationSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->incrementalAuthorizationSupported:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->network:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->iin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", issuer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->issuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wallet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->wallet:Lcom/stripe/stripeterminal/external/models/Wallet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preferredLocales="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->preferredLocales:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dynamicCurrencyConversion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->reader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
