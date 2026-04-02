.class public final Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;
.super Ljava/lang/Object;
.source "PaymentCollectionCoordinator.kt"

# interfaces
.implements Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;
.implements Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;
.implements Lcom/stripe/paymentcollection/OnlineAuthStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;,
        Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$EntriesMappings;,
        Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;,
        Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentCollectionCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentCollectionCoordinator.kt\ncom/stripe/paymentcollection/PaymentCollectionCoordinator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1416:1\n1#2:1417\n288#3,2:1418\n*S KotlinDebug\n*F\n+ 1 PaymentCollectionCoordinator.kt\ncom/stripe/paymentcollection/PaymentCollectionCoordinator\n*L\n533#1:1418,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e2\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u00ea\u0001\u00eb\u0001B]\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0002\u0010\u001aJ\u0008\u0010/\u001a\u000200H\u0002J\u0006\u00101\u001a\u000202J\u0008\u00103\u001a\u000202H\u0002J\u0006\u00104\u001a\u000200J\u00b4\u0001\u00105\u001a\u0008\u0012\u0004\u0012\u000207062\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010?2\n\u0008\u0002\u0010@\u001a\u0004\u0018\u0001092\u0008\u0008\u0002\u0010A\u001a\u00020B2\u0008\u0008\u0002\u0010C\u001a\u00020B2\u0008\u0008\u0002\u0010D\u001a\u00020B2\n\u0008\u0002\u0010E\u001a\u0004\u0018\u0001092\u0008\u0008\u0002\u0010F\u001a\u00020B2\n\u0008\u0002\u0010G\u001a\u0004\u0018\u00010H2\u0006\u0010I\u001a\u00020B2\u0008\u0010J\u001a\u0004\u0018\u00010K2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020N0M2\u0006\u0010O\u001a\u00020B2\u0006\u0010P\u001a\u00020BH\u0086@\u00a2\u0006\u0002\u0010QJ\u0016\u0010R\u001a\u0002022\u0006\u0010S\u001a\u00020T2\u0006\u0010<\u001a\u00020=J\u0008\u0010U\u001a\u000200H\u0007J\u0008\u0010V\u001a\u00020KH\u0002J\u0008\u0010W\u001a\u00020XH\u0007J\u0012\u0010Y\u001a\u0004\u0018\u00010Z2\u0006\u00108\u001a\u000209H\u0002J\u0018\u0010[\u001a\u00020\\2\u0006\u00108\u001a\u0002092\u0006\u0010]\u001a\u00020^H\u0002J8\u0010_\u001a\u00020^2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\u0008\u0008\u0002\u0010A\u001a\u00020B2\u0008\u0008\u0002\u0010C\u001a\u00020B2\n\u0008\u0002\u0010E\u001a\u0004\u0018\u000109H\u0002J\u0010\u0010`\u001a\u0002022\u0006\u0010a\u001a\u00020bH\u0002J\u0010\u0010c\u001a\u0002002\u0006\u0010d\u001a\u00020eH\u0002J\u0010\u0010f\u001a\u0002022\u0006\u0010g\u001a\u00020hH\u0002J\u0010\u0010i\u001a\u0002022\u0006\u0010j\u001a\u00020kH\u0002J\u0010\u0010l\u001a\u0002002\u0006\u0010d\u001a\u00020mH\u0002J\u0014\u0010n\u001a\u0008\u0012\u0004\u0012\u00020o062\u0006\u0010p\u001a\u00020qJ\u0014\u0010r\u001a\u0008\u0012\u0004\u0012\u00020o062\u0006\u0010p\u001a\u00020KJ\u0010\u0010s\u001a\u0002022\u0006\u0010t\u001a\u00020uH\u0002J\u000e\u0010v\u001a\u0002002\u0006\u0010w\u001a\u00020=J\u0016\u0010x\u001a\u0002002\u0006\u0010y\u001a\u00020zH\u0082@\u00a2\u0006\u0002\u0010{J\u0010\u0010|\u001a\u0002002\u0006\u0010}\u001a\u00020~H\u0016J\u0008\u0010\u007f\u001a\u000200H\u0016J\u0013\u0010\u0080\u0001\u001a\u0002002\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u0016J\t\u0010\u0083\u0001\u001a\u000200H\u0016J\u0007\u0010\u0084\u0001\u001a\u000202J\u0013\u0010\u0085\u0001\u001a\u0002002\u0008\u0010\u0086\u0001\u001a\u00030\u0087\u0001H\u0016J\t\u0010\u0088\u0001\u001a\u000200H\u0016J\u0013\u0010\u0089\u0001\u001a\u0002002\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J\t\u0010\u008c\u0001\u001a\u000200H\u0016J\u0012\u0010\u008d\u0001\u001a\u0002002\u0007\u0010d\u001a\u00030\u008e\u0001H\u0016J\t\u0010\u008f\u0001\u001a\u000200H\u0016J\u0013\u0010\u0090\u0001\u001a\u0002002\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0016J\u0013\u0010\u0093\u0001\u001a\u0002002\u0008\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0016J\u0013\u0010\u0096\u0001\u001a\u0002002\u0008\u0010\u0097\u0001\u001a\u00030\u0098\u0001H\u0016J)\u0010\u0099\u0001\u001a\u0002002\u0008\u0010\u009a\u0001\u001a\u00030\u009b\u00012\t\u0010\u009c\u0001\u001a\u0004\u0018\u00010K2\t\u0010\u009d\u0001\u001a\u0004\u0018\u00010KH\u0016J\u001a\u0010\u009e\u0001\u001a\u0002002\u000f\u0010\u009f\u0001\u001a\n\u0012\u0005\u0012\u00030\u00a1\u00010\u00a0\u0001H\u0016J\t\u0010\u00a2\u0001\u001a\u000200H\u0016J\t\u0010\u00a3\u0001\u001a\u000200H\u0016J\u0012\u0010\u00a4\u0001\u001a\u0002002\u0007\u0010\u00a5\u0001\u001a\u00020KH\u0016J\u0013\u0010\u00a6\u0001\u001a\u0002002\u0008\u0010\u00a7\u0001\u001a\u00030\u00a8\u0001H\u0016J\t\u0010\u00a9\u0001\u001a\u000200H\u0016J\u0018\u0010\u00aa\u0001\u001a\u0002002\r\u0010\u00ab\u0001\u001a\u0008\u0012\u0004\u0012\u00020K0MH\u0016J\t\u0010\u00ac\u0001\u001a\u000200H\u0016J\u0012\u0010\u00ad\u0001\u001a\u0002002\u0007\u0010\u00ae\u0001\u001a\u00020KH\u0016J\u0011\u0010\u00af\u0001\u001a\u0002002\u0006\u0010y\u001a\u00020zH\u0016J\u0012\u0010\u00b0\u0001\u001a\u0002002\u0007\u0010\u00b1\u0001\u001a\u00020BH\u0016J\t\u0010\u00b2\u0001\u001a\u000200H\u0016J\u0013\u0010\u00b3\u0001\u001a\u0002002\u0008\u0010\u00b4\u0001\u001a\u00030\u00b5\u0001H\u0016JK\u0010\u00b6\u0001\u001a\t\u0012\u0004\u0012\u0002070\u00b7\u00012\u0006\u00108\u001a\u0002092\u0008\u0010@\u001a\u0004\u0018\u0001092\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?2\u0006\u0010I\u001a\u00020B2\u0008\u0010J\u001a\u0004\u0018\u00010KH\u0082@\u00a2\u0006\u0003\u0010\u00b8\u0001J\"\u0010\u00b9\u0001\u001a\n\u0012\u0004\u0012\u00020B\u0018\u0001062\u0008\u0010\u00ba\u0001\u001a\u00030\u00bb\u0001H\u0086@\u00a2\u0006\u0003\u0010\u00bc\u0001J\t\u0010\u00bd\u0001\u001a\u000200H\u0002J\t\u0010\u00be\u0001\u001a\u000200H\u0002J\t\u0010\u00bf\u0001\u001a\u000200H\u0002J&\u0010\u00c0\u0001\u001a\u0002002\u0008\u0010\u00c1\u0001\u001a\u00030\u00c2\u00012\u0007\u0010\u00c3\u0001\u001a\u00020K2\u0008\u0010\u00c4\u0001\u001a\u00030\u00c5\u0001H\u0002J\t\u0010\u00c6\u0001\u001a\u000200H\u0002J\u001d\u0010\u00c7\u0001\u001a\u0002002\u0008\u0010\u00c8\u0001\u001a\u00030\u00c9\u00012\u0008\u0010\u00c4\u0001\u001a\u00030\u00c5\u0001H\u0002J\'\u0010\u00ca\u0001\u001a\u0002002\u0008\u0010\u00cb\u0001\u001a\u00030\u00cc\u00012\u0008\u0010\u00cd\u0001\u001a\u00030\u00ce\u00012\u0008\u0010\u00c4\u0001\u001a\u00030\u00c5\u0001H\u0002J\u0012\u0010\u00cf\u0001\u001a\u0002002\u0007\u0010\u00d0\u0001\u001a\u00020BH\u0002J\u001c\u0010\u00d1\u0001\u001a\u0002002\u0007\u0010\u00d2\u0001\u001a\u00020N2\u0008\u0010\u00c4\u0001\u001a\u00030\u00c5\u0001H\u0002J\u0013\u0010\u00d3\u0001\u001a\u0002002\u0008\u0010\u00cb\u0001\u001a\u00030\u00cc\u0001H\u0002J\u0012\u0010\u00d4\u0001\u001a\u0002002\u0007\u0010p\u001a\u00030\u00d5\u0001H\u0002J\t\u0010\u00d6\u0001\u001a\u000200H\u0002J\u0013\u0010\u00d7\u0001\u001a\u0002002\u0008\u0010\u00d8\u0001\u001a\u00030\u00d9\u0001H\u0007J\u0012\u0010\u00da\u0001\u001a\u0002002\u0007\u0010\u00db\u0001\u001a\u00020BH\u0007J\u0012\u0010\u00dc\u0001\u001a\u0002002\u0007\u0010\u00db\u0001\u001a\u00020NH\u0007J#\u0010\u00dd\u0001\u001a\u000b\u0012\u0004\u0012\u00020B\u0018\u00010\u00b7\u00012\u0008\u0010\u00ba\u0001\u001a\u00030\u00bb\u0001H\u0082@\u00a2\u0006\u0003\u0010\u00bc\u0001J\u0011\u0010\u00de\u0001\u001a\u0002022\u0006\u0010p\u001a\u00020qH\u0002J\u0011\u0010\u00df\u0001\u001a\u0002022\u0006\u0010p\u001a\u00020KH\u0002J\u00ca\u0001\u0010\u00e0\u0001\u001a\t\u0012\u0004\u0012\u0002070\u00b7\u00012\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2\u0008\u0010@\u001a\u0004\u0018\u0001092\u0008\u0008\u0002\u0010A\u001a\u00020B2\u0008\u0008\u0002\u0010C\u001a\u00020B2\u0008\u0008\u0002\u0010D\u001a\u00020B2\n\u0008\u0002\u0010E\u001a\u0004\u0018\u0001092\u0008\u0008\u0002\u0010F\u001a\u00020B2\n\u0008\u0002\u0010G\u001a\u0004\u0018\u00010H2\t\u0008\u0002\u0010\u00e1\u0001\u001a\u00020B2\t\u0008\u0002\u0010\u00e2\u0001\u001a\u00020B2\t\u0008\u0002\u0010\u00e3\u0001\u001a\u00020B2\u0006\u0010I\u001a\u00020B2\u0008\u0010J\u001a\u0004\u0018\u00010K2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020N0M2\u0006\u0010O\u001a\u00020B2\u0006\u0010P\u001a\u00020BH\u0082@\u00a2\u0006\u0003\u0010\u00e4\u0001J\u0013\u0010\u00e5\u0001\u001a\u0002022\n\u0010\u00e6\u0001\u001a\u0005\u0018\u00010\u00e7\u0001J\t\u0010\u00e8\u0001\u001a\u000200H\u0016J\u0014\u0010i\u001a\u000200*\u00020.2\u0006\u0010j\u001a\u00020kH\u0002J\u001b\u0010i\u001a\u000200*\u00020&2\u0006\u0010j\u001a\u00020kH\u0082@\u00a2\u0006\u0003\u0010\u00e9\u0001R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010 *\u0004\u0008\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\"8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\'\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008)\u0010*R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00ec\u0001"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
        "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
        "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
        "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
        "paymentCollector",
        "Lcom/stripe/hardware/paymentcollection/PaymentCollector;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "settingsRepository",
        "Lcom/stripe/paymentcollection/SettingsRepository;",
        "localeManager",
        "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;",
        "eventLoggers",
        "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
        "transactionRepository",
        "Lcom/stripe/paymentcollection/TransactionRepository;",
        "paymentCollectionContextFactory",
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;",
        "deviceInfoRepository",
        "Lcom/stripe/device/DeviceInfoRepository;",
        "paymentCollectionFeatureFlagRepository",
        "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
        "transactionListener",
        "Lcom/stripe/paymentcollection/TransactionListener;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/hardware/paymentcollection/PaymentCollector;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/SettingsRepository;Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/TransactionRepository;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/TransactionListener;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "deviceCapability",
        "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
        "getDeviceCapability$delegate",
        "(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Ljava/lang/Object;",
        "getDeviceCapability",
        "()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
        "emvTransactionType",
        "Lcom/stripe/hardware/emv/EmvTransactionType;",
        "getEmvTransactionType",
        "()Lcom/stripe/hardware/emv/EmvTransactionType;",
        "paymentCollectionContext",
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;",
        "platformDeviceInfo",
        "Lcom/stripe/device/PlatformDeviceInfo;",
        "getPlatformDeviceInfo",
        "()Lcom/stripe/device/PlatformDeviceInfo;",
        "platformDeviceInfo$delegate",
        "Lcom/stripe/device/DeviceInfoRepository;",
        "readerContext",
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;",
        "cancelCurrentTransaction",
        "",
        "cancelPaymentMethodCollection",
        "Lkotlinx/coroutines/Job;",
        "cancelPaymentMethodCollectionViaCustomer",
        "clearReaderContext",
        "collectPaymentMethod",
        "Lkotlinx/coroutines/Deferred;",
        "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "paymentCollectionListener",
        "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
        "scaRequirement",
        "Lcom/stripe/paymentcollection/SCARequirement;",
        "tippingAmount",
        "skipTipping",
        "",
        "manualEntry",
        "isOffline",
        "tipEligibleAmount",
        "isDeferredAuthorizationCountry",
        "domesticDebitPriority",
        "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "enableCustomerCancellation",
        "surchargeNotice",
        "",
        "nonCardPaymentMethodTypes",
        "",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "requestIncrementalAuthorizationSupport",
        "forcePinEntry",
        "(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "displayCart",
        "cart",
        "Lcom/stripe/cart/Cart;",
        "displayNonCardPaymentMethods",
        "getAccountBlob",
        "getDeviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "getLocalizedTippingConfigs",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;",
        "getTippingConfig",
        "Lcom/stripe/hardware/tipping/TipConfigValidationResult;",
        "tippingState",
        "Lcom/stripe/paymentcollection/TippingState;",
        "getTippingState",
        "handleAutomationEvent",
        "automationEvent",
        "Lcom/stripe/paymentcollection/AutomationEvent;",
        "handleCollectionCompletion",
        "event",
        "Lcom/stripe/paymentcollection/CollectionCompleteEvent;",
        "handleHardwareEvent",
        "hardwareEvent",
        "Lcom/stripe/paymentcollection/HardwareEvent;",
        "handleHardwareListenerEvent",
        "hardwareListenerEvent",
        "Lcom/stripe/paymentcollection/HardwareListenerEvent;",
        "handleNetworkEvent",
        "Lcom/stripe/paymentcollection/NetworkEvent;",
        "handleNonCardPaymentMethodConfirmationResponse",
        "Lcom/stripe/hardware/emv/TransactionResult;",
        "response",
        "Lcom/stripe/transaction/NonCardPaymentMethodData;",
        "handleOnlineAuthResponse",
        "handleUserInteractionEvent",
        "userInteractionEvent",
        "Lcom/stripe/paymentcollection/UserInteractionEvent;",
        "initReaderContext",
        "listener",
        "insertTransactionLog",
        "transactionResult",
        "Lcom/stripe/hardware/emv/TransactionResult$Result;",
        "(Lcom/stripe/hardware/emv/TransactionResult$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onAccessiblePinPadEvent",
        "accessiblePinPadTouchEvent",
        "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;",
        "onBatteryCriticallyLow",
        "onCardSwiped",
        "readResult",
        "Lcom/stripe/hardware/magstripe/MagStripeReadResult;",
        "onChipCardInitializationFailed",
        "onCollectPaymentMethodApiError",
        "onContactCardStateUpdate",
        "slotState",
        "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
        "onDeviceMissingEncryptionKeys",
        "onDisplayAdditionalMessage",
        "message",
        "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
        "onEmptyCandidateList",
        "onHandlePaymentCollectionEvent",
        "Lcom/stripe/paymentcollection/PaymentCollectionEvent;",
        "onHardwareTransactionCanceled",
        "onIntermediateTransactionError",
        "error",
        "Lcom/stripe/hardware/emv/IntermediateTransactionError;",
        "onKernelTippingSelectionResult",
        "tipSelectionResult",
        "Lcom/stripe/hardware/tipping/TipSelectionResult;",
        "onOnlineAuthStateChanged",
        "state",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "onPinEntryStatusChange",
        "pinEntryStatus",
        "Lcom/stripe/hardware/paymentcollection/PinEntryStatus;",
        "epb",
        "ksn",
        "onReaderTypesChanged",
        "readerTypes",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "onReadingCard",
        "onRequestFinalConfirm",
        "onRequestOnlineAuthorisation",
        "authorisationData",
        "onRequestProduceAudioTone",
        "audioAlertType",
        "Lcom/stripe/hardware/status/AudioAlertType;",
        "onRequestSelectAccountType",
        "onRequestSelectApplication",
        "appList",
        "onResetPaymentInterfaces",
        "onReturnFinalTlvBlob",
        "tlv",
        "onReturnTransactionResult",
        "onSetPinPadButtonsResult",
        "isSuccess",
        "onShowThankYou",
        "onUpdatePinEntryAsteriskCount",
        "count",
        "",
        "resumeExistingPaymentCollection",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "selectDynamicCurrencyConversion",
        "dynamicCurrencyConversionData",
        "Lcom/stripe/transaction/DynamicCurrencyConversionData;",
        "(Lcom/stripe/transaction/DynamicCurrencyConversionData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendBatteryLowResult",
        "sendCancelResult",
        "sendDeviceMissingEncryptionKeysResult",
        "sendEmvResult",
        "interfaceType",
        "Lcom/stripe/hardware/emv/InterfaceType;",
        "emvBlob",
        "tipResult",
        "Lcom/stripe/paymentcollection/TippingState$EndState;",
        "sendFailedResult",
        "sendManualEntryResult",
        "data",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;",
        "sendMsrResult",
        "result",
        "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;",
        "collectionAuthority",
        "Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;",
        "sendNonCardPaymentMethodActionCompletionResult",
        "transactionApproved",
        "sendNonCardPaymentMethodConfirmationResult",
        "paymentMethodType",
        "sendPassthroughConfirmationResult",
        "sendSecondGenACResponse",
        "Lcom/stripe/paymentcollection/SecondGenACResponse;",
        "sendTimeoutResult",
        "setSelectedAccountType",
        "accountType",
        "Lcom/stripe/hardware/emv/AccountType;",
        "setSelectedDynamicCurrencyConversionCurrency",
        "selected",
        "setSelectedNonCardPaymentMethod",
        "startDynamicCurrencyConversionSelection",
        "startHandleNonCardPaymentMethodResponse",
        "startHandleOnlineAuthResponse",
        "startPaymentCollection",
        "isApplicationSelectionInQuickChipEnabled",
        "promptPinEntryForServiceCode",
        "forceMagstripePin",
        "(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateChargeAttempt",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "waitForCardPresent",
        "(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/HardwareListenerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ConnectedReaderContext",
        "PaymentCollectionContext",
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

.field private final localeManager:Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;

.field private final logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

.field private paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

.field private final paymentCollectionContextFactory:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;

.field private final paymentCollectionFeatureFlagRepository:Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

.field private final paymentCollector:Lcom/stripe/hardware/paymentcollection/PaymentCollector;

.field private final platformDeviceInfo$delegate:Lcom/stripe/device/DeviceInfoRepository;

.field private readerContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;

.field private final settingsRepository:Lcom/stripe/paymentcollection/SettingsRepository;

.field private final transactionListener:Lcom/stripe/paymentcollection/TransactionListener;

.field private final transactionRepository:Lcom/stripe/paymentcollection/TransactionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 76
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "platformDeviceInfo"

    const-string v3, "getPlatformDeviceInfo()Lcom/stripe/device/PlatformDeviceInfo;"

    const-class v4, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/hardware/paymentcollection/PaymentCollector;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/SettingsRepository;Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/TransactionRepository;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/TransactionListener;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "paymentCollector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localeManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventLoggers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentCollectionContextFactory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoRepository"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentCollectionFeatureFlagRepository"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionListener"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollector:Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    .line 65
    iput-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 66
    iput-object p3, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->settingsRepository:Lcom/stripe/paymentcollection/SettingsRepository;

    .line 67
    iput-object p4, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->localeManager:Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;

    .line 68
    iput-object p5, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    .line 69
    iput-object p6, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionRepository:Lcom/stripe/paymentcollection/TransactionRepository;

    .line 70
    iput-object p7, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContextFactory:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;

    .line 72
    iput-object p9, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionFeatureFlagRepository:Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    .line 73
    iput-object p10, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionListener:Lcom/stripe/paymentcollection/TransactionListener;

    .line 74
    iput-object p11, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    .line 76
    iput-object p8, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->platformDeviceInfo$delegate:Lcom/stripe/device/DeviceInfoRepository;

    return-void
.end method

.method public static final synthetic access$cancelCurrentTransaction(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->cancelCurrentTransaction()V

    return-void
.end method

.method public static final synthetic access$cancelPaymentMethodCollectionViaCustomer(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->cancelPaymentMethodCollectionViaCustomer()Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDeviceCapability(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/transaction/PaymentCollectionDeviceCapability;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getDeviceCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEmvTransactionType(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/emv/EmvTransactionType;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEventLoggers$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/metrics/EventLoggers;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    return-object p0
.end method

.method public static final synthetic access$getLocaleManager$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->localeManager:Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-object p0
.end method

.method public static final synthetic access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    return-object p0
.end method

.method public static final synthetic access$getPaymentCollectionContextFactory$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContextFactory:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;

    return-object p0
.end method

.method public static final synthetic access$getPaymentCollectionFeatureFlagRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionFeatureFlagRepository:Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    return-object p0
.end method

.method public static final synthetic access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollector:Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    return-object p0
.end method

.method public static final synthetic access$getReaderContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->readerContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;

    return-object p0
.end method

.method public static final synthetic access$getSettingsRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/SettingsRepository;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->settingsRepository:Lcom/stripe/paymentcollection/SettingsRepository;

    return-object p0
.end method

.method public static final synthetic access$getTippingConfig(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/TippingState;)Lcom/stripe/hardware/tipping/TipConfigValidationResult;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getTippingConfig(Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/TippingState;)Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTippingState(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;ZZLcom/stripe/currency/Amount;)Lcom/stripe/paymentcollection/TippingState;
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getTippingState(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;ZZLcom/stripe/currency/Amount;)Lcom/stripe/paymentcollection/TippingState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTransactionRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/TransactionRepository;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionRepository:Lcom/stripe/paymentcollection/TransactionRepository;

    return-object p0
.end method

.method public static final synthetic access$handleCollectionCompletion(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/CollectionCompleteEvent;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->handleCollectionCompletion(Lcom/stripe/paymentcollection/CollectionCompleteEvent;)V

    return-void
.end method

.method public static final synthetic access$handleHardwareListenerEvent(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/HardwareListenerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->handleHardwareListenerEvent(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/HardwareListenerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleHardwareListenerEvent(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;Lcom/stripe/paymentcollection/HardwareListenerEvent;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->handleHardwareListenerEvent(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;Lcom/stripe/paymentcollection/HardwareListenerEvent;)V

    return-void
.end method

.method public static final synthetic access$insertTransactionLog(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/hardware/emv/TransactionResult$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->insertTransactionLog(Lcom/stripe/hardware/emv/TransactionResult$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resumeExistingPaymentCollection(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p7}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->resumeExistingPaymentCollection(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendCancelResult(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendCancelResult()V

    return-void
.end method

.method public static final synthetic access$sendFailedResult(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendFailedResult()V

    return-void
.end method

.method public static final synthetic access$sendTimeoutResult(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendTimeoutResult()V

    return-void
.end method

.method public static final synthetic access$setPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    return-void
.end method

.method public static final synthetic access$startDynamicCurrencyConversionSelection(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/transaction/DynamicCurrencyConversionData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->startDynamicCurrencyConversionSelection(Lcom/stripe/transaction/DynamicCurrencyConversionData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startPaymentCollection(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p19}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->startPaymentCollection(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final cancelCurrentTransaction()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->cancel()V

    :cond_0
    return-void
.end method

.method private final cancelPaymentMethodCollectionViaCustomer()Lkotlinx/coroutines/Job;
    .locals 6

    .line 292
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$cancelPaymentMethodCollectionViaCustomer$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$cancelPaymentMethodCollectionViaCustomer$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic collectPaymentMethod$default(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move v10, v3

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    move v11, v3

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move-object v12, v2

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move v13, v3

    goto :goto_6

    :cond_6
    move/from16 v13, p10

    :goto_6
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    move-object v14, v2

    goto :goto_7

    :cond_7
    move-object/from16 v14, p11

    :goto_7
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move-object/from16 v20, p17

    .line 133
    invoke-virtual/range {v3 .. v20}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->collectPaymentMethod(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final getAccountBlob()Ljava/lang/String;
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1352
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

    .line 1353
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedAccount()Lcom/stripe/hardware/emv/AccountType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1354
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/AccountType;->toTlvBlob()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private final getDeviceCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionRepository:Lcom/stripe/paymentcollection/TransactionRepository;

    invoke-interface {v0}, Lcom/stripe/paymentcollection/TransactionRepository;->getDevicePaymentCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceCapability$delegate(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Ljava/lang/Object;
    .locals 6

    .line 107
    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionRepository:Lcom/stripe/paymentcollection/TransactionRepository;

    const-class v2, Lcom/stripe/paymentcollection/TransactionRepository;

    const-string v4, "getDevicePaymentCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;"

    const/4 v5, 0x0

    const-string v3, "devicePaymentCapability"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/PropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object p0

    return-object p0
.end method

.method private final getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->settingsRepository:Lcom/stripe/paymentcollection/SettingsRepository;

    invoke-interface {v0}, Lcom/stripe/paymentcollection/SettingsRepository;->getSettings()Lcom/stripe/transaction/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/transaction/Settings;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v0

    return-object v0
.end method

.method private final getLocalizedTippingConfigs(Lcom/stripe/currency/Amount;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;
    .locals 11

    .line 222
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->settingsRepository:Lcom/stripe/paymentcollection/SettingsRepository;

    invoke-interface {v0}, Lcom/stripe/paymentcollection/SettingsRepository;->getTippingConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->localized_tipping_config:Ljava/util/Map;

    .line 224
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "Not starting the tipping flow because there is no tipping config"

    invoke-interface {p1, v1, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 p1, 0x0

    return-object p1

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinatorKt;->getCurrencyCode(Lcom/stripe/currency/Amount;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;

    if-nez v1, :cond_1

    .line 232
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string v0, ","

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getTippingLogger()Lcom/stripe/paymentcollection/metrics/TippingLogger;

    move-result-object v2

    .line 235
    invoke-static {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinatorKt;->getCurrencyCode(Lcom/stripe/currency/Amount;)Ljava/lang/String;

    move-result-object p1

    .line 236
    iget-object v3, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionRepository:Lcom/stripe/paymentcollection/TransactionRepository;

    invoke-interface {v3}, Lcom/stripe/paymentcollection/TransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v3

    .line 233
    invoke-interface {v2, v0, p1, v3}, Lcom/stripe/paymentcollection/metrics/TippingLogger;->logCurrencyMismatch(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/restclient/IntegrationType;)V

    :cond_1
    return-object v1
.end method

.method private final getPlatformDeviceInfo()Lcom/stripe/device/PlatformDeviceInfo;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->platformDeviceInfo$delegate:Lcom/stripe/device/DeviceInfoRepository;

    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/device/DeviceInfoRepository;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/device/PlatformDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method private final getTippingConfig(Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/TippingState;)Lcom/stripe/hardware/tipping/TipConfigValidationResult;
    .locals 1

    .line 244
    sget-object v0, Lcom/stripe/paymentcollection/TippingState$Ineligible;->INSTANCE:Lcom/stripe/paymentcollection/TippingState$Ineligible;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lcom/stripe/hardware/tipping/InvalidTipConfig;

    sget-object p2, Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;->NULL_TIP_CONFIG:Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;

    invoke-direct {p1, p2}, Lcom/stripe/hardware/tipping/InvalidTipConfig;-><init>(Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;)V

    check-cast p1, Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    return-object p1

    .line 245
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getLocalizedTippingConfigs(Lcom/stripe/currency/Amount;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;

    move-result-object p2

    if-nez p2, :cond_1

    .line 246
    new-instance p1, Lcom/stripe/hardware/tipping/InvalidTipConfig;

    sget-object p2, Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;->NULL_TIP_CONFIG:Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;

    invoke-direct {p1, p2}, Lcom/stripe/hardware/tipping/InvalidTipConfig;-><init>(Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;)V

    check-cast p1, Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    return-object p1

    .line 247
    :cond_1
    invoke-static {p2, p1}, Lcom/stripe/hardware/tipping/TipConfigValidationResultKt;->generateValidatedConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;Lcom/stripe/currency/Amount;)Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    move-result-object p1

    return-object p1
.end method

.method private final getTippingState(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;ZZLcom/stripe/currency/Amount;)Lcom/stripe/paymentcollection/TippingState;
    .locals 3

    if-eqz p4, :cond_0

    .line 191
    sget-object p1, Lcom/stripe/paymentcollection/TippingState$Ineligible;->INSTANCE:Lcom/stripe/paymentcollection/TippingState$Ineligible;

    check-cast p1, Lcom/stripe/paymentcollection/TippingState;

    return-object p1

    :cond_0
    if-eqz p5, :cond_1

    .line 195
    iget-object p4, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {p4}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getTippingLogger()Lcom/stripe/paymentcollection/metrics/TippingLogger;

    move-result-object p4

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionRepository:Lcom/stripe/paymentcollection/TransactionRepository;

    invoke-interface {v0}, Lcom/stripe/paymentcollection/TransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v0

    invoke-virtual {p5}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v1

    invoke-interface {p4, v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/TippingLogger;->logTipEligible(Lcom/stripe/restclient/IntegrationType;J)V

    :cond_1
    if-eqz p5, :cond_2

    .line 199
    invoke-virtual {p5}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide p4

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    :goto_0
    if-eqz p3, :cond_3

    .line 202
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getTippingLogger()Lcom/stripe/paymentcollection/metrics/TippingLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionRepository:Lcom/stripe/paymentcollection/TransactionRepository;

    invoke-interface {p2}, Lcom/stripe/paymentcollection/TransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/stripe/paymentcollection/metrics/TippingLogger;->logSkipTipping(Lcom/stripe/restclient/IntegrationType;)V

    .line 204
    :cond_3
    sget-object p1, Lcom/stripe/paymentcollection/TippingState$Ineligible;->INSTANCE:Lcom/stripe/paymentcollection/TippingState$Ineligible;

    check-cast p1, Lcom/stripe/paymentcollection/TippingState;

    return-object p1

    .line 207
    :cond_4
    sget-object p3, Lcom/stripe/hardware/paymentcollection/TransactionType;->CHARGE:Lcom/stripe/hardware/paymentcollection/TransactionType;

    const/4 p4, 0x0

    if-eq p2, p3, :cond_5

    .line 208
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    .line 209
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Not starting the tipping flow because TransactionType is not CHARGE. Current TransactionType: "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Lcom/stripe/hardware/paymentcollection/TransactionType;->name()Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p4, [Lkotlin/Pair;

    .line 208
    invoke-interface {p1, p2, p3}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 212
    sget-object p1, Lcom/stripe/paymentcollection/TippingState$Ineligible;->INSTANCE:Lcom/stripe/paymentcollection/TippingState$Ineligible;

    check-cast p1, Lcom/stripe/paymentcollection/TippingState;

    return-object p1

    .line 215
    :cond_5
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getLocalizedTippingConfigs(Lcom/stripe/currency/Amount;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;

    move-result-object p2

    if-nez p2, :cond_6

    sget-object p1, Lcom/stripe/paymentcollection/TippingState$Ineligible;->INSTANCE:Lcom/stripe/paymentcollection/TippingState$Ineligible;

    check-cast p1, Lcom/stripe/paymentcollection/TippingState;

    return-object p1

    .line 217
    :cond_6
    iget-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Starting tipping flow with currency: "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinatorKt;->getCurrencyCode(Lcom/stripe/currency/Amount;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, p4, [Lkotlin/Pair;

    invoke-interface {p2, p1, p3}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 218
    sget-object p1, Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;->INSTANCE:Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;

    check-cast p1, Lcom/stripe/paymentcollection/TippingState;

    return-object p1
.end method

.method static synthetic getTippingState$default(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;ZZLcom/stripe/currency/Amount;ILjava/lang/Object;)Lcom/stripe/paymentcollection/TippingState;
    .locals 1

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    move p4, v0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    const/4 p5, 0x0

    .line 183
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getTippingState(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;ZZLcom/stripe/currency/Amount;)Lcom/stripe/paymentcollection/TippingState;

    move-result-object p0

    return-object p0
.end method

.method private final handleAutomationEvent(Lcom/stripe/paymentcollection/AutomationEvent;)Lkotlinx/coroutines/Job;
    .locals 6

    .line 678
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleAutomationEvent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleAutomationEvent$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/AutomationEvent;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method private final handleCollectionCompletion(Lcom/stripe/paymentcollection/CollectionCompleteEvent;)V
    .locals 10

    .line 1174
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "event"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "handleCollectionCompletion"

    invoke-interface {v0, v2, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1175
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_5

    .line 1176
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1179
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionState;->INTERSTITIAL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object v2

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/CollectionCompleteEvent;->getModel()Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onCollectionComplete(Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;)V

    .line 1186
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getDccSelectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1187
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableDeferred;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1189
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1190
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 1189
    const-string v5, "Transaction cancelled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 1188
    invoke-interface {p1, v3}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 1198
    :cond_1
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    .line 1199
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableDeferred;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1200
    sget-object v2, Lcom/stripe/paymentcollection/Failed;->INSTANCE:Lcom/stripe/paymentcollection/Failed;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 1203
    :cond_2
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getSecondGenACResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 1204
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableDeferred;->isActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1206
    new-instance v3, Lcom/stripe/hardware/emv/TransactionResult;

    .line 1207
    sget-object v4, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 1206
    invoke-direct {v3, v4, v2}, Lcom/stripe/hardware/emv/TransactionResult;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V

    .line 1205
    invoke-interface {p1, v3}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 1217
    :cond_3
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->INTERSTITIAL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne v1, p1, :cond_4

    .line 1218
    invoke-virtual {v0, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->setNonCardPaymentMethodResult(Lkotlinx/coroutines/CompletableDeferred;)V

    return-void

    .line 1220
    :cond_4
    iput-object v2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    :cond_5
    :goto_0
    return-void
.end method

.method private final handleHardwareEvent(Lcom/stripe/paymentcollection/HardwareEvent;)Lkotlinx/coroutines/Job;
    .locals 6

    .line 708
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/HardwareEvent;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method private final handleHardwareListenerEvent(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/HardwareListenerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;",
            "Lcom/stripe/paymentcollection/HardwareListenerEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;

    iget v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;

    invoke-direct {v0, p0, p3}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 776
    iget v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/paymentcollection/HardwareListenerEvent;

    iget-object p2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto/16 :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 779
    iget-object p3, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {p3}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p3

    .line 781
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    .line 779
    invoke-interface {p3, p2, v2}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->onHardwareListenerEvent(Lcom/stripe/paymentcollection/HardwareListenerEvent;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 784
    instance-of p3, p2, Lcom/stripe/paymentcollection/ResetPaymentInterfacesEvent;

    if-eqz p3, :cond_3

    .line 785
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setInterfaceResetRequired(Z)V

    goto/16 :goto_2

    .line 788
    :cond_3
    instance-of p3, p2, Lcom/stripe/paymentcollection/ChipCardInitializationFailed;

    if-eqz p3, :cond_4

    .line 789
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    .line 790
    sget-object p2, Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;->CHIP_CARD_INITIALIZATION_FAILED:Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;

    .line 789
    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setEarlyTransactionAbortReason(Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;)V

    goto/16 :goto_2

    .line 794
    :cond_4
    instance-of p3, p2, Lcom/stripe/paymentcollection/EmptyCandidateListEncounteredEvent;

    if-eqz p3, :cond_5

    .line 795
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    .line 796
    sget-object p2, Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;->EMPTY_CANDIDATE_LIST:Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;

    .line 795
    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setEarlyTransactionAbortReason(Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;)V

    goto/16 :goto_2

    .line 800
    :cond_5
    instance-of p3, p2, Lcom/stripe/paymentcollection/RequestSelectApplicationEvent;

    if-eqz p3, :cond_6

    .line 801
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    check-cast p2, Lcom/stripe/paymentcollection/RequestSelectApplicationEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/RequestSelectApplicationEvent;->getApplications()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setApplicationList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 804
    :cond_6
    instance-of p3, p2, Lcom/stripe/paymentcollection/MagStripeReadEvent;

    if-eqz p3, :cond_7

    .line 805
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    check-cast p2, Lcom/stripe/paymentcollection/MagStripeReadEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/MagStripeReadEvent;->getResult()Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setMagStripeReadResult(Lcom/stripe/hardware/magstripe/MagStripeReadResult;)V

    goto/16 :goto_2

    .line 808
    :cond_7
    instance-of p3, p2, Lcom/stripe/paymentcollection/ContactCardUpdateEvent;

    if-eqz p3, :cond_8

    .line 809
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    check-cast p2, Lcom/stripe/paymentcollection/ContactCardUpdateEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/ContactCardUpdateEvent;->getUpdatedCardState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setCardSlotState(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    goto/16 :goto_2

    .line 812
    :cond_8
    instance-of p3, p2, Lcom/stripe/paymentcollection/SetPinEntryAsteriskCountEvent;

    if-eqz p3, :cond_9

    .line 813
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    check-cast p2, Lcom/stripe/paymentcollection/SetPinEntryAsteriskCountEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/SetPinEntryAsteriskCountEvent;->getCount()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setPinEntryAsterisks(I)V

    goto/16 :goto_2

    .line 816
    :cond_9
    instance-of p3, p2, Lcom/stripe/paymentcollection/OnAccessiblePinPadEvent;

    if-eqz p3, :cond_a

    .line 817
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    .line 818
    check-cast p2, Lcom/stripe/paymentcollection/OnAccessiblePinPadEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/OnAccessiblePinPadEvent;->getAccessiblePinPadTouchEvent()Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->onAccessiblePinPadEvent(Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;)V

    goto/16 :goto_2

    .line 821
    :cond_a
    instance-of p3, p2, Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;

    if-eqz p3, :cond_b

    .line 822
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    .line 823
    check-cast p2, Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;->getStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object p3

    .line 824
    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;->getEpb()Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;->getEpbKsn()Ljava/lang/String;

    move-result-object p2

    .line 822
    invoke-virtual {p1, p3, v0, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->onPinEntryStatusChange(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 829
    :cond_b
    instance-of p3, p2, Lcom/stripe/paymentcollection/RequestOnlineAuthorisationEvent;

    if-eqz p3, :cond_c

    .line 830
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    .line 831
    check-cast p2, Lcom/stripe/paymentcollection/RequestOnlineAuthorisationEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/RequestOnlineAuthorisationEvent;->getAuthorizationData()Ljava/lang/String;

    move-result-object p2

    .line 832
    new-instance p3, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$3;

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->localeManager:Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;

    invoke-direct {p3, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$3;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 830
    invoke-virtual {p1, p2, p3}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setOnlineAuthorizationData(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    .line 836
    :cond_c
    instance-of p3, p2, Lcom/stripe/paymentcollection/ReaderFinalConfirmationTlvCollectedEvent;

    if-eqz p3, :cond_d

    .line 837
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    .line 838
    check-cast p2, Lcom/stripe/paymentcollection/ReaderFinalConfirmationTlvCollectedEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/ReaderFinalConfirmationTlvCollectedEvent;->getTlv()Ljava/lang/String;

    move-result-object p2

    .line 837
    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setFinalConfirmation(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 842
    :cond_d
    instance-of p3, p2, Lcom/stripe/paymentcollection/TransactionCompletedEvent;

    if-eqz p3, :cond_f

    .line 843
    iget-object p3, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionFeatureFlagRepository:Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    invoke-interface {p3}, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;->transactionLogEnabled()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 844
    move-object p3, p2

    check-cast p3, Lcom/stripe/paymentcollection/TransactionCompletedEvent;

    invoke-virtual {p3}, Lcom/stripe/paymentcollection/TransactionCompletedEvent;->getResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object p3

    iput-object p1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$2;->label:I

    invoke-direct {p0, p3, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->insertTransactionLog(Lcom/stripe/hardware/emv/TransactionResult$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_e

    return-object v1

    .line 846
    :cond_e
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    .line 847
    check-cast p2, Lcom/stripe/paymentcollection/TransactionCompletedEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/TransactionCompletedEvent;->getResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object p2

    .line 846
    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setHardwareTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)V

    goto/16 :goto_2

    .line 851
    :cond_f
    instance-of p3, p2, Lcom/stripe/paymentcollection/IntermediateErrorEvent;

    if-eqz p3, :cond_10

    .line 852
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    .line 853
    check-cast p2, Lcom/stripe/paymentcollection/IntermediateErrorEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/IntermediateErrorEvent;->getError()Lcom/stripe/hardware/emv/IntermediateTransactionError;

    move-result-object p2

    .line 852
    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setIntermediateError(Lcom/stripe/hardware/emv/IntermediateTransactionError;)V

    goto/16 :goto_2

    .line 857
    :cond_10
    instance-of p3, p2, Lcom/stripe/paymentcollection/ReaderTypeChangedEvent;

    if-eqz p3, :cond_11

    .line 858
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p3

    .line 859
    check-cast p2, Lcom/stripe/paymentcollection/ReaderTypeChangedEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/ReaderTypeChangedEvent;->getTypes()Ljava/util/Set;

    move-result-object p2

    .line 858
    invoke-virtual {p3, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setActiveReaderInterfaces(Ljava/util/Set;)V

    .line 861
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setIsWaitingForCard(Z)V

    goto/16 :goto_2

    .line 866
    :cond_11
    sget-object p3, Lcom/stripe/paymentcollection/ShowThankYouEvent;->INSTANCE:Lcom/stripe/paymentcollection/ShowThankYouEvent;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 867
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setShowThankYouReceived(Z)V

    goto/16 :goto_2

    .line 870
    :cond_12
    sget-object p3, Lcom/stripe/paymentcollection/BatteryCriticallyLowEvent;->INSTANCE:Lcom/stripe/paymentcollection/BatteryCriticallyLowEvent;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 871
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onCancelled()V

    .line 872
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendBatteryLowResult()V

    goto/16 :goto_2

    .line 875
    :cond_13
    sget-object p3, Lcom/stripe/paymentcollection/DeviceMissingEncryptionKeyEvent;->INSTANCE:Lcom/stripe/paymentcollection/DeviceMissingEncryptionKeyEvent;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 876
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onCancelled()V

    .line 877
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendDeviceMissingEncryptionKeysResult()V

    goto :goto_2

    .line 880
    :cond_14
    sget-object p3, Lcom/stripe/paymentcollection/WaitForCardPresentEvent;->INSTANCE:Lcom/stripe/paymentcollection/WaitForCardPresentEvent;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 886
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openWaitForCardPresentLog()V

    goto :goto_2

    .line 889
    :cond_15
    sget-object p3, Lcom/stripe/paymentcollection/RequestSelectAccountEvent;->INSTANCE:Lcom/stripe/paymentcollection/RequestSelectAccountEvent;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 890
    iget-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const/4 p3, 0x0

    new-array p3, p3, [Lkotlin/Pair;

    const-string v0, "onRequestSelectAccountType"

    invoke-interface {p2, v0, p3}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 891
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->onRequestAccountTypeSelection()V

    goto :goto_2

    .line 894
    :cond_16
    sget-object p3, Lcom/stripe/paymentcollection/ReadingCardEvent;->INSTANCE:Lcom/stripe/paymentcollection/ReadingCardEvent;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 898
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->onDeviceKernelBusy()V

    goto :goto_2

    .line 901
    :cond_17
    instance-of p3, p2, Lcom/stripe/paymentcollection/SetPinPadResultEvent;

    if-nez p3, :cond_19

    .line 906
    instance-of p3, p2, Lcom/stripe/paymentcollection/HardwareTippingCollectionResultEvent;

    if-eqz p3, :cond_18

    .line 907
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    .line 908
    check-cast p2, Lcom/stripe/paymentcollection/HardwareTippingCollectionResultEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/HardwareTippingCollectionResultEvent;->getTipSelectionResult()Lcom/stripe/hardware/tipping/TipSelectionResult;

    move-result-object p2

    .line 907
    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setHardwareTippingSelectionResult(Lcom/stripe/hardware/tipping/TipSelectionResult;)V

    goto :goto_2

    .line 912
    :cond_18
    instance-of p2, p2, Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;

    if-eqz p2, :cond_19

    .line 913
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->onHardwareTransactionCanceled()V

    .line 916
    :cond_19
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final handleHardwareListenerEvent(Lcom/stripe/paymentcollection/HardwareListenerEvent;)Lkotlinx/coroutines/Job;
    .locals 6

    .line 768
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareListenerEvent$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/HardwareListenerEvent;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method private final handleHardwareListenerEvent(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;Lcom/stripe/paymentcollection/HardwareListenerEvent;)V
    .locals 1

    .line 925
    instance-of v0, p2, Lcom/stripe/paymentcollection/ContactCardUpdateEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;->getListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    .line 926
    check-cast p2, Lcom/stripe/paymentcollection/ContactCardUpdateEvent;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/ContactCardUpdateEvent;->getUpdatedCardState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object p2

    .line 925
    invoke-interface {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    :cond_0
    return-void
.end method

.method private final handleNetworkEvent(Lcom/stripe/paymentcollection/NetworkEvent;)V
    .locals 2

    .line 555
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnlineAuthorizationRequestEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/stripe/paymentcollection/OnlineAuthorizationRequestEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/OnlineAuthorizationRequestEvent;->getInterfaceType()Lcom/stripe/hardware/emv/InterfaceType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/OnlineAuthorizationRequestEvent;->getTlv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/OnlineAuthorizationRequestEvent;->getTipResult()Lcom/stripe/paymentcollection/TippingState$EndState;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendEmvResult(Lcom/stripe/hardware/emv/InterfaceType;Ljava/lang/String;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    return-void

    .line 556
    :cond_0
    instance-of v0, p1, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;

    if-eqz v0, :cond_1

    .line 557
    check-cast p1, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->getReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    move-result-object v0

    .line 558
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->getCollectionAuthority()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    move-result-object v1

    .line 559
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->getTipResult()Lcom/stripe/paymentcollection/TippingState$EndState;

    move-result-object p1

    .line 556
    invoke-direct {p0, v0, v1, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendMsrResult(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    return-void

    .line 562
    :cond_1
    instance-of v0, p1, Lcom/stripe/paymentcollection/SecondGenACResponseEvent;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/stripe/paymentcollection/SecondGenACResponseEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/SecondGenACResponseEvent;->getResponse()Lcom/stripe/paymentcollection/SecondGenACResponse;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendSecondGenACResponse(Lcom/stripe/paymentcollection/SecondGenACResponse;)V

    return-void

    .line 563
    :cond_2
    instance-of v0, p1, Lcom/stripe/paymentcollection/ManualEntryAuthorizationRequestEvent;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/stripe/paymentcollection/ManualEntryAuthorizationRequestEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/ManualEntryAuthorizationRequestEvent;->getData()Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/ManualEntryAuthorizationRequestEvent;->getTipResult()Lcom/stripe/paymentcollection/TippingState$EndState;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendManualEntryResult(Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    return-void

    .line 564
    :cond_3
    instance-of v0, p1, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationRequestEvent;

    if-eqz v0, :cond_4

    .line 565
    check-cast p1, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationRequestEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationRequestEvent;->getPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationRequestEvent;->getTipResult()Lcom/stripe/paymentcollection/TippingState$EndState;

    move-result-object p1

    .line 564
    invoke-direct {p0, v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendNonCardPaymentMethodConfirmationResult(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    return-void

    .line 568
    :cond_4
    instance-of v0, p1, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionCompletionEvent;

    if-eqz v0, :cond_5

    .line 569
    check-cast p1, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionCompletionEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionCompletionEvent;->getTransactionApproved()Z

    move-result p1

    .line 568
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendNonCardPaymentMethodActionCompletionResult(Z)V

    return-void

    .line 572
    :cond_5
    instance-of v0, p1, Lcom/stripe/paymentcollection/PassthroughConfirmationRequestEvent;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/stripe/paymentcollection/PassthroughConfirmationRequestEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PassthroughConfirmationRequestEvent;->getReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->sendPassthroughConfirmationResult(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;)V

    :cond_6
    return-void
.end method

.method private final handleUserInteractionEvent(Lcom/stripe/paymentcollection/UserInteractionEvent;)Lkotlinx/coroutines/Job;
    .locals 6

    .line 935
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/UserInteractionEvent;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method private final insertTransactionLog(Lcom/stripe/hardware/emv/TransactionResult$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/emv/TransactionResult$Result;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1358
    sget-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-eq p1, v0, :cond_0

    .line 1359
    sget-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->DECLINED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-ne p1, v0, :cond_7

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionRepository:Lcom/stripe/paymentcollection/TransactionRepository;

    invoke-interface {v0}, Lcom/stripe/paymentcollection/TransactionRepository;->getPaymentIntentId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1362
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "storing transaction log (id: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1365
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_3

    .line 1366
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getFinalTlvResponse()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationData()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v7, v1

    .line 1368
    :goto_1
    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionListener:Lcom/stripe/paymentcollection/TransactionListener;

    .line 1370
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v3

    .line 1371
    :goto_2
    iget-object v4, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionRepository:Lcom/stripe/paymentcollection/TransactionRepository;

    invoke-interface {v4}, Lcom/stripe/paymentcollection/TransactionRepository;->getAmountTip()Lcom/stripe/currency/Amount;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v3

    .line 1372
    :goto_3
    iget-object v5, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {v5}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinatorKt;->getCurrencyCode(Lcom/stripe/currency/Amount;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object v5, v3

    .line 1373
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->name()Ljava/lang/String;

    move-result-object v6

    move-object v8, p2

    move-object v3, v0

    .line 1368
    invoke-interface/range {v1 .. v8}, Lcom/stripe/paymentcollection/TransactionListener;->onTransactionLog(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_7

    return-object p1

    .line 1378
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final resumeExistingPaymentCollection(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
            "Lcom/stripe/paymentcollection/SCARequirement;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    move-object v8, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZLjava/lang/String;Lcom/stripe/paymentcollection/SCARequirement;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object/from16 p1, p7

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final sendBatteryLowResult()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/paymentcollection/BatteryCriticallyLow;->INSTANCE:Lcom/stripe/paymentcollection/BatteryCriticallyLow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final sendCancelResult()V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/paymentcollection/Cancelled;->INSTANCE:Lcom/stripe/paymentcollection/Cancelled;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final sendDeviceMissingEncryptionKeysResult()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/paymentcollection/DeviceMissingEncryptionKey;->INSTANCE:Lcom/stripe/paymentcollection/DeviceMissingEncryptionKey;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final sendEmvResult(Lcom/stripe/hardware/emv/InterfaceType;Ljava/lang/String;Lcom/stripe/paymentcollection/TippingState$EndState;)V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    new-instance v1, Lcom/stripe/paymentcollection/EmvResult;

    invoke-direct {v1, p2, p1, p3}, Lcom/stripe/paymentcollection/EmvResult;-><init>(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    .line 606
    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final sendFailedResult()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/paymentcollection/Failed;->INSTANCE:Lcom/stripe/paymentcollection/Failed;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final sendManualEntryResult(Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;Lcom/stripe/paymentcollection/TippingState$EndState;)V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    new-instance v1, Lcom/stripe/paymentcollection/ManualEntryResult;

    invoke-direct {v1, p1, p2}, Lcom/stripe/paymentcollection/ManualEntryResult;-><init>(Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    .line 580
    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final sendMsrResult(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    new-instance v1, Lcom/stripe/paymentcollection/MsrResult;

    invoke-direct {v1, p1, p2, p3}, Lcom/stripe/paymentcollection/MsrResult;-><init>(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    .line 620
    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final sendNonCardPaymentMethodActionCompletionResult(Z)V
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getNonCardPaymentMethodResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 643
    new-instance v1, Lcom/stripe/hardware/emv/TransactionResult;

    if-eqz p1, :cond_0

    .line 644
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DECLINED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    :goto_0
    const/4 v2, 0x0

    .line 643
    invoke-direct {v1, p1, v2}, Lcom/stripe/hardware/emv/TransactionResult;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V

    .line 642
    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private final sendNonCardPaymentMethodConfirmationResult(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/paymentcollection/TippingState$EndState;)V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 634
    new-instance v1, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationResult;

    invoke-direct {v1, p1, p2}, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationResult;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    .line 633
    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final sendPassthroughConfirmationResult(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;)V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    new-instance v1, Lcom/stripe/paymentcollection/PassthroughResult;

    invoke-direct {v1, p1}, Lcom/stripe/paymentcollection/PassthroughResult;-><init>(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;)V

    .line 651
    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final sendSecondGenACResponse(Lcom/stripe/paymentcollection/SecondGenACResponse;)V
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getSecondGenACResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 588
    instance-of v1, p1, Lcom/stripe/paymentcollection/EmvSecondGenACResponse;

    if-eqz v1, :cond_1

    .line 590
    check-cast p1, Lcom/stripe/paymentcollection/EmvSecondGenACResponse;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/EmvSecondGenACResponse;->isApproved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    goto :goto_0

    .line 593
    :cond_0
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DECLINED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 595
    :goto_0
    new-instance v2, Lcom/stripe/hardware/emv/TransactionResult;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/EmvSecondGenACResponse;->getTlv()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/stripe/hardware/emv/TransactionResult;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void

    .line 598
    :cond_1
    instance-of p1, p1, Lcom/stripe/paymentcollection/MagStripeSecondGenACResponse;

    if-eqz p1, :cond_2

    .line 599
    new-instance p1, Lcom/stripe/hardware/emv/TransactionResult;

    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method private final sendTimeoutResult()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/paymentcollection/Timeout;->INSTANCE:Lcom/stripe/paymentcollection/Timeout;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final startDynamicCurrencyConversionSelection(Lcom/stripe/transaction/DynamicCurrencyConversionData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/transaction/DynamicCurrencyConversionData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startDynamicCurrencyConversionSelection$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startDynamicCurrencyConversionSelection$2;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/transaction/DynamicCurrencyConversionData;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final startHandleNonCardPaymentMethodResponse(Lcom/stripe/transaction/NonCardPaymentMethodData;)Lkotlinx/coroutines/Job;
    .locals 6

    .line 387
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startHandleNonCardPaymentMethodResponse$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startHandleNonCardPaymentMethodResponse$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/transaction/NonCardPaymentMethodData;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method private final startHandleOnlineAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Job;
    .locals 6

    .line 381
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startHandleOnlineAuthResponse$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startHandleOnlineAuthResponse$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method private final startPaymentCollection(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
            "Lcom/stripe/currency/Amount;",
            "ZZZ",
            "Lcom/stripe/currency/Amount;",
            "Z",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 412
    iget-object v0, v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    move-object v2, v0

    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;

    const/16 v20, 0x0

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v9, p7

    move-object/from16 v6, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v21, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v20}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;ZZLcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p19

    move-object/from16 v2, v21

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic startPaymentCollection$default(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move-object v11, v3

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v12, v2

    goto :goto_4

    :cond_4
    move/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v13, v3

    goto :goto_5

    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    move v14, v2

    goto :goto_6

    :cond_6
    move/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    move v15, v2

    goto :goto_7

    :cond_7
    move/from16 v15, p12

    :goto_7
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    move/from16 v16, v2

    goto :goto_8

    :cond_8
    move/from16 v16, p13

    :goto_8
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move-object/from16 v22, p19

    .line 393
    invoke-direct/range {v3 .. v22}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->startPaymentCollection(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cancelPaymentMethodCollection()Lkotlinx/coroutines/Job;
    .locals 6

    .line 285
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$cancelPaymentMethodCollection$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$cancelPaymentMethodCollection$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method public final clearReaderContext()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->readerContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;

    return-void
.end method

.method public final collectPaymentMethod(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
            "Lcom/stripe/paymentcollection/SCARequirement;",
            "Lcom/stripe/currency/Amount;",
            "ZZZ",
            "Lcom/stripe/currency/Amount;",
            "Z",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/Deferred<",
            "+",
            "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/stripe/hardware/paymentcollection/TransactionType;->STRONG_CUSTOMER_AUTHENTICATION:Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-object/from16 v3, p2

    if-ne v3, v0, :cond_2

    if-nez p4, :cond_0

    .line 162
    sget-object v0, Lcom/stripe/paymentcollection/SCARequirement;->GENERIC:Lcom/stripe/paymentcollection/SCARequirement;

    move-object v4, v0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v2, p5

    move/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p17

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v2, p5

    move/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p17

    .line 158
    :goto_0
    invoke-direct/range {v0 .. v7}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->resumeExistingPaymentCollection(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-object v1

    :cond_1
    check-cast v1, Lkotlinx/coroutines/Deferred;

    return-object v1

    :cond_2
    move-object/from16 v0, p0

    .line 171
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionFeatureFlagRepository:Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    invoke-interface {v1}, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;->applicationSelectionInQuickChipEnabled()Z

    move-result v12

    .line 172
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionFeatureFlagRepository:Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    invoke-interface {v1}, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;->magStripePinEnabled()Z

    move-result v13

    .line 173
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->settingsRepository:Lcom/stripe/paymentcollection/SettingsRepository;

    invoke-interface {v1}, Lcom/stripe/paymentcollection/SettingsRepository;->getMagstripeConfig()Lcom/stripe/proto/model/config/MagstripeConfig;

    move-result-object v1

    iget-boolean v14, v1, Lcom/stripe/proto/model/config/MagstripeConfig;->force_pin_entry:Z

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move-object/from16 v20, p17

    move-object v1, v0

    .line 167
    invoke-direct/range {v1 .. v20}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->startPaymentCollection(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    return-object v0

    :cond_3
    check-cast v0, Lkotlinx/coroutines/Deferred;

    return-object v0
.end method

.method public final displayCart(Lcom/stripe/cart/Cart;Lcom/stripe/paymentcollection/PaymentCollectionListener;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentCollectionListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, p1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/cart/Cart;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final displayNonCardPaymentMethods()V
    .locals 1
    .annotation runtime Lcom/stripe/annotation/VisibleForTesting;
    .end annotation

    .line 1170
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->displayNonCardPaymentMethods()V

    :cond_0
    return-void
.end method

.method public final getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;
    .locals 4
    .annotation runtime Lcom/stripe/annotation/VisibleForTesting;
    .end annotation

    .line 533
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    check-cast v0, Ljava/lang/Iterable;

    .line 1418
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 534
    new-instance v3, Lcom/stripe/device/MainlandDeviceType;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/stripe/device/MainlandDeviceType;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getPlatformDeviceInfo()Lcom/stripe/device/PlatformDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/device/PlatformDeviceInfo;->getMainlandDeviceType()Lcom/stripe/device/MainlandDeviceType;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 533
    :goto_0
    check-cast v1, Lcom/stripe/stripeterminal/external/models/DeviceType;

    if-nez v1, :cond_2

    .line 535
    move-object v0, p0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    .line 536
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string v1, "Failed to retrieve device type."

    invoke-interface {v0, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->w(Ljava/lang/String;)V

    .line 537
    sget-object v0, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final handleNonCardPaymentMethodConfirmationResponse(Lcom/stripe/transaction/NonCardPaymentMethodData;)Lkotlinx/coroutines/Deferred;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/transaction/NonCardPaymentMethodData;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->startHandleNonCardPaymentMethodResponse(Lcom/stripe/transaction/NonCardPaymentMethodData;)Lkotlinx/coroutines/Job;

    const/4 p1, 0x1

    .line 332
    invoke-static {v1, p1, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    .line 333
    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->setNonCardPaymentMethodResult(Lkotlinx/coroutines/CompletableDeferred;)V

    if-eqz p1, :cond_0

    .line 330
    check-cast p1, Lkotlinx/coroutines/Deferred;

    return-object p1

    .line 335
    :cond_0
    new-instance p1, Lcom/stripe/hardware/emv/TransactionResult;

    sget-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-direct {p1, v0, v1}, Lcom/stripe/hardware/emv/TransactionResult;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Deferred;

    return-object p1
.end method

.method public final handleOnlineAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v2

    sget-object v3, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/EmvTransactionType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 317
    invoke-static {v1, v3, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->setSecondGenACResult(Lkotlinx/coroutines/CompletableDeferred;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 313
    :cond_1
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult;

    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-direct {v0, v2, p1}, Lcom/stripe/hardware/emv/TransactionResult;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    .line 320
    :goto_0
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->startHandleOnlineAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_2

    .line 309
    check-cast v2, Lkotlinx/coroutines/Deferred;

    return-object v2

    .line 322
    :cond_2
    move-object p1, p0

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    .line 323
    new-instance p1, Lcom/stripe/hardware/emv/TransactionResult;

    sget-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-direct {p1, v0, v1}, Lcom/stripe/hardware/emv/TransactionResult;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    .line 322
    check-cast p1, Lkotlinx/coroutines/Deferred;

    return-object p1
.end method

.method public final initReaderContext(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->readerContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;

    return-void
.end method

.method public onAccessiblePinPadEvent(Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;)V
    .locals 1

    const-string v0, "accessiblePinPadTouchEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1264
    new-instance v0, Lcom/stripe/paymentcollection/OnAccessiblePinPadEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/OnAccessiblePinPadEvent;-><init>(Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 1263
    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onBatteryCriticallyLow()V
    .locals 1

    .line 1342
    sget-object v0, Lcom/stripe/paymentcollection/BatteryCriticallyLowEvent;->INSTANCE:Lcom/stripe/paymentcollection/BatteryCriticallyLowEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onCardSwiped(Lcom/stripe/hardware/magstripe/MagStripeReadResult;)V
    .locals 1

    const-string v0, "readResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1234
    new-instance v0, Lcom/stripe/paymentcollection/MagStripeReadEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/MagStripeReadEvent;-><init>(Lcom/stripe/hardware/magstripe/MagStripeReadResult;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onChipCardInitializationFailed()V
    .locals 1

    .line 1230
    sget-object v0, Lcom/stripe/paymentcollection/ChipCardInitializationFailed;->INSTANCE:Lcom/stripe/paymentcollection/ChipCardInitializationFailed;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public final onCollectPaymentMethodApiError()Lkotlinx/coroutines/Job;
    .locals 6

    .line 299
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$onCollectPaymentMethodApiError$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$onCollectPaymentMethodApiError$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method public onContactCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V
    .locals 1

    const-string v0, "slotState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1238
    new-instance v0, Lcom/stripe/paymentcollection/ContactCardUpdateEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/ContactCardUpdateEvent;-><init>(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onDeviceMissingEncryptionKeys()V
    .locals 1

    .line 1346
    sget-object v0, Lcom/stripe/paymentcollection/DeviceMissingEncryptionKeyEvent;->INSTANCE:Lcom/stripe/paymentcollection/DeviceMissingEncryptionKeyEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onDisplayAdditionalMessage(Lcom/stripe/hardware/status/ReaderDisplayMessage;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onAdditionalReaderDisplayMessage(Lcom/stripe/hardware/status/ReaderDisplayMessage;)V

    :cond_0
    return-void
.end method

.method public onEmptyCandidateList()V
    .locals 1

    .line 1242
    sget-object v0, Lcom/stripe/paymentcollection/EmptyCandidateListEncounteredEvent;->INSTANCE:Lcom/stripe/paymentcollection/EmptyCandidateListEncounteredEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "onHandlePaymentCollectionEvent"

    invoke-interface {v1, v0, v2}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 545
    instance-of v0, p1, Lcom/stripe/paymentcollection/UserInteractionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/stripe/paymentcollection/UserInteractionEvent;

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->handleUserInteractionEvent(Lcom/stripe/paymentcollection/UserInteractionEvent;)Lkotlinx/coroutines/Job;

    return-void

    .line 546
    :cond_0
    instance-of v0, p1, Lcom/stripe/paymentcollection/HardwareEvent;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/stripe/paymentcollection/HardwareEvent;

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->handleHardwareEvent(Lcom/stripe/paymentcollection/HardwareEvent;)Lkotlinx/coroutines/Job;

    return-void

    .line 547
    :cond_1
    instance-of v0, p1, Lcom/stripe/paymentcollection/AutomationEvent;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/stripe/paymentcollection/AutomationEvent;

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->handleAutomationEvent(Lcom/stripe/paymentcollection/AutomationEvent;)Lkotlinx/coroutines/Job;

    return-void

    .line 548
    :cond_2
    instance-of v0, p1, Lcom/stripe/paymentcollection/HardwareListenerEvent;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/stripe/paymentcollection/HardwareListenerEvent;

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->handleHardwareListenerEvent(Lcom/stripe/paymentcollection/HardwareListenerEvent;)Lkotlinx/coroutines/Job;

    return-void

    .line 549
    :cond_3
    instance-of v0, p1, Lcom/stripe/paymentcollection/NetworkEvent;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/stripe/paymentcollection/NetworkEvent;

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->handleNetworkEvent(Lcom/stripe/paymentcollection/NetworkEvent;)V

    :cond_4
    return-void
.end method

.method public onHardwareTransactionCanceled()V
    .locals 1

    .line 1330
    sget-object v0, Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;->INSTANCE:Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onIntermediateTransactionError(Lcom/stripe/hardware/emv/IntermediateTransactionError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    new-instance v0, Lcom/stripe/paymentcollection/IntermediateErrorEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/IntermediateErrorEvent;-><init>(Lcom/stripe/hardware/emv/IntermediateTransactionError;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onKernelTippingSelectionResult(Lcom/stripe/hardware/tipping/TipSelectionResult;)V
    .locals 1

    const-string v0, "tipSelectionResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    new-instance v0, Lcom/stripe/paymentcollection/HardwareTippingCollectionResultEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/HardwareTippingCollectionResultEvent;-><init>(Lcom/stripe/hardware/tipping/TipSelectionResult;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V
    .locals 7

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$onOnlineAuthStateChanged$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$onOnlineAuthStateChanged$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/OnlineAuthState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onPinEntryStatusChange(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "pinEntryStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPinEntryStatusChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1255
    new-instance v0, Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;-><init>(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onReaderTypesChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readerTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1306
    new-instance v0, Lcom/stripe/paymentcollection/ReaderTypeChangedEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/ReaderTypeChangedEvent;-><init>(Ljava/util/Set;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onReadingCard()V
    .locals 1

    .line 1314
    sget-object v0, Lcom/stripe/paymentcollection/ReadingCardEvent;->INSTANCE:Lcom/stripe/paymentcollection/ReadingCardEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onRequestFinalConfirm()V
    .locals 4

    .line 1272
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/lit8 v2, v0, 0x1

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string v3, "sending final confirm false since payment was cancelled"

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, v3, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1274
    :cond_1
    new-instance v0, Lcom/stripe/paymentcollection/SendFinalConfirmEvent;

    invoke-direct {v0, v2}, Lcom/stripe/paymentcollection/SendFinalConfirmEvent;-><init>(Z)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onRequestOnlineAuthorisation(Ljava/lang/String;)V
    .locals 2

    const-string v0, "authorisationData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getAccountBlob()Ljava/lang/String;

    move-result-object v0

    .line 1280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1282
    new-instance v0, Lcom/stripe/paymentcollection/RequestOnlineAuthorisationEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/RequestOnlineAuthorisationEvent;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onRequestProduceAudioTone(Lcom/stripe/hardware/status/AudioAlertType;)V
    .locals 1

    const-string v0, "audioAlertType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestProduceAudioTone(Lcom/stripe/hardware/status/AudioAlertType;)V

    :cond_0
    return-void
.end method

.method public onRequestSelectAccountType()V
    .locals 1

    .line 1250
    sget-object v0, Lcom/stripe/paymentcollection/RequestSelectAccountEvent;->INSTANCE:Lcom/stripe/paymentcollection/RequestSelectAccountEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onRequestSelectApplication(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1246
    new-instance v0, Lcom/stripe/paymentcollection/RequestSelectApplicationEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/RequestSelectApplicationEvent;-><init>(Ljava/util/List;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onResetPaymentInterfaces()V
    .locals 1

    .line 1226
    sget-object v0, Lcom/stripe/paymentcollection/ResetPaymentInterfacesEvent;->INSTANCE:Lcom/stripe/paymentcollection/ResetPaymentInterfacesEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onReturnFinalTlvBlob(Ljava/lang/String;)V
    .locals 2

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1299
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getAccountBlob()Ljava/lang/String;

    move-result-object v0

    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1302
    new-instance v0, Lcom/stripe/paymentcollection/ReaderFinalConfirmationTlvCollectedEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/ReaderFinalConfirmationTlvCollectedEvent;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onReturnTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)V
    .locals 1

    const-string v0, "transactionResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1291
    new-instance v0, Lcom/stripe/paymentcollection/TransactionCompletedEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/TransactionCompletedEvent;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 1290
    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onSetPinPadButtonsResult(Z)V
    .locals 1

    .line 1318
    new-instance v0, Lcom/stripe/paymentcollection/SetPinPadResultEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/SetPinPadResultEvent;-><init>(Z)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onShowThankYou()V
    .locals 1

    .line 1338
    sget-object v0, Lcom/stripe/paymentcollection/ShowThankYouEvent;->INSTANCE:Lcom/stripe/paymentcollection/ShowThankYouEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public onUpdatePinEntryAsteriskCount(I)V
    .locals 1

    .line 1259
    new-instance v0, Lcom/stripe/paymentcollection/SetPinEntryAsteriskCountEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/SetPinEntryAsteriskCountEvent;-><init>(I)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method public final selectDynamicCurrencyConversion(Lcom/stripe/transaction/DynamicCurrencyConversionData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/transaction/DynamicCurrencyConversionData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/Deferred<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->startDynamicCurrencyConversionSelection(Lcom/stripe/transaction/DynamicCurrencyConversionData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setSelectedAccountType(Lcom/stripe/hardware/emv/AccountType;)V
    .locals 1
    .annotation runtime Lcom/stripe/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "accountType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setSelectedAccountType(Lcom/stripe/hardware/emv/AccountType;)V

    :cond_0
    return-void
.end method

.method public final setSelectedDynamicCurrencyConversionCurrency(Z)V
    .locals 1
    .annotation runtime Lcom/stripe/annotation/VisibleForTesting;
    .end annotation

    .line 1158
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setDynamicCurrencyConversionSelected(Z)V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getDccSelectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final setSelectedNonCardPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V
    .locals 1
    .annotation runtime Lcom/stripe/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "selected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->transactionRepository:Lcom/stripe/paymentcollection/TransactionRepository;

    invoke-interface {v0, p1}, Lcom/stripe/paymentcollection/TransactionRepository;->setNonCardPaymentMethodType(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V

    .line 1165
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->paymentCollectionContext:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setNonCardPaymentMethodSelected(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V

    :cond_0
    return-void
.end method

.method public final updateChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)Lkotlinx/coroutines/Job;
    .locals 6

    .line 341
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public waitForCardPresent()V
    .locals 1

    .line 1310
    sget-object v0, Lcom/stripe/paymentcollection/WaitForCardPresentEvent;->INSTANCE:Lcom/stripe/paymentcollection/WaitForCardPresentEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method
