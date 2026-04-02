package com.stripe.proto.model.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.sun.jna.platform.linux.XAttr;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinNT;
import com.sun.jna.platform.win32.WinUser;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ReaderFeatureFlags.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\bU\n\u0002\u0018\u0002\n\u0002\b,\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 ³\u00012\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0006±\u0001²\u0001³\u0001BÑ\n\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0004\u0012\b\b\u0002\u0010 \u001a\u00020\u0004\u0012\b\b\u0002\u0010!\u001a\u00020\u0004\u0012\b\b\u0002\u0010\"\u001a\u00020\u0004\u0012\b\b\u0002\u0010#\u001a\u00020\u0004\u0012\b\b\u0002\u0010$\u001a\u00020\u0004\u0012\b\b\u0002\u0010%\u001a\u00020\u0004\u0012\b\b\u0002\u0010&\u001a\u00020\u0004\u0012\b\b\u0002\u0010'\u001a\u00020\u0004\u0012\b\b\u0002\u0010(\u001a\u00020\u0004\u0012\b\b\u0002\u0010)\u001a\u00020\u0004\u0012\b\b\u0002\u0010*\u001a\u00020\u0004\u0012\b\b\u0002\u0010+\u001a\u00020\u0004\u0012\b\b\u0002\u0010,\u001a\u00020\u0004\u0012\b\b\u0002\u0010-\u001a\u00020\u0004\u0012\b\b\u0002\u0010.\u001a\u00020\u0004\u0012\b\b\u0002\u0010/\u001a\u00020\u0004\u0012\b\b\u0002\u00100\u001a\u00020\u0004\u0012\b\b\u0002\u00101\u001a\u00020\u0004\u0012\b\b\u0002\u00102\u001a\u00020\u0004\u0012\b\b\u0002\u00103\u001a\u00020\u0004\u0012\b\b\u0002\u00104\u001a\u00020\u0004\u0012\b\b\u0002\u00105\u001a\u00020\u0004\u0012\b\b\u0002\u00106\u001a\u00020\u0004\u0012\b\b\u0002\u00107\u001a\u00020\u0004\u0012\b\b\u0002\u00108\u001a\u00020\u0004\u0012\b\b\u0002\u00109\u001a\u00020\u0004\u0012\b\b\u0002\u0010:\u001a\u00020\u0004\u0012\b\b\u0002\u0010;\u001a\u00020\u0004\u0012\b\b\u0002\u0010<\u001a\u00020\u0004\u0012\b\b\u0002\u0010=\u001a\u00020\u0004\u0012\b\b\u0002\u0010>\u001a\u00020\u0004\u0012\b\b\u0002\u0010?\u001a\u00020\u0004\u0012\b\b\u0002\u0010@\u001a\u00020\u0004\u0012\b\b\u0002\u0010A\u001a\u00020\t\u0012\b\b\u0002\u0010B\u001a\u00020\u0004\u0012\b\b\u0002\u0010C\u001a\u00020\u0004\u0012\b\b\u0002\u0010D\u001a\u00020\u0004\u0012\b\b\u0002\u0010E\u001a\u00020\u0004\u0012\b\b\u0002\u0010F\u001a\u00020\u0004\u0012\b\b\u0002\u0010G\u001a\u00020\u0004\u0012\b\b\u0002\u0010H\u001a\u00020\t\u0012\b\b\u0002\u0010I\u001a\u00020\t\u0012\b\b\u0002\u0010J\u001a\u00020\u0004\u0012\b\b\u0002\u0010K\u001a\u00020\t\u0012\b\b\u0002\u0010L\u001a\u00020\u0004\u0012\b\b\u0002\u0010M\u001a\u00020\u0004\u0012\b\b\u0002\u0010N\u001a\u00020\u0004\u0012\b\b\u0002\u0010O\u001a\u00020\u0004\u0012\b\b\u0002\u0010P\u001a\u00020\u0004\u0012\b\b\u0002\u0010Q\u001a\u00020\u0004\u0012\b\b\u0002\u0010R\u001a\u00020\u0004\u0012\b\b\u0002\u0010S\u001a\u00020\t\u0012\b\b\u0002\u0010T\u001a\u00020\u0004\u0012\b\b\u0002\u0010U\u001a\u00020\u0004\u0012\b\b\u0002\u0010V\u001a\u00020\t\u0012\b\b\u0002\u0010W\u001a\u00020\u0004\u0012\b\b\u0002\u0010X\u001a\u00020\t\u0012\b\b\u0002\u0010Y\u001a\u00020\u0004\u0012\b\b\u0002\u0010Z\u001a\u00020\u0004\u0012\b\b\u0002\u0010[\u001a\u00020\t\u0012\b\b\u0002\u0010\\\u001a\u00020\t\u0012\b\b\u0002\u0010]\u001a\u00020\u0004\u0012\n\b\u0002\u0010^\u001a\u0004\u0018\u00010_\u0012\b\b\u0002\u0010`\u001a\u00020\u0004\u0012\b\b\u0002\u0010a\u001a\u00020\u0004\u0012\b\b\u0002\u0010b\u001a\u00020\u0004\u0012\b\b\u0002\u0010c\u001a\u00020\u0004\u0012\b\b\u0002\u0010d\u001a\u00020\u0004\u0012\b\b\u0002\u0010e\u001a\u00020\u0004\u0012\b\b\u0002\u0010f\u001a\u00020\u0004\u0012\b\b\u0002\u0010g\u001a\u00020\u0004\u0012\b\b\u0002\u0010h\u001a\u00020\u0004\u0012\b\b\u0002\u0010i\u001a\u00020\u0004\u0012\b\b\u0002\u0010j\u001a\u00020\u0004\u0012\b\b\u0002\u0010k\u001a\u00020\u0004\u0012\b\b\u0002\u0010l\u001a\u00020\u0004\u0012\b\b\u0002\u0010m\u001a\u00020\u0004\u0012\b\b\u0002\u0010n\u001a\u00020\u0004\u0012\b\b\u0002\u0010o\u001a\u00020\u0004\u0012\b\b\u0002\u0010p\u001a\u00020\u0004\u0012\b\b\u0002\u0010q\u001a\u00020\u0004\u0012\b\b\u0002\u0010r\u001a\u00020\u0004\u0012\b\b\u0002\u0010s\u001a\u00020\u0004\u0012\b\b\u0002\u0010t\u001a\u00020\u0004\u0012\b\b\u0002\u0010u\u001a\u00020\u0004\u0012\b\b\u0002\u0010v\u001a\u00020\u0004\u0012\b\b\u0002\u0010w\u001a\u00020\u0004\u0012\b\b\u0002\u0010x\u001a\u00020\u0004\u0012\b\b\u0002\u0010y\u001a\u00020\u0004\u0012\b\b\u0002\u0010z\u001a\u00020\u0004\u0012\b\b\u0002\u0010{\u001a\u00020\u0004\u0012\b\b\u0002\u0010|\u001a\u00020\u0004\u0012\b\b\u0002\u0010}\u001a\u00020\u0004\u0012\b\b\u0002\u0010~\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u007f\u001a\u00020\u0004\u0012\t\b\u0002\u0010\u0080\u0001\u001a\u00020\u0004\u0012\t\b\u0002\u0010\u0081\u0001\u001a\u00020\u0004\u0012\t\b\u0002\u0010\u0082\u0001\u001a\u00020\t\u0012\t\b\u0002\u0010\u0083\u0001\u001a\u00020\u0004\u0012\t\b\u0002\u0010\u0084\u0001\u001a\u00020\u0004\u0012\t\b\u0002\u0010\u0085\u0001\u001a\u00020\u0004\u0012\t\b\u0002\u0010\u0086\u0001\u001a\u00020\u0004\u0012\t\b\u0002\u0010\u0087\u0001\u001a\u00020\u0004\u0012\t\b\u0002\u0010\u0088\u0001\u001a\u00020\t\u0012\t\b\u0002\u0010\u0089\u0001\u001a\u00020\t\u0012\t\b\u0002\u0010\u008a\u0001\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u008b\u0001\u001a\u00030\u008c\u0001¢\u0006\u0003\u0010\u008d\u0001JÒ\n\u0010¨\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u00042\b\b\u0002\u0010\u0017\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u00042\b\b\u0002\u0010\u0019\u001a\u00020\u00042\b\b\u0002\u0010\u001a\u001a\u00020\u00042\b\b\u0002\u0010\u001b\u001a\u00020\u00042\b\b\u0002\u0010\u001c\u001a\u00020\u00042\b\b\u0002\u0010\u001d\u001a\u00020\u00042\b\b\u0002\u0010\u001e\u001a\u00020\u00042\b\b\u0002\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u00042\b\b\u0002\u0010!\u001a\u00020\u00042\b\b\u0002\u0010\"\u001a\u00020\u00042\b\b\u0002\u0010#\u001a\u00020\u00042\b\b\u0002\u0010$\u001a\u00020\u00042\b\b\u0002\u0010%\u001a\u00020\u00042\b\b\u0002\u0010&\u001a\u00020\u00042\b\b\u0002\u0010'\u001a\u00020\u00042\b\b\u0002\u0010(\u001a\u00020\u00042\b\b\u0002\u0010)\u001a\u00020\u00042\b\b\u0002\u0010*\u001a\u00020\u00042\b\b\u0002\u0010+\u001a\u00020\u00042\b\b\u0002\u0010,\u001a\u00020\u00042\b\b\u0002\u0010-\u001a\u00020\u00042\b\b\u0002\u0010.\u001a\u00020\u00042\b\b\u0002\u0010/\u001a\u00020\u00042\b\b\u0002\u00100\u001a\u00020\u00042\b\b\u0002\u00101\u001a\u00020\u00042\b\b\u0002\u00102\u001a\u00020\u00042\b\b\u0002\u00103\u001a\u00020\u00042\b\b\u0002\u00104\u001a\u00020\u00042\b\b\u0002\u00105\u001a\u00020\u00042\b\b\u0002\u00106\u001a\u00020\u00042\b\b\u0002\u00107\u001a\u00020\u00042\b\b\u0002\u00108\u001a\u00020\u00042\b\b\u0002\u00109\u001a\u00020\u00042\b\b\u0002\u0010:\u001a\u00020\u00042\b\b\u0002\u0010;\u001a\u00020\u00042\b\b\u0002\u0010<\u001a\u00020\u00042\b\b\u0002\u0010=\u001a\u00020\u00042\b\b\u0002\u0010>\u001a\u00020\u00042\b\b\u0002\u0010?\u001a\u00020\u00042\b\b\u0002\u0010@\u001a\u00020\u00042\b\b\u0002\u0010A\u001a\u00020\t2\b\b\u0002\u0010B\u001a\u00020\u00042\b\b\u0002\u0010C\u001a\u00020\u00042\b\b\u0002\u0010D\u001a\u00020\u00042\b\b\u0002\u0010E\u001a\u00020\u00042\b\b\u0002\u0010F\u001a\u00020\u00042\b\b\u0002\u0010G\u001a\u00020\u00042\b\b\u0002\u0010H\u001a\u00020\t2\b\b\u0002\u0010I\u001a\u00020\t2\b\b\u0002\u0010J\u001a\u00020\u00042\b\b\u0002\u0010K\u001a\u00020\t2\b\b\u0002\u0010L\u001a\u00020\u00042\b\b\u0002\u0010M\u001a\u00020\u00042\b\b\u0002\u0010N\u001a\u00020\u00042\b\b\u0002\u0010O\u001a\u00020\u00042\b\b\u0002\u0010P\u001a\u00020\u00042\b\b\u0002\u0010Q\u001a\u00020\u00042\b\b\u0002\u0010R\u001a\u00020\u00042\b\b\u0002\u0010S\u001a\u00020\t2\b\b\u0002\u0010T\u001a\u00020\u00042\b\b\u0002\u0010U\u001a\u00020\u00042\b\b\u0002\u0010V\u001a\u00020\t2\b\b\u0002\u0010W\u001a\u00020\u00042\b\b\u0002\u0010X\u001a\u00020\t2\b\b\u0002\u0010Y\u001a\u00020\u00042\b\b\u0002\u0010Z\u001a\u00020\u00042\b\b\u0002\u0010[\u001a\u00020\t2\b\b\u0002\u0010\\\u001a\u00020\t2\b\b\u0002\u0010]\u001a\u00020\u00042\n\b\u0002\u0010^\u001a\u0004\u0018\u00010_2\b\b\u0002\u0010`\u001a\u00020\u00042\b\b\u0002\u0010a\u001a\u00020\u00042\b\b\u0002\u0010b\u001a\u00020\u00042\b\b\u0002\u0010c\u001a\u00020\u00042\b\b\u0002\u0010d\u001a\u00020\u00042\b\b\u0002\u0010e\u001a\u00020\u00042\b\b\u0002\u0010f\u001a\u00020\u00042\b\b\u0002\u0010g\u001a\u00020\u00042\b\b\u0002\u0010h\u001a\u00020\u00042\b\b\u0002\u0010i\u001a\u00020\u00042\b\b\u0002\u0010j\u001a\u00020\u00042\b\b\u0002\u0010k\u001a\u00020\u00042\b\b\u0002\u0010l\u001a\u00020\u00042\b\b\u0002\u0010m\u001a\u00020\u00042\b\b\u0002\u0010n\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u00042\b\b\u0002\u0010p\u001a\u00020\u00042\b\b\u0002\u0010q\u001a\u00020\u00042\b\b\u0002\u0010r\u001a\u00020\u00042\b\b\u0002\u0010s\u001a\u00020\u00042\b\b\u0002\u0010t\u001a\u00020\u00042\b\b\u0002\u0010u\u001a\u00020\u00042\b\b\u0002\u0010v\u001a\u00020\u00042\b\b\u0002\u0010w\u001a\u00020\u00042\b\b\u0002\u0010x\u001a\u00020\u00042\b\b\u0002\u0010y\u001a\u00020\u00042\b\b\u0002\u0010z\u001a\u00020\u00042\b\b\u0002\u0010{\u001a\u00020\u00042\b\b\u0002\u0010|\u001a\u00020\u00042\b\b\u0002\u0010}\u001a\u00020\u00042\b\b\u0002\u0010~\u001a\u00020\u00042\b\b\u0002\u0010\u007f\u001a\u00020\u00042\t\b\u0002\u0010\u0080\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0081\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0082\u0001\u001a\u00020\t2\t\b\u0002\u0010\u0083\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0084\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0085\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0086\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0087\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0088\u0001\u001a\u00020\t2\t\b\u0002\u0010\u0089\u0001\u001a\u00020\t2\t\b\u0002\u0010\u008a\u0001\u001a\u00020\u00042\n\b\u0002\u0010\u008b\u0001\u001a\u00030\u008c\u0001J\u0016\u0010©\u0001\u001a\u00020\u00042\n\u0010ª\u0001\u001a\u0005\u0018\u00010«\u0001H\u0096\u0002J\n\u0010¬\u0001\u001a\u00030\u00ad\u0001H\u0016J\t\u0010®\u0001\u001a\u00020\u0002H\u0016J\n\u0010¯\u0001\u001a\u00030°\u0001H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010^\u001a\u0004\u0018\u00010_8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0082\u0001\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010C\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0010\u0010%\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010?\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010H\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010I\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010S\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010'\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0081\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010G\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u0090\u0001\u0010\u008f\u0001R\u0010\u0010\u0018\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00103\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010L\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010)\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u0091\u0001\u0010\u008f\u0001R\u0010\u00106\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010v\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010j\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0083\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00108\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010Q\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010E\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u007f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010<\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010Z\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010u\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00107\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u0092\u0001\u0010\u008f\u0001R\u0018\u0010\u0013\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u0093\u0001\u0010\u008f\u0001R\u0010\u0010#\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010P\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010`\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010N\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010M\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010R\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010+\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u0094\u0001\u0010\u008f\u0001R\u0010\u0010g\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u0095\u0001\u0010\u008f\u0001R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010z\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010x\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010y\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010O\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010$\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u0096\u0001\u0010\u008f\u0001R\u0010\u0010i\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u0097\u0001\u0010\u008f\u0001R\u0018\u0010/\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u0098\u0001\u0010\u008f\u0001R\u0010\u0010:\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010W\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010s\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u001b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u0099\u0001\u0010\u008f\u0001R\u0010\u0010\u001f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010=\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010;\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u009a\u0001\u0010\u008f\u0001R\u0011\u0010\u0087\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010~\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010*\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u009b\u0001\u0010\u008f\u0001R\u0010\u0010p\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u009c\u0001\u0010\u008f\u0001R\u0010\u0010\u0016\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u009d\u0001\u0010\u008f\u0001R\u0018\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u009e\u0001\u0010\u008f\u0001R\u0010\u0010!\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010B\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0085\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u00102\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b\u009f\u0001\u0010\u008f\u0001R\u0010\u0010m\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010q\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b \u0001\u0010\u008f\u0001R\u0018\u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b¡\u0001\u0010\u008f\u0001R\u0010\u0010U\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00109\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b¢\u0001\u0010\u008f\u0001R\u0010\u00100\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010|\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0086\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0084\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010h\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010@\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010J\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00101\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010a\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0080\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010D\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010]\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010}\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b£\u0001\u0010\u008f\u0001R\u0018\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b¤\u0001\u0010\u008f\u0001R\u0010\u0010\u001d\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010T\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u008a\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010o\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010w\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010{\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010F\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010X\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010Y\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010l\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010d\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b¥\u0001\u0010\u008f\u0001R\u0010\u0010k\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010[\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\\\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010V\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010c\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b¦\u0001\u0010\u008f\u0001R\u0010\u00105\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u00104\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0000\u0012\u0006\b§\u0001\u0010\u008f\u0001R\u0011\u0010\u0088\u0001\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0089\u0001\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010A\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010K\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006´\u0001"}, d2 = {"Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;", "tipping_enabled", "", "allow_non_browser_env", "enable_server_driven", "enable_sdk_transaction_sessions", "server_driven_poll_interval_seconds", "", "enableBbposVersioning", "enableBbposDownloading", "enable_on_reader_tipping", "enable_updater_factory_reset_target", "enable_connect_and_collect", "enable_firmware_updates", "enable_firmware_update_retries", "enable_on_reader_cancel", "enable_roborabbit_ui_redesign", "enable_connect_and_collect_release", "enable_updater_new_oobe_flow", "enable_iot", "enable_offline_mode", "enable_wpe_updater_new_oobe_killswitch", "disable_iot", "enable_new_updates_flow", "rom_update_kill_switch", "enable_ktor_http_server", "wp3_tipping_android_sdk_circuit_breaker", "enable_usb_connectivity", "wp3_tipping_ios_sdk_circuit_breaker", "enable_logging_to_disk", "enable_moto_transactions", "enable_p2pe_apk_signing_verification", "disable_p2pe_apk_signing_verification", "enable_crash_button_in_diagnostics", "enable_gif_splash_and_lightmode", "bluetooth_auto_reconnect_android_sdk_enabled", "bluetooth_auto_reconnect_ios_sdk_enabled", "disable_bluetooth_auto_reconnect_android_sdk", "disable_bluetooth_auto_reconnect_ios_sdk", "enable_aod_default_app", "enable_new_bbpos_assets_update_components", "enable_eftpos_routing", "enable_new_payment_collection_android_sdk", "enable_client_logger_dispatcher", "tip_eligible_amounts_circuit_breaker", "enable_iot_client_respond_via_iot", "enable_sharing_device_report", "enable_traces_to_observability_data_endpoint", "enable_reader_bbpos_proxy", "disable_sdk_force_key_injection_when_unknown_keys", "shopify_display_reader_charge_summary", "shopify_bypass_reader_charge_summary", "enable_application_selection_in_quick_chip", "enable_configure_reboot_time_with_device_ui", "enable_armada_reauthentication_flow", "enable_send_bbpos_debug_logs_to_splunk", "enable_iot_hadr_polling", "enable_mainland_post_action_result", "enable_client_accessibility_app", "enable_mag_stripe_pin", "enable_bbpos_debug_logging", "configure_device_reboot_time_kill_switch", "enable_third_party_app_crash_logging", "third_party_app_crash_logging_poll_interval_millis", "enable_p2pe_rom_verification", "battery_charging_dialog_killswitch", "enable_ttpa_emv_config_from_backend", "enable_battery_charging_dialog", "internal_storage_quota_circuit_breaker", "disable_event_channel_on_reader", "device_plugged_in_but_not_charging_minimum_battery_discharge_percent", "device_plugged_in_but_not_charging_minimum_required_duration_millis", "enable_third_party_settings_intent_logging", "third_party_settings_intent_logging_poll_interval_millis", "enable_add_merchant_info_to_edge_headers", "enable_device_key_auto_recovery_flow", "enable_device_callback_key_recovery_flow", "enable_forms_on_sdk", "enable_customer_cancellation_feature", "enable_background_update_split_download_and_install", "enable_device_temperature_logging", "device_temperature_logging_poll_interval_millis", "enable_warden_release_serial_port", "enable_rom_sdk_kernel_logging", "rom_sdk_kernel_logging_poll_interval_millis", "enable_kill_for_memory_event_logging", "kill_for_memory_event_logging_poll_interval_millis", "migrate_iot_endpoint_to_iot_service", "enable_client_accessible_pin", "rom_install_timeout_non_seamless_updates_millis", "rom_install_timeout_seamless_updates_millis", "enable_ttpa_pin", "android_system_event_logging", "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;", "enable_dcc", "enable_ttp_auto_reconnect", "enable_iot_respond_via_rpc", "selection_form_toggles_below_submit_buttons", "offline_pair_unseen_reader_circuit_breaker", "enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests", "enable_battery_not_charging_events_logging", "enable_etna_cav_kfc_updates_check", "enable_terminal_surcharging", "enable_ios_deferred_logging", "enable_apps_on_devices_settings_menu", "offline_setup_intents_enabled", "mobile_wallet_on_offline_setup_intents_enabled", "enable_release_build_to_override_local_ip", "disable_predip", "enable_wpe_accessibility_volume_control", "enable_new_incremental_auth_ui", "enable_remove_duplicate_subtotal_string", "disable_force_pin_entry", "enable_ktlv_discrepancy_reporting_pcs", "enable_ktlv_pcs", "enable_collect_inputs_interstitial_screen", "enable_apps_on_devices_post_collect_merchant_ui", "enable_wpe_firmware_integrity_error_recovery", "enable_force_pin_entry_for_pi", "enable_force_pin_entry_for_si", "enable_fixed_iot_reconnect_delay", "enable_wpe_unauthenticated_device_integrity_error_recovery", "enable_spos_girocard", "enable_ttpa_run_attestation_before_pin", "enable_new_background_iot_state_machine", "enable_call_to_armada_for_boot_initialization", "enable_ttpa_eftpos_payments", "disable_card_inserted_from_prev_txn_check", "apps_on_devices_start_transaction_timeout_millis", "enable_apps_on_devices_start_transaction_timeout", "enable_start_reader_activity_on_state", "enable_process_messages_with_new_state_machine", "enable_standalone_app", "enable_mandatory_updates", "smart_reader_transaction_summary_delay_millis", "smart_reader_transaction_summary_unsuccessful_delay_millis", "enable_wifi_radio_s710_alpha", "unknownFields", "Lokio/ByteString;", "(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;)V", "getBattery_charging_dialog_killswitch$annotations", "()V", "getDisable_force_pin_entry$annotations", "getEnable_aod_default_app$annotations", "getEnable_connect_and_collect$annotations", "getEnable_connect_and_collect_release$annotations", "getEnable_eftpos_routing$annotations", "getEnable_firmware_update_retries$annotations", "getEnable_gif_splash_and_lightmode$annotations", "getEnable_iot$annotations", "getEnable_iot_client_respond_via_iot$annotations", "getEnable_ktor_http_server$annotations", "getEnable_mainland_post_action_result$annotations", "getEnable_new_bbpos_assets_update_components$annotations", "getEnable_new_updates_flow$annotations", "getEnable_on_reader_cancel$annotations", "getEnable_on_reader_tipping$annotations", "getEnable_reader_bbpos_proxy$annotations", "getEnable_remove_duplicate_subtotal_string$annotations", "getEnable_roborabbit_ui_redesign$annotations", "getEnable_server_driven$annotations", "getEnable_updater_factory_reset_target$annotations", "getEnable_updater_new_oobe_flow$annotations", "getOffline_pair_unseen_reader_circuit_breaker$annotations", "getServer_driven_poll_interval_seconds$annotations", "getShopify_display_reader_charge_summary$annotations", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "AndroidSystemEventLoggingConfig", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderFeatureFlags extends Message<ReaderFeatureFlags, Builder> {
    public static final ProtoAdapter<ReaderFeatureFlags> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "allowNonBrowserEnv", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final boolean allow_non_browser_env;

    @WireField(adapter = "com.stripe.proto.model.config.ReaderFeatureFlags$AndroidSystemEventLoggingConfig#ADAPTER", jsonName = "androidSystemEventLogging", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 89, tag = 94)
    public final AndroidSystemEventLoggingConfig android_system_event_logging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "appsOnDevicesStartTransactionTimeoutMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_INVALID_LEVEL, tag = 129)
    public final long apps_on_devices_start_transaction_timeout_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "batteryChargingDialogKillswitch", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 62, tag = 67)
    public final boolean battery_charging_dialog_killswitch;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "bluetoothAutoReconnectAndroidSdkEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 32, tag = 33)
    public final boolean bluetooth_auto_reconnect_android_sdk_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "bluetoothAutoReconnectIosSdkEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 33, tag = 34)
    public final boolean bluetooth_auto_reconnect_ios_sdk_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "configureDeviceRebootTimeKillSwitch", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 58, tag = 63)
    public final boolean configure_device_reboot_time_kill_switch;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "devicePluggedInButNotChargingMinimumBatteryDischargePercent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 67, tag = 72)
    public final long device_plugged_in_but_not_charging_minimum_battery_discharge_percent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "devicePluggedInButNotChargingMinimumRequiredDurationMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 68, tag = 73)
    public final long device_plugged_in_but_not_charging_minimum_required_duration_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "deviceTemperatureLoggingPollIntervalMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 78, tag = 83)
    public final long device_temperature_logging_poll_interval_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "disableBluetoothAutoReconnectAndroidSdk", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 34, tag = 35)
    public final boolean disable_bluetooth_auto_reconnect_android_sdk;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "disableBluetoothAutoReconnectIosSdk", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 35, tag = 36)
    public final boolean disable_bluetooth_auto_reconnect_ios_sdk;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "disableCardInsertedFromPrevTxnCheck", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 123, tag = 128)
    public final boolean disable_card_inserted_from_prev_txn_check;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "disableEventChannelOnReader", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 66, tag = 71)
    public final boolean disable_event_channel_on_reader;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "disableForcePinEntry", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 108, tag = WinError.ERROR_NO_MORE_SEARCH_HANDLES)
    public final boolean disable_force_pin_entry;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "disableIot", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 19, tag = 20)
    public final boolean disable_iot;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "disableP2peApkSigningVerification", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 29, tag = 30)
    public final boolean disable_p2pe_apk_signing_verification;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "disablePredip", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 104, tag = 109)
    public final boolean disable_predip;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "disableSdkForceKeyInjectionWhenUnknownKeys", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 46, tag = 51)
    public final boolean disable_sdk_force_key_injection_when_unknown_keys;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final boolean enableBbposDownloading;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final boolean enableBbposVersioning;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableAddMerchantInfoToEdgeHeaders", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 71, tag = 76)
    public final boolean enable_add_merchant_info_to_edge_headers;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableAodDefaultApp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 36, tag = 37)
    public final boolean enable_aod_default_app;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableApplicationSelectionInQuickChip", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 49, tag = 54)
    public final boolean enable_application_selection_in_quick_chip;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableAppsOnDevicesPostCollectMerchantUi", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 112, tag = WinError.ERROR_INVALID_CATEGORY)
    public final boolean enable_apps_on_devices_post_collect_merchant_ui;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableAppsOnDevicesSettingsMenu", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 100, tag = WinError.ERROR_SEM_OWNER_DIED)
    public final boolean enable_apps_on_devices_settings_menu;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableAppsOnDevicesStartTransactionTimeout", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_NO_VOLUME_LABEL, tag = 130)
    public final boolean enable_apps_on_devices_start_transaction_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableArmadaReauthenticationFlow", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 51, tag = 56)
    public final boolean enable_armada_reauthentication_flow;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableBackgroundUpdateSplitDownloadAndInstall", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 76, tag = 81)
    public final boolean enable_background_update_split_download_and_install;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableBatteryChargingDialog", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 64, tag = 69)
    public final boolean enable_battery_charging_dialog;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableBatteryNotChargingEventsLogging", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinNT.LANG_KASHMIRI, tag = 101)
    public final boolean enable_battery_not_charging_events_logging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableBbposDebugLogging", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 57, tag = 62)
    public final boolean enable_bbpos_debug_logging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableCallToArmadaForBootInitialization", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_SEM_TIMEOUT, tag = 126)
    public final boolean enable_call_to_armada_for_boot_initialization;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableClientAccessibilityApp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 55, tag = 60)
    public final boolean enable_client_accessibility_app;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableClientAccessiblePin", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_ALREADY_ASSIGNED, tag = 90)
    public final boolean enable_client_accessible_pin;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableClientLoggerDispatcher", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 40, tag = 45)
    public final boolean enable_client_logger_dispatcher;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableCollectInputsInterstitialScreen", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_BUFFER_OVERFLOW, tag = 116)
    public final boolean enable_collect_inputs_interstitial_screen;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableConfigureRebootTimeWithDeviceUi", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 50, tag = 55)
    public final boolean enable_configure_reboot_time_with_device_ui;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableConnectAndCollect", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final boolean enable_connect_and_collect;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableConnectAndCollectRelease", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final boolean enable_connect_and_collect_release;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableCrashButtonInDiagnostics", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 30, tag = 31)
    public final boolean enable_crash_button_in_diagnostics;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableCustomerCancellationFeature", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 75, tag = 80)
    public final boolean enable_customer_cancellation_feature;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableDcc", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 90, tag = XAttr.ENOTSUP)
    public final boolean enable_dcc;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableDeviceCallbackKeyRecoveryFlow", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 73, tag = 78)
    public final boolean enable_device_callback_key_recovery_flow;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableDeviceKeyAutoRecoveryFlow", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 72, tag = 77)
    public final boolean enable_device_key_auto_recovery_flow;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableDeviceTemperatureLogging", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 77, tag = 82)
    public final boolean enable_device_temperature_logging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableEftposRouting", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 38, tag = 39)
    public final boolean enable_eftpos_routing;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableEtnaCavKfcUpdatesCheck", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 97, tag = 102)
    public final boolean enable_etna_cav_kfc_updates_check;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableFirmwareUpdateRetries", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final boolean enable_firmware_update_retries;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableFirmwareUpdates", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final boolean enable_firmware_updates;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableFixedIotReconnectDelay", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 116, tag = WinError.ERROR_SEM_TIMEOUT)
    public final boolean enable_fixed_iot_reconnect_delay;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableForcePinEntryForPi", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_INVALID_TARGET_HANDLE, tag = WinError.ERROR_BAD_DRIVER_LEVEL)
    public final boolean enable_force_pin_entry_for_pi;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableForcePinEntryForSi", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 115, tag = WinError.ERROR_CALL_NOT_IMPLEMENTED)
    public final boolean enable_force_pin_entry_for_si;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableFormsOnSdk", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 74, tag = 79)
    public final boolean enable_forms_on_sdk;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableGifSplashAndLightmode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 31, tag = 32)
    public final boolean enable_gif_splash_and_lightmode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableIosDeferredLogging", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 99, tag = 104)
    public final boolean enable_ios_deferred_logging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableIot", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 16, tag = 17)
    public final boolean enable_iot;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableIotClientRespondViaIot", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 42, tag = 47)
    public final boolean enable_iot_client_respond_via_iot;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableIotHadrPolling", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 53, tag = 58)
    public final boolean enable_iot_hadr_polling;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableIotRespondViaRpc", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinUser.SM_CXPADDEDBORDER, tag = 97)
    public final boolean enable_iot_respond_via_rpc;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableJackrabbitRedactedPaymentMethodFingerprintForIosRequests", label = WireField.Label.OMIT_IDENTITY, schemaIndex = XAttr.ENOTSUP, tag = 100)
    public final boolean enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableKillForMemoryEventLogging", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 82, tag = 87)
    public final boolean enable_kill_for_memory_event_logging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableKtlvDiscrepancyReportingPcs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 109, tag = WinError.ERROR_INVALID_TARGET_HANDLE)
    public final boolean enable_ktlv_discrepancy_reporting_pcs;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableKtlvPcs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 110, tag = 115)
    public final boolean enable_ktlv_pcs;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableKtorHttpServer", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 22, tag = 23)
    public final boolean enable_ktor_http_server;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableLoggingToDisk", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 26, tag = 27)
    public final boolean enable_logging_to_disk;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableMagStripePin", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 56, tag = 61)
    public final boolean enable_mag_stripe_pin;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableMainlandPostActionResult", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 54, tag = 59)
    public final boolean enable_mainland_post_action_result;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableMandatoryUpdates", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 129, tag = WinError.ERROR_IS_JOINED)
    public final boolean enable_mandatory_updates;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableMotoTransactions", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 27, tag = 28)
    public final boolean enable_moto_transactions;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableNewBackgroundIotStateMachine", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_CALL_NOT_IMPLEMENTED, tag = WinError.ERROR_NO_VOLUME_LABEL)
    public final boolean enable_new_background_iot_state_machine;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableNewBbposAssetsUpdateComponents", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 37, tag = 38)
    public final boolean enable_new_bbpos_assets_update_components;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableNewIncrementalAuthUi", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_SEM_USER_LIMIT, tag = WinError.ERROR_BUFFER_OVERFLOW)
    public final boolean enable_new_incremental_auth_ui;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableNewPaymentCollectionAndroidSdk", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 39, tag = 40)
    public final boolean enable_new_payment_collection_android_sdk;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableNewUpdatesFlow", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 20, tag = 21)
    public final boolean enable_new_updates_flow;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableOfflineMode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 17, tag = 18)
    public final boolean enable_offline_mode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableOnReaderCancel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final boolean enable_on_reader_cancel;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableOnReaderTipping", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final boolean enable_on_reader_tipping;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableP2peApkSigningVerification", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 28, tag = 29)
    public final boolean enable_p2pe_apk_signing_verification;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableP2peRomVerification", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 61, tag = 66)
    public final boolean enable_p2pe_rom_verification;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableProcessMessagesWithNewStateMachine", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 127, tag = WinError.ERROR_SEEK_ON_DEVICE)
    public final boolean enable_process_messages_with_new_state_machine;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableReaderBbposProxy", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 45, tag = 50)
    public final boolean enable_reader_bbpos_proxy;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableReleaseBuildToOverrideLocalIp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 103, tag = 108)
    public final boolean enable_release_build_to_override_local_ip;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableRemoveDuplicateSubtotalString", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_DISK_CHANGE, tag = 112)
    public final boolean enable_remove_duplicate_subtotal_string;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableRoborabbitUiRedesign", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final boolean enable_roborabbit_ui_redesign;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableRomSdkKernelLogging", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 80, tag = WinError.ERROR_ALREADY_ASSIGNED)
    public final boolean enable_rom_sdk_kernel_logging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableSdkTransactionSessions", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final boolean enable_sdk_transaction_sessions;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableSendBbposDebugLogsToSplunk", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 52, tag = 57)
    public final boolean enable_send_bbpos_debug_logs_to_splunk;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableServerDriven", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final boolean enable_server_driven;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableSharingDeviceReport", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 43, tag = 48)
    public final boolean enable_sharing_device_report;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableSposGirocard", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_INVALID_VERIFY_SWITCH, tag = 123)
    public final boolean enable_spos_girocard;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableStandaloneApp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 128, tag = WinError.ERROR_IS_JOIN_TARGET)
    public final boolean enable_standalone_app;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableStartReaderActivityOnState", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 126, tag = 131)
    public final boolean enable_start_reader_activity_on_state;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableTerminalSurcharging", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 98, tag = 103)
    public final boolean enable_terminal_surcharging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableThirdPartyAppCrashLogging", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 59, tag = 64)
    public final boolean enable_third_party_app_crash_logging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableThirdPartySettingsIntentLogging", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 69, tag = 74)
    public final boolean enable_third_party_settings_intent_logging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableTracesToObservabilityDataEndpoint", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 44, tag = 49)
    public final boolean enable_traces_to_observability_data_endpoint;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableTtpAutoReconnect", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinUser.SM_MOUSEHORIZONTALWHEELPRESENT, tag = WinNT.LANG_KASHMIRI)
    public final boolean enable_ttp_auto_reconnect;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableTtpaEftposPayments", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 122, tag = 127)
    public final boolean enable_ttpa_eftpos_payments;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableTtpaEmvConfigFromBackend", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 63, tag = 68)
    public final boolean enable_ttpa_emv_config_from_backend;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableTtpaPin", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 88, tag = 93)
    public final boolean enable_ttpa_pin;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableTtpaRunAttestationBeforePin", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_BAD_DRIVER_LEVEL, tag = WinError.ERROR_INVALID_LEVEL)
    public final boolean enable_ttpa_run_attestation_before_pin;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableUpdaterFactoryResetTarget", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final boolean enable_updater_factory_reset_target;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableUpdaterNewOobeFlow", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 15, tag = 16)
    public final boolean enable_updater_new_oobe_flow;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableUsbConnectivity", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 24, tag = 25)
    public final boolean enable_usb_connectivity;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableWardenReleaseSerialPort", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 79, tag = 84)
    public final boolean enable_warden_release_serial_port;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableWifiRadioS710Alpha", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_SEEK_ON_DEVICE, tag = WinError.ERROR_NOT_SUBSTED)
    public final boolean enable_wifi_radio_s710_alpha;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableWpeAccessibilityVolumeControl", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_SEM_OWNER_DIED, tag = 110)
    public final boolean enable_wpe_accessibility_volume_control;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableWpeFirmwareIntegrityErrorRecovery", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_NO_MORE_SEARCH_HANDLES, tag = WinError.ERROR_INVALID_VERIFY_SWITCH)
    public final boolean enable_wpe_firmware_integrity_error_recovery;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableWpeUnauthenticatedDeviceIntegrityErrorRecovery", label = WireField.Label.OMIT_IDENTITY, schemaIndex = WinError.ERROR_INVALID_CATEGORY, tag = 122)
    public final boolean enable_wpe_unauthenticated_device_integrity_error_recovery;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableWpeUpdaterNewOobeKillswitch", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 18, tag = 19)
    public final boolean enable_wpe_updater_new_oobe_killswitch;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "internalStorageQuotaCircuitBreaker", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 65, tag = 70)
    public final boolean internal_storage_quota_circuit_breaker;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "killForMemoryEventLoggingPollIntervalMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 83, tag = 88)
    public final long kill_for_memory_event_logging_poll_interval_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "migrateIotEndpointToIotService", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 84, tag = 89)
    public final boolean migrate_iot_endpoint_to_iot_service;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "mobileWalletOnOfflineSetupIntentsEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 102, tag = WinError.ERROR_DISK_CHANGE)
    public final boolean mobile_wallet_on_offline_setup_intents_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "offlinePairUnseenReaderCircuitBreaker", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 94, tag = 99)
    public final boolean offline_pair_unseen_reader_circuit_breaker;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "offlineSetupIntentsEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 101, tag = WinError.ERROR_SEM_USER_LIMIT)
    public final boolean offline_setup_intents_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "romInstallTimeoutNonSeamlessUpdatesMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 86, tag = WinUser.SM_MOUSEHORIZONTALWHEELPRESENT)
    public final long rom_install_timeout_non_seamless_updates_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "romInstallTimeoutSeamlessUpdatesMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 87, tag = WinUser.SM_CXPADDEDBORDER)
    public final long rom_install_timeout_seamless_updates_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "romSdkKernelLoggingPollIntervalMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 81, tag = 86)
    public final long rom_sdk_kernel_logging_poll_interval_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "romUpdateKillSwitch", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 21, tag = 22)
    public final boolean rom_update_kill_switch;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "selectionFormTogglesBelowSubmitButtons", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 93, tag = 98)
    public final boolean selection_form_toggles_below_submit_buttons;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "serverDrivenPollIntervalSeconds", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final long server_driven_poll_interval_seconds;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "shopifyBypassReaderChargeSummary", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 48, tag = 53)
    public final boolean shopify_bypass_reader_charge_summary;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "shopifyDisplayReaderChargeSummary", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 47, tag = 52)
    public final boolean shopify_display_reader_charge_summary;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "smartReaderTransactionSummaryDelayMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 130, tag = WinError.ERROR_IS_SUBSTED)
    public final long smart_reader_transaction_summary_delay_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "smartReaderTransactionSummaryUnsuccessfulDelayMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 131, tag = 136)
    public final long smart_reader_transaction_summary_unsuccessful_delay_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "thirdPartyAppCrashLoggingPollIntervalMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 60, tag = 65)
    public final long third_party_app_crash_logging_poll_interval_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "thirdPartySettingsIntentLoggingPollIntervalMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 70, tag = 75)
    public final long third_party_settings_intent_logging_poll_interval_millis;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "tipEligibleAmountsCircuitBreaker", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 41, tag = 46)
    public final boolean tip_eligible_amounts_circuit_breaker;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "tippingEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final boolean tipping_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "wp3TippingAndroidSdkCircuitBreaker", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 23, tag = 24)
    public final boolean wp3_tipping_android_sdk_circuit_breaker;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "wp3TippingIosSdkCircuitBreaker", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 25, tag = 26)
    public final boolean wp3_tipping_ios_sdk_circuit_breaker;

    public ReaderFeatureFlags() {
        this(false, false, false, false, 0L, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 0L, false, false, false, false, false, false, 0L, 0L, false, 0L, false, false, false, false, false, false, false, 0L, false, false, 0L, false, 0L, false, false, 0L, 0L, false, null, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 0L, false, false, false, false, false, 0L, 0L, false, null, -1, -1, -1, -1, 63, null);
    }

    @Deprecated(message = "battery_charging_dialog_killswitch is deprecated")
    public static /* synthetic */ void getBattery_charging_dialog_killswitch$annotations() {
    }

    @Deprecated(message = "disable_force_pin_entry is deprecated")
    public static /* synthetic */ void getDisable_force_pin_entry$annotations() {
    }

    @Deprecated(message = "enable_aod_default_app is deprecated")
    public static /* synthetic */ void getEnable_aod_default_app$annotations() {
    }

    @Deprecated(message = "enable_connect_and_collect is deprecated")
    public static /* synthetic */ void getEnable_connect_and_collect$annotations() {
    }

    @Deprecated(message = "enable_connect_and_collect_release is deprecated")
    public static /* synthetic */ void getEnable_connect_and_collect_release$annotations() {
    }

    @Deprecated(message = "enable_eftpos_routing is deprecated")
    public static /* synthetic */ void getEnable_eftpos_routing$annotations() {
    }

    @Deprecated(message = "enable_firmware_update_retries is deprecated")
    public static /* synthetic */ void getEnable_firmware_update_retries$annotations() {
    }

    @Deprecated(message = "enable_gif_splash_and_lightmode is deprecated")
    public static /* synthetic */ void getEnable_gif_splash_and_lightmode$annotations() {
    }

    @Deprecated(message = "enable_iot is deprecated")
    public static /* synthetic */ void getEnable_iot$annotations() {
    }

    @Deprecated(message = "enable_iot_client_respond_via_iot is deprecated")
    public static /* synthetic */ void getEnable_iot_client_respond_via_iot$annotations() {
    }

    @Deprecated(message = "enable_ktor_http_server is deprecated")
    public static /* synthetic */ void getEnable_ktor_http_server$annotations() {
    }

    @Deprecated(message = "enable_mainland_post_action_result is deprecated")
    public static /* synthetic */ void getEnable_mainland_post_action_result$annotations() {
    }

    @Deprecated(message = "enable_new_bbpos_assets_update_components is deprecated")
    public static /* synthetic */ void getEnable_new_bbpos_assets_update_components$annotations() {
    }

    @Deprecated(message = "enable_new_updates_flow is deprecated")
    public static /* synthetic */ void getEnable_new_updates_flow$annotations() {
    }

    @Deprecated(message = "enable_on_reader_cancel is deprecated")
    public static /* synthetic */ void getEnable_on_reader_cancel$annotations() {
    }

    @Deprecated(message = "enable_on_reader_tipping is deprecated")
    public static /* synthetic */ void getEnable_on_reader_tipping$annotations() {
    }

    @Deprecated(message = "enable_reader_bbpos_proxy is deprecated")
    public static /* synthetic */ void getEnable_reader_bbpos_proxy$annotations() {
    }

    @Deprecated(message = "enable_remove_duplicate_subtotal_string is deprecated")
    public static /* synthetic */ void getEnable_remove_duplicate_subtotal_string$annotations() {
    }

    @Deprecated(message = "enable_roborabbit_ui_redesign is deprecated")
    public static /* synthetic */ void getEnable_roborabbit_ui_redesign$annotations() {
    }

    @Deprecated(message = "enable_server_driven is deprecated")
    public static /* synthetic */ void getEnable_server_driven$annotations() {
    }

    @Deprecated(message = "enable_updater_factory_reset_target is deprecated")
    public static /* synthetic */ void getEnable_updater_factory_reset_target$annotations() {
    }

    @Deprecated(message = "enable_updater_new_oobe_flow is deprecated")
    public static /* synthetic */ void getEnable_updater_new_oobe_flow$annotations() {
    }

    @Deprecated(message = "offline_pair_unseen_reader_circuit_breaker is deprecated")
    public static /* synthetic */ void getOffline_pair_unseen_reader_circuit_breaker$annotations() {
    }

    @Deprecated(message = "server_driven_poll_interval_seconds is deprecated")
    public static /* synthetic */ void getServer_driven_poll_interval_seconds$annotations() {
    }

    @Deprecated(message = "shopify_display_reader_charge_summary is deprecated")
    public static /* synthetic */ void getShopify_display_reader_charge_summary$annotations() {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ReaderFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, long j, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, boolean z26, boolean z27, boolean z28, boolean z29, boolean z30, boolean z31, boolean z32, boolean z33, boolean z34, boolean z35, boolean z36, boolean z37, boolean z38, boolean z39, boolean z40, boolean z41, boolean z42, boolean z43, boolean z44, boolean z45, boolean z46, boolean z47, boolean z48, boolean z49, boolean z50, boolean z51, boolean z52, boolean z53, boolean z54, boolean z55, boolean z56, boolean z57, boolean z58, boolean z59, long j2, boolean z60, boolean z61, boolean z62, boolean z63, boolean z64, boolean z65, long j3, long j4, boolean z66, long j5, boolean z67, boolean z68, boolean z69, boolean z70, boolean z71, boolean z72, boolean z73, long j6, boolean z74, boolean z75, long j7, boolean z76, long j8, boolean z77, boolean z78, long j9, long j10, boolean z79, AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig, boolean z80, boolean z81, boolean z82, boolean z83, boolean z84, boolean z85, boolean z86, boolean z87, boolean z88, boolean z89, boolean z90, boolean z91, boolean z92, boolean z93, boolean z94, boolean z95, boolean z96, boolean z97, boolean z98, boolean z99, boolean z100, boolean z101, boolean z102, boolean z103, boolean z104, boolean z105, boolean z106, boolean z107, boolean z108, boolean z109, boolean z110, boolean z111, boolean z112, boolean z113, long j11, boolean z114, boolean z115, boolean z116, boolean z117, boolean z118, long j12, long j13, boolean z119, ByteString byteString, int i, int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        boolean z120 = (i & 1) != 0 ? false : z;
        boolean z121 = (i & 2) != 0 ? false : z2;
        boolean z122 = (i & 4) != 0 ? false : z3;
        boolean z123 = (i & 8) != 0 ? false : z4;
        long j14 = (i & 16) != 0 ? 0L : j;
        boolean z124 = (i & 32) != 0 ? false : z5;
        boolean z125 = (i & 64) != 0 ? false : z6;
        boolean z126 = (i & 128) != 0 ? false : z7;
        boolean z127 = (i & 256) != 0 ? false : z8;
        boolean z128 = (i & 512) != 0 ? false : z9;
        boolean z129 = z120;
        boolean z130 = (i & 1024) != 0 ? false : z10;
        boolean z131 = (i & 2048) != 0 ? false : z11;
        boolean z132 = (i & 4096) != 0 ? false : z12;
        boolean z133 = (i & 8192) != 0 ? false : z13;
        boolean z134 = (i & 16384) != 0 ? false : z14;
        boolean z135 = (i & 32768) != 0 ? false : z15;
        boolean z136 = (i & 65536) != 0 ? false : z16;
        boolean z137 = (i & 131072) != 0 ? false : z17;
        boolean z138 = (i & 262144) != 0 ? false : z18;
        boolean z139 = (i & 524288) != 0 ? false : z19;
        boolean z140 = (i & 1048576) != 0 ? false : z20;
        boolean z141 = (i & 2097152) != 0 ? false : z21;
        boolean z142 = (i & 4194304) != 0 ? false : z22;
        boolean z143 = (i & 8388608) != 0 ? false : z23;
        boolean z144 = (i & 16777216) != 0 ? false : z24;
        boolean z145 = (i & 33554432) != 0 ? false : z25;
        boolean z146 = (i & 67108864) != 0 ? false : z26;
        boolean z147 = (i & 134217728) != 0 ? false : z27;
        boolean z148 = (i & 268435456) != 0 ? false : z28;
        boolean z149 = (i & 536870912) != 0 ? false : z29;
        boolean z150 = (i & 1073741824) != 0 ? false : z30;
        boolean z151 = (i & Integer.MIN_VALUE) != 0 ? false : z31;
        boolean z152 = (i2 & 1) != 0 ? false : z32;
        boolean z153 = (i2 & 2) != 0 ? false : z33;
        boolean z154 = (i2 & 4) != 0 ? false : z34;
        boolean z155 = (i2 & 8) != 0 ? false : z35;
        boolean z156 = (i2 & 16) != 0 ? false : z36;
        boolean z157 = (i2 & 32) != 0 ? false : z37;
        boolean z158 = (i2 & 64) != 0 ? false : z38;
        boolean z159 = z151;
        boolean z160 = (i2 & 128) != 0 ? false : z39;
        boolean z161 = (i2 & 256) != 0 ? false : z40;
        boolean z162 = (i2 & 512) != 0 ? false : z41;
        boolean z163 = (i2 & 1024) != 0 ? false : z42;
        boolean z164 = (i2 & 2048) != 0 ? false : z43;
        boolean z165 = (i2 & 4096) != 0 ? false : z44;
        boolean z166 = (i2 & 8192) != 0 ? false : z45;
        boolean z167 = (i2 & 16384) != 0 ? false : z46;
        boolean z168 = (i2 & 32768) != 0 ? false : z47;
        boolean z169 = (i2 & 65536) != 0 ? false : z48;
        boolean z170 = (i2 & 131072) != 0 ? false : z49;
        boolean z171 = (i2 & 262144) != 0 ? false : z50;
        boolean z172 = (i2 & 524288) != 0 ? false : z51;
        boolean z173 = (i2 & 1048576) != 0 ? false : z52;
        boolean z174 = (i2 & 2097152) != 0 ? false : z53;
        boolean z175 = (i2 & 4194304) != 0 ? false : z54;
        boolean z176 = (i2 & 8388608) != 0 ? false : z55;
        boolean z177 = (i2 & 16777216) != 0 ? false : z56;
        boolean z178 = (i2 & 33554432) != 0 ? false : z57;
        boolean z179 = (i2 & 67108864) != 0 ? false : z58;
        boolean z180 = (i2 & 134217728) != 0 ? false : z59;
        long j15 = (i2 & 268435456) != 0 ? 0L : j2;
        boolean z181 = (i2 & 536870912) != 0 ? false : z60;
        boolean z182 = (i2 & 1073741824) != 0 ? false : z61;
        boolean z183 = (i2 & Integer.MIN_VALUE) != 0 ? false : z62;
        boolean z184 = (i3 & 1) != 0 ? false : z63;
        boolean z185 = (i3 & 2) != 0 ? false : z64;
        boolean z186 = (i3 & 4) != 0 ? false : z65;
        long j16 = (i3 & 8) != 0 ? 0L : j3;
        long j17 = (i3 & 16) != 0 ? 0L : j4;
        boolean z187 = (i3 & 32) != 0 ? false : z66;
        long j18 = (i3 & 64) != 0 ? 0L : j5;
        boolean z188 = z167;
        boolean z189 = (i3 & 128) != 0 ? false : z67;
        boolean z190 = (i3 & 256) != 0 ? false : z68;
        boolean z191 = (i3 & 512) != 0 ? false : z69;
        boolean z192 = (i3 & 1024) != 0 ? false : z70;
        boolean z193 = (i3 & 2048) != 0 ? false : z71;
        boolean z194 = (i3 & 4096) != 0 ? false : z72;
        boolean z195 = (i3 & 8192) != 0 ? false : z73;
        long j19 = (i3 & 16384) != 0 ? 0L : j6;
        boolean z196 = (i3 & 32768) != 0 ? false : z74;
        boolean z197 = (i3 & 65536) != 0 ? false : z75;
        long j20 = (i3 & 131072) != 0 ? 0L : j7;
        boolean z198 = (i3 & 262144) != 0 ? false : z76;
        long j21 = (i3 & 524288) != 0 ? 0L : j8;
        boolean z199 = (i3 & 1048576) != 0 ? false : z77;
        boolean z200 = (i3 & 2097152) != 0 ? false : z78;
        long j22 = (i3 & 4194304) != 0 ? 0L : j9;
        long j23 = (i3 & 8388608) != 0 ? 0L : j10;
        boolean z201 = (i3 & 16777216) != 0 ? false : z79;
        AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig2 = (i3 & 33554432) != 0 ? null : androidSystemEventLoggingConfig;
        boolean z202 = (i3 & 67108864) != 0 ? false : z80;
        boolean z203 = (i3 & 134217728) != 0 ? false : z81;
        boolean z204 = (i3 & 268435456) != 0 ? false : z82;
        boolean z205 = (i3 & 536870912) != 0 ? false : z83;
        boolean z206 = (i3 & 1073741824) != 0 ? false : z84;
        boolean z207 = (i3 & Integer.MIN_VALUE) != 0 ? false : z85;
        boolean z208 = (i4 & 1) != 0 ? false : z86;
        boolean z209 = (i4 & 2) != 0 ? false : z87;
        boolean z210 = (i4 & 4) != 0 ? false : z88;
        boolean z211 = (i4 & 8) != 0 ? false : z89;
        boolean z212 = (i4 & 16) != 0 ? false : z90;
        boolean z213 = (i4 & 32) != 0 ? false : z91;
        boolean z214 = (i4 & 64) != 0 ? false : z92;
        boolean z215 = z196;
        boolean z216 = (i4 & 128) != 0 ? false : z93;
        boolean z217 = z126;
        boolean z218 = z124;
        boolean z219 = z127;
        boolean z220 = z128;
        boolean z221 = z125;
        boolean z222 = z121;
        boolean z223 = z122;
        boolean z224 = z123;
        long j24 = j14;
        this(z129, z222, z223, z224, j24, z218, z221, z217, z219, z220, z130, z131, z132, z133, z134, z135, z136, z137, z138, z139, z140, z141, z142, z143, z144, z145, z146, z147, z148, z149, z150, z159, z152, z153, z154, z155, z156, z157, z158, z160, z161, z162, z163, z164, z165, z166, z188, z168, z169, z170, z171, z172, z173, z174, z175, z176, z177, z178, z179, z180, j15, z181, z182, z183, z184, z185, z186, j16, j17, z187, j18, z189, z190, z191, z192, z193, z194, z195, j19, z215, z197, j20, z198, j21, z199, z200, j22, j23, z201, androidSystemEventLoggingConfig2, z202, z203, z204, z205, z206, z207, z208, z209, z210, z211, z212, z213, z214, z216, (i4 & 256) != 0 ? false : z94, (i4 & 512) != 0 ? false : z95, (i4 & 1024) != 0 ? false : z96, (i4 & 2048) != 0 ? false : z97, (i4 & 4096) != 0 ? false : z98, (i4 & 8192) != 0 ? false : z99, (i4 & 16384) != 0 ? false : z100, (i4 & 32768) != 0 ? false : z101, (i4 & 65536) != 0 ? false : z102, (i4 & 131072) != 0 ? false : z103, (i4 & 262144) != 0 ? false : z104, (i4 & 524288) != 0 ? false : z105, (i4 & 1048576) != 0 ? false : z106, (i4 & 2097152) != 0 ? false : z107, (i4 & 4194304) != 0 ? false : z108, (i4 & 8388608) != 0 ? false : z109, (i4 & 16777216) != 0 ? false : z110, (i4 & 33554432) != 0 ? false : z111, (i4 & 67108864) != 0 ? false : z112, (i4 & 134217728) != 0 ? false : z113, (i4 & 268435456) != 0 ? 0L : j11, (i4 & 536870912) != 0 ? false : z114, (i4 & 1073741824) != 0 ? false : z115, (i4 & Integer.MIN_VALUE) != 0 ? false : z116, (i5 & 1) != 0 ? false : z117, (i5 & 2) != 0 ? false : z118, (i5 & 4) != 0 ? 0L : j12, (i5 & 8) != 0 ? 0L : j13, (i5 & 16) != 0 ? false : z119, (i5 & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, long j, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, boolean z26, boolean z27, boolean z28, boolean z29, boolean z30, boolean z31, boolean z32, boolean z33, boolean z34, boolean z35, boolean z36, boolean z37, boolean z38, boolean z39, boolean z40, boolean z41, boolean z42, boolean z43, boolean z44, boolean z45, boolean z46, boolean z47, boolean z48, boolean z49, boolean z50, boolean z51, boolean z52, boolean z53, boolean z54, boolean z55, boolean z56, boolean z57, boolean z58, boolean z59, long j2, boolean z60, boolean z61, boolean z62, boolean z63, boolean z64, boolean z65, long j3, long j4, boolean z66, long j5, boolean z67, boolean z68, boolean z69, boolean z70, boolean z71, boolean z72, boolean z73, long j6, boolean z74, boolean z75, long j7, boolean z76, long j8, boolean z77, boolean z78, long j9, long j10, boolean z79, AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig, boolean z80, boolean z81, boolean z82, boolean z83, boolean z84, boolean z85, boolean z86, boolean z87, boolean z88, boolean z89, boolean z90, boolean z91, boolean z92, boolean z93, boolean z94, boolean z95, boolean z96, boolean z97, boolean z98, boolean z99, boolean z100, boolean z101, boolean z102, boolean z103, boolean z104, boolean z105, boolean z106, boolean z107, boolean z108, boolean z109, boolean z110, boolean z111, boolean z112, boolean z113, long j11, boolean z114, boolean z115, boolean z116, boolean z117, boolean z118, long j12, long j13, boolean z119, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.tipping_enabled = z;
        this.allow_non_browser_env = z2;
        this.enable_server_driven = z3;
        this.enable_sdk_transaction_sessions = z4;
        this.server_driven_poll_interval_seconds = j;
        this.enableBbposVersioning = z5;
        this.enableBbposDownloading = z6;
        this.enable_on_reader_tipping = z7;
        this.enable_updater_factory_reset_target = z8;
        this.enable_connect_and_collect = z9;
        this.enable_firmware_updates = z10;
        this.enable_firmware_update_retries = z11;
        this.enable_on_reader_cancel = z12;
        this.enable_roborabbit_ui_redesign = z13;
        this.enable_connect_and_collect_release = z14;
        this.enable_updater_new_oobe_flow = z15;
        this.enable_iot = z16;
        this.enable_offline_mode = z17;
        this.enable_wpe_updater_new_oobe_killswitch = z18;
        this.disable_iot = z19;
        this.enable_new_updates_flow = z20;
        this.rom_update_kill_switch = z21;
        this.enable_ktor_http_server = z22;
        this.wp3_tipping_android_sdk_circuit_breaker = z23;
        this.enable_usb_connectivity = z24;
        this.wp3_tipping_ios_sdk_circuit_breaker = z25;
        this.enable_logging_to_disk = z26;
        this.enable_moto_transactions = z27;
        this.enable_p2pe_apk_signing_verification = z28;
        this.disable_p2pe_apk_signing_verification = z29;
        this.enable_crash_button_in_diagnostics = z30;
        this.enable_gif_splash_and_lightmode = z31;
        this.bluetooth_auto_reconnect_android_sdk_enabled = z32;
        this.bluetooth_auto_reconnect_ios_sdk_enabled = z33;
        this.disable_bluetooth_auto_reconnect_android_sdk = z34;
        this.disable_bluetooth_auto_reconnect_ios_sdk = z35;
        this.enable_aod_default_app = z36;
        this.enable_new_bbpos_assets_update_components = z37;
        this.enable_eftpos_routing = z38;
        this.enable_new_payment_collection_android_sdk = z39;
        this.enable_client_logger_dispatcher = z40;
        this.tip_eligible_amounts_circuit_breaker = z41;
        this.enable_iot_client_respond_via_iot = z42;
        this.enable_sharing_device_report = z43;
        this.enable_traces_to_observability_data_endpoint = z44;
        this.enable_reader_bbpos_proxy = z45;
        this.disable_sdk_force_key_injection_when_unknown_keys = z46;
        this.shopify_display_reader_charge_summary = z47;
        this.shopify_bypass_reader_charge_summary = z48;
        this.enable_application_selection_in_quick_chip = z49;
        this.enable_configure_reboot_time_with_device_ui = z50;
        this.enable_armada_reauthentication_flow = z51;
        this.enable_send_bbpos_debug_logs_to_splunk = z52;
        this.enable_iot_hadr_polling = z53;
        this.enable_mainland_post_action_result = z54;
        this.enable_client_accessibility_app = z55;
        this.enable_mag_stripe_pin = z56;
        this.enable_bbpos_debug_logging = z57;
        this.configure_device_reboot_time_kill_switch = z58;
        this.enable_third_party_app_crash_logging = z59;
        this.third_party_app_crash_logging_poll_interval_millis = j2;
        this.enable_p2pe_rom_verification = z60;
        this.battery_charging_dialog_killswitch = z61;
        this.enable_ttpa_emv_config_from_backend = z62;
        this.enable_battery_charging_dialog = z63;
        this.internal_storage_quota_circuit_breaker = z64;
        this.disable_event_channel_on_reader = z65;
        this.device_plugged_in_but_not_charging_minimum_battery_discharge_percent = j3;
        this.device_plugged_in_but_not_charging_minimum_required_duration_millis = j4;
        this.enable_third_party_settings_intent_logging = z66;
        this.third_party_settings_intent_logging_poll_interval_millis = j5;
        this.enable_add_merchant_info_to_edge_headers = z67;
        this.enable_device_key_auto_recovery_flow = z68;
        this.enable_device_callback_key_recovery_flow = z69;
        this.enable_forms_on_sdk = z70;
        this.enable_customer_cancellation_feature = z71;
        this.enable_background_update_split_download_and_install = z72;
        this.enable_device_temperature_logging = z73;
        this.device_temperature_logging_poll_interval_millis = j6;
        this.enable_warden_release_serial_port = z74;
        this.enable_rom_sdk_kernel_logging = z75;
        this.rom_sdk_kernel_logging_poll_interval_millis = j7;
        this.enable_kill_for_memory_event_logging = z76;
        this.kill_for_memory_event_logging_poll_interval_millis = j8;
        this.migrate_iot_endpoint_to_iot_service = z77;
        this.enable_client_accessible_pin = z78;
        this.rom_install_timeout_non_seamless_updates_millis = j9;
        this.rom_install_timeout_seamless_updates_millis = j10;
        this.enable_ttpa_pin = z79;
        this.android_system_event_logging = androidSystemEventLoggingConfig;
        this.enable_dcc = z80;
        this.enable_ttp_auto_reconnect = z81;
        this.enable_iot_respond_via_rpc = z82;
        this.selection_form_toggles_below_submit_buttons = z83;
        this.offline_pair_unseen_reader_circuit_breaker = z84;
        this.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests = z85;
        this.enable_battery_not_charging_events_logging = z86;
        this.enable_etna_cav_kfc_updates_check = z87;
        this.enable_terminal_surcharging = z88;
        this.enable_ios_deferred_logging = z89;
        this.enable_apps_on_devices_settings_menu = z90;
        this.offline_setup_intents_enabled = z91;
        this.mobile_wallet_on_offline_setup_intents_enabled = z92;
        this.enable_release_build_to_override_local_ip = z93;
        this.disable_predip = z94;
        this.enable_wpe_accessibility_volume_control = z95;
        this.enable_new_incremental_auth_ui = z96;
        this.enable_remove_duplicate_subtotal_string = z97;
        this.disable_force_pin_entry = z98;
        this.enable_ktlv_discrepancy_reporting_pcs = z99;
        this.enable_ktlv_pcs = z100;
        this.enable_collect_inputs_interstitial_screen = z101;
        this.enable_apps_on_devices_post_collect_merchant_ui = z102;
        this.enable_wpe_firmware_integrity_error_recovery = z103;
        this.enable_force_pin_entry_for_pi = z104;
        this.enable_force_pin_entry_for_si = z105;
        this.enable_fixed_iot_reconnect_delay = z106;
        this.enable_wpe_unauthenticated_device_integrity_error_recovery = z107;
        this.enable_spos_girocard = z108;
        this.enable_ttpa_run_attestation_before_pin = z109;
        this.enable_new_background_iot_state_machine = z110;
        this.enable_call_to_armada_for_boot_initialization = z111;
        this.enable_ttpa_eftpos_payments = z112;
        this.disable_card_inserted_from_prev_txn_check = z113;
        this.apps_on_devices_start_transaction_timeout_millis = j11;
        this.enable_apps_on_devices_start_transaction_timeout = z114;
        this.enable_start_reader_activity_on_state = z115;
        this.enable_process_messages_with_new_state_machine = z116;
        this.enable_standalone_app = z117;
        this.enable_mandatory_updates = z118;
        this.smart_reader_transaction_summary_delay_millis = j12;
        this.smart_reader_transaction_summary_unsuccessful_delay_millis = j13;
        this.enable_wifi_radio_s710_alpha = z119;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.tipping_enabled = this.tipping_enabled;
        builder.allow_non_browser_env = this.allow_non_browser_env;
        builder.enable_server_driven = this.enable_server_driven;
        builder.enable_sdk_transaction_sessions = this.enable_sdk_transaction_sessions;
        builder.server_driven_poll_interval_seconds = this.server_driven_poll_interval_seconds;
        builder.enableBbposVersioning = this.enableBbposVersioning;
        builder.enableBbposDownloading = this.enableBbposDownloading;
        builder.enable_on_reader_tipping = this.enable_on_reader_tipping;
        builder.enable_updater_factory_reset_target = this.enable_updater_factory_reset_target;
        builder.enable_connect_and_collect = this.enable_connect_and_collect;
        builder.enable_firmware_updates = this.enable_firmware_updates;
        builder.enable_firmware_update_retries = this.enable_firmware_update_retries;
        builder.enable_on_reader_cancel = this.enable_on_reader_cancel;
        builder.enable_roborabbit_ui_redesign = this.enable_roborabbit_ui_redesign;
        builder.enable_connect_and_collect_release = this.enable_connect_and_collect_release;
        builder.enable_updater_new_oobe_flow = this.enable_updater_new_oobe_flow;
        builder.enable_iot = this.enable_iot;
        builder.enable_offline_mode = this.enable_offline_mode;
        builder.enable_wpe_updater_new_oobe_killswitch = this.enable_wpe_updater_new_oobe_killswitch;
        builder.disable_iot = this.disable_iot;
        builder.enable_new_updates_flow = this.enable_new_updates_flow;
        builder.rom_update_kill_switch = this.rom_update_kill_switch;
        builder.enable_ktor_http_server = this.enable_ktor_http_server;
        builder.wp3_tipping_android_sdk_circuit_breaker = this.wp3_tipping_android_sdk_circuit_breaker;
        builder.enable_usb_connectivity = this.enable_usb_connectivity;
        builder.wp3_tipping_ios_sdk_circuit_breaker = this.wp3_tipping_ios_sdk_circuit_breaker;
        builder.enable_logging_to_disk = this.enable_logging_to_disk;
        builder.enable_moto_transactions = this.enable_moto_transactions;
        builder.enable_p2pe_apk_signing_verification = this.enable_p2pe_apk_signing_verification;
        builder.disable_p2pe_apk_signing_verification = this.disable_p2pe_apk_signing_verification;
        builder.enable_crash_button_in_diagnostics = this.enable_crash_button_in_diagnostics;
        builder.enable_gif_splash_and_lightmode = this.enable_gif_splash_and_lightmode;
        builder.bluetooth_auto_reconnect_android_sdk_enabled = this.bluetooth_auto_reconnect_android_sdk_enabled;
        builder.bluetooth_auto_reconnect_ios_sdk_enabled = this.bluetooth_auto_reconnect_ios_sdk_enabled;
        builder.disable_bluetooth_auto_reconnect_android_sdk = this.disable_bluetooth_auto_reconnect_android_sdk;
        builder.disable_bluetooth_auto_reconnect_ios_sdk = this.disable_bluetooth_auto_reconnect_ios_sdk;
        builder.enable_aod_default_app = this.enable_aod_default_app;
        builder.enable_new_bbpos_assets_update_components = this.enable_new_bbpos_assets_update_components;
        builder.enable_eftpos_routing = this.enable_eftpos_routing;
        builder.enable_new_payment_collection_android_sdk = this.enable_new_payment_collection_android_sdk;
        builder.enable_client_logger_dispatcher = this.enable_client_logger_dispatcher;
        builder.tip_eligible_amounts_circuit_breaker = this.tip_eligible_amounts_circuit_breaker;
        builder.enable_iot_client_respond_via_iot = this.enable_iot_client_respond_via_iot;
        builder.enable_sharing_device_report = this.enable_sharing_device_report;
        builder.enable_traces_to_observability_data_endpoint = this.enable_traces_to_observability_data_endpoint;
        builder.enable_reader_bbpos_proxy = this.enable_reader_bbpos_proxy;
        builder.disable_sdk_force_key_injection_when_unknown_keys = this.disable_sdk_force_key_injection_when_unknown_keys;
        builder.shopify_display_reader_charge_summary = this.shopify_display_reader_charge_summary;
        builder.shopify_bypass_reader_charge_summary = this.shopify_bypass_reader_charge_summary;
        builder.enable_application_selection_in_quick_chip = this.enable_application_selection_in_quick_chip;
        builder.enable_configure_reboot_time_with_device_ui = this.enable_configure_reboot_time_with_device_ui;
        builder.enable_armada_reauthentication_flow = this.enable_armada_reauthentication_flow;
        builder.enable_send_bbpos_debug_logs_to_splunk = this.enable_send_bbpos_debug_logs_to_splunk;
        builder.enable_iot_hadr_polling = this.enable_iot_hadr_polling;
        builder.enable_mainland_post_action_result = this.enable_mainland_post_action_result;
        builder.enable_client_accessibility_app = this.enable_client_accessibility_app;
        builder.enable_mag_stripe_pin = this.enable_mag_stripe_pin;
        builder.enable_bbpos_debug_logging = this.enable_bbpos_debug_logging;
        builder.configure_device_reboot_time_kill_switch = this.configure_device_reboot_time_kill_switch;
        builder.enable_third_party_app_crash_logging = this.enable_third_party_app_crash_logging;
        builder.third_party_app_crash_logging_poll_interval_millis = this.third_party_app_crash_logging_poll_interval_millis;
        builder.enable_p2pe_rom_verification = this.enable_p2pe_rom_verification;
        builder.battery_charging_dialog_killswitch = this.battery_charging_dialog_killswitch;
        builder.enable_ttpa_emv_config_from_backend = this.enable_ttpa_emv_config_from_backend;
        builder.enable_battery_charging_dialog = this.enable_battery_charging_dialog;
        builder.internal_storage_quota_circuit_breaker = this.internal_storage_quota_circuit_breaker;
        builder.disable_event_channel_on_reader = this.disable_event_channel_on_reader;
        builder.device_plugged_in_but_not_charging_minimum_battery_discharge_percent = this.device_plugged_in_but_not_charging_minimum_battery_discharge_percent;
        builder.device_plugged_in_but_not_charging_minimum_required_duration_millis = this.device_plugged_in_but_not_charging_minimum_required_duration_millis;
        builder.enable_third_party_settings_intent_logging = this.enable_third_party_settings_intent_logging;
        builder.third_party_settings_intent_logging_poll_interval_millis = this.third_party_settings_intent_logging_poll_interval_millis;
        builder.enable_add_merchant_info_to_edge_headers = this.enable_add_merchant_info_to_edge_headers;
        builder.enable_device_key_auto_recovery_flow = this.enable_device_key_auto_recovery_flow;
        builder.enable_device_callback_key_recovery_flow = this.enable_device_callback_key_recovery_flow;
        builder.enable_forms_on_sdk = this.enable_forms_on_sdk;
        builder.enable_customer_cancellation_feature = this.enable_customer_cancellation_feature;
        builder.enable_background_update_split_download_and_install = this.enable_background_update_split_download_and_install;
        builder.enable_device_temperature_logging = this.enable_device_temperature_logging;
        builder.device_temperature_logging_poll_interval_millis = this.device_temperature_logging_poll_interval_millis;
        builder.enable_warden_release_serial_port = this.enable_warden_release_serial_port;
        builder.enable_rom_sdk_kernel_logging = this.enable_rom_sdk_kernel_logging;
        builder.rom_sdk_kernel_logging_poll_interval_millis = this.rom_sdk_kernel_logging_poll_interval_millis;
        builder.enable_kill_for_memory_event_logging = this.enable_kill_for_memory_event_logging;
        builder.kill_for_memory_event_logging_poll_interval_millis = this.kill_for_memory_event_logging_poll_interval_millis;
        builder.migrate_iot_endpoint_to_iot_service = this.migrate_iot_endpoint_to_iot_service;
        builder.enable_client_accessible_pin = this.enable_client_accessible_pin;
        builder.rom_install_timeout_non_seamless_updates_millis = this.rom_install_timeout_non_seamless_updates_millis;
        builder.rom_install_timeout_seamless_updates_millis = this.rom_install_timeout_seamless_updates_millis;
        builder.enable_ttpa_pin = this.enable_ttpa_pin;
        builder.android_system_event_logging = this.android_system_event_logging;
        builder.enable_dcc = this.enable_dcc;
        builder.enable_ttp_auto_reconnect = this.enable_ttp_auto_reconnect;
        builder.enable_iot_respond_via_rpc = this.enable_iot_respond_via_rpc;
        builder.selection_form_toggles_below_submit_buttons = this.selection_form_toggles_below_submit_buttons;
        builder.offline_pair_unseen_reader_circuit_breaker = this.offline_pair_unseen_reader_circuit_breaker;
        builder.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests = this.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests;
        builder.enable_battery_not_charging_events_logging = this.enable_battery_not_charging_events_logging;
        builder.enable_etna_cav_kfc_updates_check = this.enable_etna_cav_kfc_updates_check;
        builder.enable_terminal_surcharging = this.enable_terminal_surcharging;
        builder.enable_ios_deferred_logging = this.enable_ios_deferred_logging;
        builder.enable_apps_on_devices_settings_menu = this.enable_apps_on_devices_settings_menu;
        builder.offline_setup_intents_enabled = this.offline_setup_intents_enabled;
        builder.mobile_wallet_on_offline_setup_intents_enabled = this.mobile_wallet_on_offline_setup_intents_enabled;
        builder.enable_release_build_to_override_local_ip = this.enable_release_build_to_override_local_ip;
        builder.disable_predip = this.disable_predip;
        builder.enable_wpe_accessibility_volume_control = this.enable_wpe_accessibility_volume_control;
        builder.enable_new_incremental_auth_ui = this.enable_new_incremental_auth_ui;
        builder.enable_remove_duplicate_subtotal_string = this.enable_remove_duplicate_subtotal_string;
        builder.disable_force_pin_entry = this.disable_force_pin_entry;
        builder.enable_ktlv_discrepancy_reporting_pcs = this.enable_ktlv_discrepancy_reporting_pcs;
        builder.enable_ktlv_pcs = this.enable_ktlv_pcs;
        builder.enable_collect_inputs_interstitial_screen = this.enable_collect_inputs_interstitial_screen;
        builder.enable_apps_on_devices_post_collect_merchant_ui = this.enable_apps_on_devices_post_collect_merchant_ui;
        builder.enable_wpe_firmware_integrity_error_recovery = this.enable_wpe_firmware_integrity_error_recovery;
        builder.enable_force_pin_entry_for_pi = this.enable_force_pin_entry_for_pi;
        builder.enable_force_pin_entry_for_si = this.enable_force_pin_entry_for_si;
        builder.enable_fixed_iot_reconnect_delay = this.enable_fixed_iot_reconnect_delay;
        builder.enable_wpe_unauthenticated_device_integrity_error_recovery = this.enable_wpe_unauthenticated_device_integrity_error_recovery;
        builder.enable_spos_girocard = this.enable_spos_girocard;
        builder.enable_ttpa_run_attestation_before_pin = this.enable_ttpa_run_attestation_before_pin;
        builder.enable_new_background_iot_state_machine = this.enable_new_background_iot_state_machine;
        builder.enable_call_to_armada_for_boot_initialization = this.enable_call_to_armada_for_boot_initialization;
        builder.enable_ttpa_eftpos_payments = this.enable_ttpa_eftpos_payments;
        builder.disable_card_inserted_from_prev_txn_check = this.disable_card_inserted_from_prev_txn_check;
        builder.apps_on_devices_start_transaction_timeout_millis = this.apps_on_devices_start_transaction_timeout_millis;
        builder.enable_apps_on_devices_start_transaction_timeout = this.enable_apps_on_devices_start_transaction_timeout;
        builder.enable_start_reader_activity_on_state = this.enable_start_reader_activity_on_state;
        builder.enable_process_messages_with_new_state_machine = this.enable_process_messages_with_new_state_machine;
        builder.enable_standalone_app = this.enable_standalone_app;
        builder.enable_mandatory_updates = this.enable_mandatory_updates;
        builder.smart_reader_transaction_summary_delay_millis = this.smart_reader_transaction_summary_delay_millis;
        builder.smart_reader_transaction_summary_unsuccessful_delay_millis = this.smart_reader_transaction_summary_unsuccessful_delay_millis;
        builder.enable_wifi_radio_s710_alpha = this.enable_wifi_radio_s710_alpha;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReaderFeatureFlags)) {
            return false;
        }
        ReaderFeatureFlags readerFeatureFlags = (ReaderFeatureFlags) other;
        return Intrinsics.areEqual(unknownFields(), readerFeatureFlags.unknownFields()) && this.tipping_enabled == readerFeatureFlags.tipping_enabled && this.allow_non_browser_env == readerFeatureFlags.allow_non_browser_env && this.enable_server_driven == readerFeatureFlags.enable_server_driven && this.enable_sdk_transaction_sessions == readerFeatureFlags.enable_sdk_transaction_sessions && this.server_driven_poll_interval_seconds == readerFeatureFlags.server_driven_poll_interval_seconds && this.enableBbposVersioning == readerFeatureFlags.enableBbposVersioning && this.enableBbposDownloading == readerFeatureFlags.enableBbposDownloading && this.enable_on_reader_tipping == readerFeatureFlags.enable_on_reader_tipping && this.enable_updater_factory_reset_target == readerFeatureFlags.enable_updater_factory_reset_target && this.enable_connect_and_collect == readerFeatureFlags.enable_connect_and_collect && this.enable_firmware_updates == readerFeatureFlags.enable_firmware_updates && this.enable_firmware_update_retries == readerFeatureFlags.enable_firmware_update_retries && this.enable_on_reader_cancel == readerFeatureFlags.enable_on_reader_cancel && this.enable_roborabbit_ui_redesign == readerFeatureFlags.enable_roborabbit_ui_redesign && this.enable_connect_and_collect_release == readerFeatureFlags.enable_connect_and_collect_release && this.enable_updater_new_oobe_flow == readerFeatureFlags.enable_updater_new_oobe_flow && this.enable_iot == readerFeatureFlags.enable_iot && this.enable_offline_mode == readerFeatureFlags.enable_offline_mode && this.enable_wpe_updater_new_oobe_killswitch == readerFeatureFlags.enable_wpe_updater_new_oobe_killswitch && this.disable_iot == readerFeatureFlags.disable_iot && this.enable_new_updates_flow == readerFeatureFlags.enable_new_updates_flow && this.rom_update_kill_switch == readerFeatureFlags.rom_update_kill_switch && this.enable_ktor_http_server == readerFeatureFlags.enable_ktor_http_server && this.wp3_tipping_android_sdk_circuit_breaker == readerFeatureFlags.wp3_tipping_android_sdk_circuit_breaker && this.enable_usb_connectivity == readerFeatureFlags.enable_usb_connectivity && this.wp3_tipping_ios_sdk_circuit_breaker == readerFeatureFlags.wp3_tipping_ios_sdk_circuit_breaker && this.enable_logging_to_disk == readerFeatureFlags.enable_logging_to_disk && this.enable_moto_transactions == readerFeatureFlags.enable_moto_transactions && this.enable_p2pe_apk_signing_verification == readerFeatureFlags.enable_p2pe_apk_signing_verification && this.disable_p2pe_apk_signing_verification == readerFeatureFlags.disable_p2pe_apk_signing_verification && this.enable_crash_button_in_diagnostics == readerFeatureFlags.enable_crash_button_in_diagnostics && this.enable_gif_splash_and_lightmode == readerFeatureFlags.enable_gif_splash_and_lightmode && this.bluetooth_auto_reconnect_android_sdk_enabled == readerFeatureFlags.bluetooth_auto_reconnect_android_sdk_enabled && this.bluetooth_auto_reconnect_ios_sdk_enabled == readerFeatureFlags.bluetooth_auto_reconnect_ios_sdk_enabled && this.disable_bluetooth_auto_reconnect_android_sdk == readerFeatureFlags.disable_bluetooth_auto_reconnect_android_sdk && this.disable_bluetooth_auto_reconnect_ios_sdk == readerFeatureFlags.disable_bluetooth_auto_reconnect_ios_sdk && this.enable_aod_default_app == readerFeatureFlags.enable_aod_default_app && this.enable_new_bbpos_assets_update_components == readerFeatureFlags.enable_new_bbpos_assets_update_components && this.enable_eftpos_routing == readerFeatureFlags.enable_eftpos_routing && this.enable_new_payment_collection_android_sdk == readerFeatureFlags.enable_new_payment_collection_android_sdk && this.enable_client_logger_dispatcher == readerFeatureFlags.enable_client_logger_dispatcher && this.tip_eligible_amounts_circuit_breaker == readerFeatureFlags.tip_eligible_amounts_circuit_breaker && this.enable_iot_client_respond_via_iot == readerFeatureFlags.enable_iot_client_respond_via_iot && this.enable_sharing_device_report == readerFeatureFlags.enable_sharing_device_report && this.enable_traces_to_observability_data_endpoint == readerFeatureFlags.enable_traces_to_observability_data_endpoint && this.enable_reader_bbpos_proxy == readerFeatureFlags.enable_reader_bbpos_proxy && this.disable_sdk_force_key_injection_when_unknown_keys == readerFeatureFlags.disable_sdk_force_key_injection_when_unknown_keys && this.shopify_display_reader_charge_summary == readerFeatureFlags.shopify_display_reader_charge_summary && this.shopify_bypass_reader_charge_summary == readerFeatureFlags.shopify_bypass_reader_charge_summary && this.enable_application_selection_in_quick_chip == readerFeatureFlags.enable_application_selection_in_quick_chip && this.enable_configure_reboot_time_with_device_ui == readerFeatureFlags.enable_configure_reboot_time_with_device_ui && this.enable_armada_reauthentication_flow == readerFeatureFlags.enable_armada_reauthentication_flow && this.enable_send_bbpos_debug_logs_to_splunk == readerFeatureFlags.enable_send_bbpos_debug_logs_to_splunk && this.enable_iot_hadr_polling == readerFeatureFlags.enable_iot_hadr_polling && this.enable_mainland_post_action_result == readerFeatureFlags.enable_mainland_post_action_result && this.enable_client_accessibility_app == readerFeatureFlags.enable_client_accessibility_app && this.enable_mag_stripe_pin == readerFeatureFlags.enable_mag_stripe_pin && this.enable_bbpos_debug_logging == readerFeatureFlags.enable_bbpos_debug_logging && this.configure_device_reboot_time_kill_switch == readerFeatureFlags.configure_device_reboot_time_kill_switch && this.enable_third_party_app_crash_logging == readerFeatureFlags.enable_third_party_app_crash_logging && this.third_party_app_crash_logging_poll_interval_millis == readerFeatureFlags.third_party_app_crash_logging_poll_interval_millis && this.enable_p2pe_rom_verification == readerFeatureFlags.enable_p2pe_rom_verification && this.battery_charging_dialog_killswitch == readerFeatureFlags.battery_charging_dialog_killswitch && this.enable_ttpa_emv_config_from_backend == readerFeatureFlags.enable_ttpa_emv_config_from_backend && this.enable_battery_charging_dialog == readerFeatureFlags.enable_battery_charging_dialog && this.internal_storage_quota_circuit_breaker == readerFeatureFlags.internal_storage_quota_circuit_breaker && this.disable_event_channel_on_reader == readerFeatureFlags.disable_event_channel_on_reader && this.device_plugged_in_but_not_charging_minimum_battery_discharge_percent == readerFeatureFlags.device_plugged_in_but_not_charging_minimum_battery_discharge_percent && this.device_plugged_in_but_not_charging_minimum_required_duration_millis == readerFeatureFlags.device_plugged_in_but_not_charging_minimum_required_duration_millis && this.enable_third_party_settings_intent_logging == readerFeatureFlags.enable_third_party_settings_intent_logging && this.third_party_settings_intent_logging_poll_interval_millis == readerFeatureFlags.third_party_settings_intent_logging_poll_interval_millis && this.enable_add_merchant_info_to_edge_headers == readerFeatureFlags.enable_add_merchant_info_to_edge_headers && this.enable_device_key_auto_recovery_flow == readerFeatureFlags.enable_device_key_auto_recovery_flow && this.enable_device_callback_key_recovery_flow == readerFeatureFlags.enable_device_callback_key_recovery_flow && this.enable_forms_on_sdk == readerFeatureFlags.enable_forms_on_sdk && this.enable_customer_cancellation_feature == readerFeatureFlags.enable_customer_cancellation_feature && this.enable_background_update_split_download_and_install == readerFeatureFlags.enable_background_update_split_download_and_install && this.enable_device_temperature_logging == readerFeatureFlags.enable_device_temperature_logging && this.device_temperature_logging_poll_interval_millis == readerFeatureFlags.device_temperature_logging_poll_interval_millis && this.enable_warden_release_serial_port == readerFeatureFlags.enable_warden_release_serial_port && this.enable_rom_sdk_kernel_logging == readerFeatureFlags.enable_rom_sdk_kernel_logging && this.rom_sdk_kernel_logging_poll_interval_millis == readerFeatureFlags.rom_sdk_kernel_logging_poll_interval_millis && this.enable_kill_for_memory_event_logging == readerFeatureFlags.enable_kill_for_memory_event_logging && this.kill_for_memory_event_logging_poll_interval_millis == readerFeatureFlags.kill_for_memory_event_logging_poll_interval_millis && this.migrate_iot_endpoint_to_iot_service == readerFeatureFlags.migrate_iot_endpoint_to_iot_service && this.enable_client_accessible_pin == readerFeatureFlags.enable_client_accessible_pin && this.rom_install_timeout_non_seamless_updates_millis == readerFeatureFlags.rom_install_timeout_non_seamless_updates_millis && this.rom_install_timeout_seamless_updates_millis == readerFeatureFlags.rom_install_timeout_seamless_updates_millis && this.enable_ttpa_pin == readerFeatureFlags.enable_ttpa_pin && Intrinsics.areEqual(this.android_system_event_logging, readerFeatureFlags.android_system_event_logging) && this.enable_dcc == readerFeatureFlags.enable_dcc && this.enable_ttp_auto_reconnect == readerFeatureFlags.enable_ttp_auto_reconnect && this.enable_iot_respond_via_rpc == readerFeatureFlags.enable_iot_respond_via_rpc && this.selection_form_toggles_below_submit_buttons == readerFeatureFlags.selection_form_toggles_below_submit_buttons && this.offline_pair_unseen_reader_circuit_breaker == readerFeatureFlags.offline_pair_unseen_reader_circuit_breaker && this.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests == readerFeatureFlags.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests && this.enable_battery_not_charging_events_logging == readerFeatureFlags.enable_battery_not_charging_events_logging && this.enable_etna_cav_kfc_updates_check == readerFeatureFlags.enable_etna_cav_kfc_updates_check && this.enable_terminal_surcharging == readerFeatureFlags.enable_terminal_surcharging && this.enable_ios_deferred_logging == readerFeatureFlags.enable_ios_deferred_logging && this.enable_apps_on_devices_settings_menu == readerFeatureFlags.enable_apps_on_devices_settings_menu && this.offline_setup_intents_enabled == readerFeatureFlags.offline_setup_intents_enabled && this.mobile_wallet_on_offline_setup_intents_enabled == readerFeatureFlags.mobile_wallet_on_offline_setup_intents_enabled && this.enable_release_build_to_override_local_ip == readerFeatureFlags.enable_release_build_to_override_local_ip && this.disable_predip == readerFeatureFlags.disable_predip && this.enable_wpe_accessibility_volume_control == readerFeatureFlags.enable_wpe_accessibility_volume_control && this.enable_new_incremental_auth_ui == readerFeatureFlags.enable_new_incremental_auth_ui && this.enable_remove_duplicate_subtotal_string == readerFeatureFlags.enable_remove_duplicate_subtotal_string && this.disable_force_pin_entry == readerFeatureFlags.disable_force_pin_entry && this.enable_ktlv_discrepancy_reporting_pcs == readerFeatureFlags.enable_ktlv_discrepancy_reporting_pcs && this.enable_ktlv_pcs == readerFeatureFlags.enable_ktlv_pcs && this.enable_collect_inputs_interstitial_screen == readerFeatureFlags.enable_collect_inputs_interstitial_screen && this.enable_apps_on_devices_post_collect_merchant_ui == readerFeatureFlags.enable_apps_on_devices_post_collect_merchant_ui && this.enable_wpe_firmware_integrity_error_recovery == readerFeatureFlags.enable_wpe_firmware_integrity_error_recovery && this.enable_force_pin_entry_for_pi == readerFeatureFlags.enable_force_pin_entry_for_pi && this.enable_force_pin_entry_for_si == readerFeatureFlags.enable_force_pin_entry_for_si && this.enable_fixed_iot_reconnect_delay == readerFeatureFlags.enable_fixed_iot_reconnect_delay && this.enable_wpe_unauthenticated_device_integrity_error_recovery == readerFeatureFlags.enable_wpe_unauthenticated_device_integrity_error_recovery && this.enable_spos_girocard == readerFeatureFlags.enable_spos_girocard && this.enable_ttpa_run_attestation_before_pin == readerFeatureFlags.enable_ttpa_run_attestation_before_pin && this.enable_new_background_iot_state_machine == readerFeatureFlags.enable_new_background_iot_state_machine && this.enable_call_to_armada_for_boot_initialization == readerFeatureFlags.enable_call_to_armada_for_boot_initialization && this.enable_ttpa_eftpos_payments == readerFeatureFlags.enable_ttpa_eftpos_payments && this.disable_card_inserted_from_prev_txn_check == readerFeatureFlags.disable_card_inserted_from_prev_txn_check && this.apps_on_devices_start_transaction_timeout_millis == readerFeatureFlags.apps_on_devices_start_transaction_timeout_millis && this.enable_apps_on_devices_start_transaction_timeout == readerFeatureFlags.enable_apps_on_devices_start_transaction_timeout && this.enable_start_reader_activity_on_state == readerFeatureFlags.enable_start_reader_activity_on_state && this.enable_process_messages_with_new_state_machine == readerFeatureFlags.enable_process_messages_with_new_state_machine && this.enable_standalone_app == readerFeatureFlags.enable_standalone_app && this.enable_mandatory_updates == readerFeatureFlags.enable_mandatory_updates && this.smart_reader_transaction_summary_delay_millis == readerFeatureFlags.smart_reader_transaction_summary_delay_millis && this.smart_reader_transaction_summary_unsuccessful_delay_millis == readerFeatureFlags.smart_reader_transaction_summary_unsuccessful_delay_millis && this.enable_wifi_radio_s710_alpha == readerFeatureFlags.enable_wifi_radio_s710_alpha;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((unknownFields().hashCode() * 37) + Boolean.hashCode(this.tipping_enabled)) * 37) + Boolean.hashCode(this.allow_non_browser_env)) * 37) + Boolean.hashCode(this.enable_server_driven)) * 37) + Boolean.hashCode(this.enable_sdk_transaction_sessions)) * 37) + Long.hashCode(this.server_driven_poll_interval_seconds)) * 37) + Boolean.hashCode(this.enableBbposVersioning)) * 37) + Boolean.hashCode(this.enableBbposDownloading)) * 37) + Boolean.hashCode(this.enable_on_reader_tipping)) * 37) + Boolean.hashCode(this.enable_updater_factory_reset_target)) * 37) + Boolean.hashCode(this.enable_connect_and_collect)) * 37) + Boolean.hashCode(this.enable_firmware_updates)) * 37) + Boolean.hashCode(this.enable_firmware_update_retries)) * 37) + Boolean.hashCode(this.enable_on_reader_cancel)) * 37) + Boolean.hashCode(this.enable_roborabbit_ui_redesign)) * 37) + Boolean.hashCode(this.enable_connect_and_collect_release)) * 37) + Boolean.hashCode(this.enable_updater_new_oobe_flow)) * 37) + Boolean.hashCode(this.enable_iot)) * 37) + Boolean.hashCode(this.enable_offline_mode)) * 37) + Boolean.hashCode(this.enable_wpe_updater_new_oobe_killswitch)) * 37) + Boolean.hashCode(this.disable_iot)) * 37) + Boolean.hashCode(this.enable_new_updates_flow)) * 37) + Boolean.hashCode(this.rom_update_kill_switch)) * 37) + Boolean.hashCode(this.enable_ktor_http_server)) * 37) + Boolean.hashCode(this.wp3_tipping_android_sdk_circuit_breaker)) * 37) + Boolean.hashCode(this.enable_usb_connectivity)) * 37) + Boolean.hashCode(this.wp3_tipping_ios_sdk_circuit_breaker)) * 37) + Boolean.hashCode(this.enable_logging_to_disk)) * 37) + Boolean.hashCode(this.enable_moto_transactions)) * 37) + Boolean.hashCode(this.enable_p2pe_apk_signing_verification)) * 37) + Boolean.hashCode(this.disable_p2pe_apk_signing_verification)) * 37) + Boolean.hashCode(this.enable_crash_button_in_diagnostics)) * 37) + Boolean.hashCode(this.enable_gif_splash_and_lightmode)) * 37) + Boolean.hashCode(this.bluetooth_auto_reconnect_android_sdk_enabled)) * 37) + Boolean.hashCode(this.bluetooth_auto_reconnect_ios_sdk_enabled)) * 37) + Boolean.hashCode(this.disable_bluetooth_auto_reconnect_android_sdk)) * 37) + Boolean.hashCode(this.disable_bluetooth_auto_reconnect_ios_sdk)) * 37) + Boolean.hashCode(this.enable_aod_default_app)) * 37) + Boolean.hashCode(this.enable_new_bbpos_assets_update_components)) * 37) + Boolean.hashCode(this.enable_eftpos_routing)) * 37) + Boolean.hashCode(this.enable_new_payment_collection_android_sdk)) * 37) + Boolean.hashCode(this.enable_client_logger_dispatcher)) * 37) + Boolean.hashCode(this.tip_eligible_amounts_circuit_breaker)) * 37) + Boolean.hashCode(this.enable_iot_client_respond_via_iot)) * 37) + Boolean.hashCode(this.enable_sharing_device_report)) * 37) + Boolean.hashCode(this.enable_traces_to_observability_data_endpoint)) * 37) + Boolean.hashCode(this.enable_reader_bbpos_proxy)) * 37) + Boolean.hashCode(this.disable_sdk_force_key_injection_when_unknown_keys)) * 37) + Boolean.hashCode(this.shopify_display_reader_charge_summary)) * 37) + Boolean.hashCode(this.shopify_bypass_reader_charge_summary)) * 37) + Boolean.hashCode(this.enable_application_selection_in_quick_chip)) * 37) + Boolean.hashCode(this.enable_configure_reboot_time_with_device_ui)) * 37) + Boolean.hashCode(this.enable_armada_reauthentication_flow)) * 37) + Boolean.hashCode(this.enable_send_bbpos_debug_logs_to_splunk)) * 37) + Boolean.hashCode(this.enable_iot_hadr_polling)) * 37) + Boolean.hashCode(this.enable_mainland_post_action_result)) * 37) + Boolean.hashCode(this.enable_client_accessibility_app)) * 37) + Boolean.hashCode(this.enable_mag_stripe_pin)) * 37) + Boolean.hashCode(this.enable_bbpos_debug_logging)) * 37) + Boolean.hashCode(this.configure_device_reboot_time_kill_switch)) * 37) + Boolean.hashCode(this.enable_third_party_app_crash_logging)) * 37) + Long.hashCode(this.third_party_app_crash_logging_poll_interval_millis)) * 37) + Boolean.hashCode(this.enable_p2pe_rom_verification)) * 37) + Boolean.hashCode(this.battery_charging_dialog_killswitch)) * 37) + Boolean.hashCode(this.enable_ttpa_emv_config_from_backend)) * 37) + Boolean.hashCode(this.enable_battery_charging_dialog)) * 37) + Boolean.hashCode(this.internal_storage_quota_circuit_breaker)) * 37) + Boolean.hashCode(this.disable_event_channel_on_reader)) * 37) + Long.hashCode(this.device_plugged_in_but_not_charging_minimum_battery_discharge_percent)) * 37) + Long.hashCode(this.device_plugged_in_but_not_charging_minimum_required_duration_millis)) * 37) + Boolean.hashCode(this.enable_third_party_settings_intent_logging)) * 37) + Long.hashCode(this.third_party_settings_intent_logging_poll_interval_millis)) * 37) + Boolean.hashCode(this.enable_add_merchant_info_to_edge_headers)) * 37) + Boolean.hashCode(this.enable_device_key_auto_recovery_flow)) * 37) + Boolean.hashCode(this.enable_device_callback_key_recovery_flow)) * 37) + Boolean.hashCode(this.enable_forms_on_sdk)) * 37) + Boolean.hashCode(this.enable_customer_cancellation_feature)) * 37) + Boolean.hashCode(this.enable_background_update_split_download_and_install)) * 37) + Boolean.hashCode(this.enable_device_temperature_logging)) * 37) + Long.hashCode(this.device_temperature_logging_poll_interval_millis)) * 37) + Boolean.hashCode(this.enable_warden_release_serial_port)) * 37) + Boolean.hashCode(this.enable_rom_sdk_kernel_logging)) * 37) + Long.hashCode(this.rom_sdk_kernel_logging_poll_interval_millis)) * 37) + Boolean.hashCode(this.enable_kill_for_memory_event_logging)) * 37) + Long.hashCode(this.kill_for_memory_event_logging_poll_interval_millis)) * 37) + Boolean.hashCode(this.migrate_iot_endpoint_to_iot_service)) * 37) + Boolean.hashCode(this.enable_client_accessible_pin)) * 37) + Long.hashCode(this.rom_install_timeout_non_seamless_updates_millis)) * 37) + Long.hashCode(this.rom_install_timeout_seamless_updates_millis)) * 37) + Boolean.hashCode(this.enable_ttpa_pin)) * 37;
        AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig = this.android_system_event_logging;
        int iHashCode2 = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((iHashCode + (androidSystemEventLoggingConfig != null ? androidSystemEventLoggingConfig.hashCode() : 0)) * 37) + Boolean.hashCode(this.enable_dcc)) * 37) + Boolean.hashCode(this.enable_ttp_auto_reconnect)) * 37) + Boolean.hashCode(this.enable_iot_respond_via_rpc)) * 37) + Boolean.hashCode(this.selection_form_toggles_below_submit_buttons)) * 37) + Boolean.hashCode(this.offline_pair_unseen_reader_circuit_breaker)) * 37) + Boolean.hashCode(this.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests)) * 37) + Boolean.hashCode(this.enable_battery_not_charging_events_logging)) * 37) + Boolean.hashCode(this.enable_etna_cav_kfc_updates_check)) * 37) + Boolean.hashCode(this.enable_terminal_surcharging)) * 37) + Boolean.hashCode(this.enable_ios_deferred_logging)) * 37) + Boolean.hashCode(this.enable_apps_on_devices_settings_menu)) * 37) + Boolean.hashCode(this.offline_setup_intents_enabled)) * 37) + Boolean.hashCode(this.mobile_wallet_on_offline_setup_intents_enabled)) * 37) + Boolean.hashCode(this.enable_release_build_to_override_local_ip)) * 37) + Boolean.hashCode(this.disable_predip)) * 37) + Boolean.hashCode(this.enable_wpe_accessibility_volume_control)) * 37) + Boolean.hashCode(this.enable_new_incremental_auth_ui)) * 37) + Boolean.hashCode(this.enable_remove_duplicate_subtotal_string)) * 37) + Boolean.hashCode(this.disable_force_pin_entry)) * 37) + Boolean.hashCode(this.enable_ktlv_discrepancy_reporting_pcs)) * 37) + Boolean.hashCode(this.enable_ktlv_pcs)) * 37) + Boolean.hashCode(this.enable_collect_inputs_interstitial_screen)) * 37) + Boolean.hashCode(this.enable_apps_on_devices_post_collect_merchant_ui)) * 37) + Boolean.hashCode(this.enable_wpe_firmware_integrity_error_recovery)) * 37) + Boolean.hashCode(this.enable_force_pin_entry_for_pi)) * 37) + Boolean.hashCode(this.enable_force_pin_entry_for_si)) * 37) + Boolean.hashCode(this.enable_fixed_iot_reconnect_delay)) * 37) + Boolean.hashCode(this.enable_wpe_unauthenticated_device_integrity_error_recovery)) * 37) + Boolean.hashCode(this.enable_spos_girocard)) * 37) + Boolean.hashCode(this.enable_ttpa_run_attestation_before_pin)) * 37) + Boolean.hashCode(this.enable_new_background_iot_state_machine)) * 37) + Boolean.hashCode(this.enable_call_to_armada_for_boot_initialization)) * 37) + Boolean.hashCode(this.enable_ttpa_eftpos_payments)) * 37) + Boolean.hashCode(this.disable_card_inserted_from_prev_txn_check)) * 37) + Long.hashCode(this.apps_on_devices_start_transaction_timeout_millis)) * 37) + Boolean.hashCode(this.enable_apps_on_devices_start_transaction_timeout)) * 37) + Boolean.hashCode(this.enable_start_reader_activity_on_state)) * 37) + Boolean.hashCode(this.enable_process_messages_with_new_state_machine)) * 37) + Boolean.hashCode(this.enable_standalone_app)) * 37) + Boolean.hashCode(this.enable_mandatory_updates)) * 37) + Long.hashCode(this.smart_reader_transaction_summary_delay_millis)) * 37) + Long.hashCode(this.smart_reader_transaction_summary_unsuccessful_delay_millis)) * 37) + Boolean.hashCode(this.enable_wifi_radio_s710_alpha);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("tipping_enabled=" + this.tipping_enabled);
        arrayList2.add("allow_non_browser_env=" + this.allow_non_browser_env);
        arrayList2.add("enable_server_driven=" + this.enable_server_driven);
        arrayList2.add("enable_sdk_transaction_sessions=" + this.enable_sdk_transaction_sessions);
        arrayList2.add("server_driven_poll_interval_seconds=" + this.server_driven_poll_interval_seconds);
        arrayList2.add("enableBbposVersioning=" + this.enableBbposVersioning);
        arrayList2.add("enableBbposDownloading=" + this.enableBbposDownloading);
        arrayList2.add("enable_on_reader_tipping=" + this.enable_on_reader_tipping);
        arrayList2.add("enable_updater_factory_reset_target=" + this.enable_updater_factory_reset_target);
        arrayList2.add("enable_connect_and_collect=" + this.enable_connect_and_collect);
        arrayList2.add("enable_firmware_updates=" + this.enable_firmware_updates);
        arrayList2.add("enable_firmware_update_retries=" + this.enable_firmware_update_retries);
        arrayList2.add("enable_on_reader_cancel=" + this.enable_on_reader_cancel);
        arrayList2.add("enable_roborabbit_ui_redesign=" + this.enable_roborabbit_ui_redesign);
        arrayList2.add("enable_connect_and_collect_release=" + this.enable_connect_and_collect_release);
        arrayList2.add("enable_updater_new_oobe_flow=" + this.enable_updater_new_oobe_flow);
        arrayList2.add("enable_iot=" + this.enable_iot);
        arrayList2.add("enable_offline_mode=" + this.enable_offline_mode);
        arrayList2.add("enable_wpe_updater_new_oobe_killswitch=" + this.enable_wpe_updater_new_oobe_killswitch);
        arrayList2.add("disable_iot=" + this.disable_iot);
        arrayList2.add("enable_new_updates_flow=" + this.enable_new_updates_flow);
        arrayList2.add("rom_update_kill_switch=" + this.rom_update_kill_switch);
        arrayList2.add("enable_ktor_http_server=" + this.enable_ktor_http_server);
        arrayList2.add("wp3_tipping_android_sdk_circuit_breaker=" + this.wp3_tipping_android_sdk_circuit_breaker);
        arrayList2.add("enable_usb_connectivity=" + this.enable_usb_connectivity);
        arrayList2.add("wp3_tipping_ios_sdk_circuit_breaker=" + this.wp3_tipping_ios_sdk_circuit_breaker);
        arrayList2.add("enable_logging_to_disk=" + this.enable_logging_to_disk);
        arrayList2.add("enable_moto_transactions=" + this.enable_moto_transactions);
        arrayList2.add("enable_p2pe_apk_signing_verification=" + this.enable_p2pe_apk_signing_verification);
        arrayList2.add("disable_p2pe_apk_signing_verification=" + this.disable_p2pe_apk_signing_verification);
        arrayList2.add("enable_crash_button_in_diagnostics=" + this.enable_crash_button_in_diagnostics);
        arrayList2.add("enable_gif_splash_and_lightmode=" + this.enable_gif_splash_and_lightmode);
        arrayList2.add("bluetooth_auto_reconnect_android_sdk_enabled=" + this.bluetooth_auto_reconnect_android_sdk_enabled);
        arrayList2.add("bluetooth_auto_reconnect_ios_sdk_enabled=" + this.bluetooth_auto_reconnect_ios_sdk_enabled);
        arrayList2.add("disable_bluetooth_auto_reconnect_android_sdk=" + this.disable_bluetooth_auto_reconnect_android_sdk);
        arrayList2.add("disable_bluetooth_auto_reconnect_ios_sdk=" + this.disable_bluetooth_auto_reconnect_ios_sdk);
        arrayList2.add("enable_aod_default_app=" + this.enable_aod_default_app);
        arrayList2.add("enable_new_bbpos_assets_update_components=" + this.enable_new_bbpos_assets_update_components);
        arrayList2.add("enable_eftpos_routing=" + this.enable_eftpos_routing);
        arrayList2.add("enable_new_payment_collection_android_sdk=" + this.enable_new_payment_collection_android_sdk);
        arrayList2.add("enable_client_logger_dispatcher=" + this.enable_client_logger_dispatcher);
        arrayList2.add("tip_eligible_amounts_circuit_breaker=" + this.tip_eligible_amounts_circuit_breaker);
        arrayList2.add("enable_iot_client_respond_via_iot=" + this.enable_iot_client_respond_via_iot);
        arrayList2.add("enable_sharing_device_report=" + this.enable_sharing_device_report);
        arrayList2.add("enable_traces_to_observability_data_endpoint=" + this.enable_traces_to_observability_data_endpoint);
        arrayList2.add("enable_reader_bbpos_proxy=" + this.enable_reader_bbpos_proxy);
        arrayList2.add("disable_sdk_force_key_injection_when_unknown_keys=" + this.disable_sdk_force_key_injection_when_unknown_keys);
        arrayList2.add("shopify_display_reader_charge_summary=" + this.shopify_display_reader_charge_summary);
        arrayList2.add("shopify_bypass_reader_charge_summary=" + this.shopify_bypass_reader_charge_summary);
        arrayList2.add("enable_application_selection_in_quick_chip=" + this.enable_application_selection_in_quick_chip);
        arrayList2.add("enable_configure_reboot_time_with_device_ui=" + this.enable_configure_reboot_time_with_device_ui);
        arrayList2.add("enable_armada_reauthentication_flow=" + this.enable_armada_reauthentication_flow);
        arrayList2.add("enable_send_bbpos_debug_logs_to_splunk=" + this.enable_send_bbpos_debug_logs_to_splunk);
        arrayList2.add("enable_iot_hadr_polling=" + this.enable_iot_hadr_polling);
        arrayList2.add("enable_mainland_post_action_result=" + this.enable_mainland_post_action_result);
        arrayList2.add("enable_client_accessibility_app=" + this.enable_client_accessibility_app);
        arrayList2.add("enable_mag_stripe_pin=" + this.enable_mag_stripe_pin);
        arrayList2.add("enable_bbpos_debug_logging=" + this.enable_bbpos_debug_logging);
        arrayList2.add("configure_device_reboot_time_kill_switch=" + this.configure_device_reboot_time_kill_switch);
        arrayList2.add("enable_third_party_app_crash_logging=" + this.enable_third_party_app_crash_logging);
        arrayList2.add("third_party_app_crash_logging_poll_interval_millis=" + this.third_party_app_crash_logging_poll_interval_millis);
        arrayList2.add("enable_p2pe_rom_verification=" + this.enable_p2pe_rom_verification);
        arrayList2.add("battery_charging_dialog_killswitch=" + this.battery_charging_dialog_killswitch);
        arrayList2.add("enable_ttpa_emv_config_from_backend=" + this.enable_ttpa_emv_config_from_backend);
        arrayList2.add("enable_battery_charging_dialog=" + this.enable_battery_charging_dialog);
        arrayList2.add("internal_storage_quota_circuit_breaker=" + this.internal_storage_quota_circuit_breaker);
        arrayList2.add("disable_event_channel_on_reader=" + this.disable_event_channel_on_reader);
        arrayList2.add("device_plugged_in_but_not_charging_minimum_battery_discharge_percent=" + this.device_plugged_in_but_not_charging_minimum_battery_discharge_percent);
        arrayList2.add("device_plugged_in_but_not_charging_minimum_required_duration_millis=" + this.device_plugged_in_but_not_charging_minimum_required_duration_millis);
        arrayList2.add("enable_third_party_settings_intent_logging=" + this.enable_third_party_settings_intent_logging);
        arrayList2.add("third_party_settings_intent_logging_poll_interval_millis=" + this.third_party_settings_intent_logging_poll_interval_millis);
        arrayList2.add("enable_add_merchant_info_to_edge_headers=" + this.enable_add_merchant_info_to_edge_headers);
        arrayList2.add("enable_device_key_auto_recovery_flow=" + this.enable_device_key_auto_recovery_flow);
        arrayList2.add("enable_device_callback_key_recovery_flow=" + this.enable_device_callback_key_recovery_flow);
        arrayList2.add("enable_forms_on_sdk=" + this.enable_forms_on_sdk);
        arrayList2.add("enable_customer_cancellation_feature=" + this.enable_customer_cancellation_feature);
        arrayList2.add("enable_background_update_split_download_and_install=" + this.enable_background_update_split_download_and_install);
        arrayList2.add("enable_device_temperature_logging=" + this.enable_device_temperature_logging);
        arrayList2.add("device_temperature_logging_poll_interval_millis=" + this.device_temperature_logging_poll_interval_millis);
        arrayList2.add("enable_warden_release_serial_port=" + this.enable_warden_release_serial_port);
        arrayList2.add("enable_rom_sdk_kernel_logging=" + this.enable_rom_sdk_kernel_logging);
        arrayList2.add("rom_sdk_kernel_logging_poll_interval_millis=" + this.rom_sdk_kernel_logging_poll_interval_millis);
        arrayList2.add("enable_kill_for_memory_event_logging=" + this.enable_kill_for_memory_event_logging);
        arrayList2.add("kill_for_memory_event_logging_poll_interval_millis=" + this.kill_for_memory_event_logging_poll_interval_millis);
        arrayList2.add("migrate_iot_endpoint_to_iot_service=" + this.migrate_iot_endpoint_to_iot_service);
        arrayList2.add("enable_client_accessible_pin=" + this.enable_client_accessible_pin);
        arrayList2.add("rom_install_timeout_non_seamless_updates_millis=" + this.rom_install_timeout_non_seamless_updates_millis);
        arrayList2.add("rom_install_timeout_seamless_updates_millis=" + this.rom_install_timeout_seamless_updates_millis);
        arrayList2.add("enable_ttpa_pin=" + this.enable_ttpa_pin);
        if (this.android_system_event_logging != null) {
            arrayList2.add("android_system_event_logging=" + this.android_system_event_logging);
        }
        arrayList2.add("enable_dcc=" + this.enable_dcc);
        arrayList2.add("enable_ttp_auto_reconnect=" + this.enable_ttp_auto_reconnect);
        arrayList2.add("enable_iot_respond_via_rpc=" + this.enable_iot_respond_via_rpc);
        arrayList2.add("selection_form_toggles_below_submit_buttons=" + this.selection_form_toggles_below_submit_buttons);
        arrayList2.add("offline_pair_unseen_reader_circuit_breaker=" + this.offline_pair_unseen_reader_circuit_breaker);
        arrayList2.add("enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests=" + this.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests);
        arrayList2.add("enable_battery_not_charging_events_logging=" + this.enable_battery_not_charging_events_logging);
        arrayList2.add("enable_etna_cav_kfc_updates_check=" + this.enable_etna_cav_kfc_updates_check);
        arrayList2.add("enable_terminal_surcharging=" + this.enable_terminal_surcharging);
        arrayList2.add("enable_ios_deferred_logging=" + this.enable_ios_deferred_logging);
        arrayList2.add("enable_apps_on_devices_settings_menu=" + this.enable_apps_on_devices_settings_menu);
        arrayList2.add("offline_setup_intents_enabled=" + this.offline_setup_intents_enabled);
        arrayList2.add("mobile_wallet_on_offline_setup_intents_enabled=" + this.mobile_wallet_on_offline_setup_intents_enabled);
        arrayList2.add("enable_release_build_to_override_local_ip=" + this.enable_release_build_to_override_local_ip);
        arrayList2.add("disable_predip=" + this.disable_predip);
        arrayList2.add("enable_wpe_accessibility_volume_control=" + this.enable_wpe_accessibility_volume_control);
        arrayList2.add("enable_new_incremental_auth_ui=" + this.enable_new_incremental_auth_ui);
        arrayList2.add("enable_remove_duplicate_subtotal_string=" + this.enable_remove_duplicate_subtotal_string);
        arrayList2.add("disable_force_pin_entry=" + this.disable_force_pin_entry);
        arrayList2.add("enable_ktlv_discrepancy_reporting_pcs=" + this.enable_ktlv_discrepancy_reporting_pcs);
        arrayList2.add("enable_ktlv_pcs=" + this.enable_ktlv_pcs);
        arrayList2.add("enable_collect_inputs_interstitial_screen=" + this.enable_collect_inputs_interstitial_screen);
        arrayList2.add("enable_apps_on_devices_post_collect_merchant_ui=" + this.enable_apps_on_devices_post_collect_merchant_ui);
        arrayList2.add("enable_wpe_firmware_integrity_error_recovery=" + this.enable_wpe_firmware_integrity_error_recovery);
        arrayList2.add("enable_force_pin_entry_for_pi=" + this.enable_force_pin_entry_for_pi);
        arrayList2.add("enable_force_pin_entry_for_si=" + this.enable_force_pin_entry_for_si);
        arrayList2.add("enable_fixed_iot_reconnect_delay=" + this.enable_fixed_iot_reconnect_delay);
        arrayList2.add("enable_wpe_unauthenticated_device_integrity_error_recovery=" + this.enable_wpe_unauthenticated_device_integrity_error_recovery);
        arrayList2.add("enable_spos_girocard=" + this.enable_spos_girocard);
        arrayList2.add("enable_ttpa_run_attestation_before_pin=" + this.enable_ttpa_run_attestation_before_pin);
        arrayList2.add("enable_new_background_iot_state_machine=" + this.enable_new_background_iot_state_machine);
        arrayList2.add("enable_call_to_armada_for_boot_initialization=" + this.enable_call_to_armada_for_boot_initialization);
        arrayList2.add("enable_ttpa_eftpos_payments=" + this.enable_ttpa_eftpos_payments);
        arrayList2.add("disable_card_inserted_from_prev_txn_check=" + this.disable_card_inserted_from_prev_txn_check);
        arrayList2.add("apps_on_devices_start_transaction_timeout_millis=" + this.apps_on_devices_start_transaction_timeout_millis);
        arrayList2.add("enable_apps_on_devices_start_transaction_timeout=" + this.enable_apps_on_devices_start_transaction_timeout);
        arrayList2.add("enable_start_reader_activity_on_state=" + this.enable_start_reader_activity_on_state);
        arrayList2.add("enable_process_messages_with_new_state_machine=" + this.enable_process_messages_with_new_state_machine);
        arrayList2.add("enable_standalone_app=" + this.enable_standalone_app);
        arrayList2.add("enable_mandatory_updates=" + this.enable_mandatory_updates);
        arrayList2.add("smart_reader_transaction_summary_delay_millis=" + this.smart_reader_transaction_summary_delay_millis);
        arrayList2.add("smart_reader_transaction_summary_unsuccessful_delay_millis=" + this.smart_reader_transaction_summary_unsuccessful_delay_millis);
        arrayList2.add("enable_wifi_radio_s710_alpha=" + this.enable_wifi_radio_s710_alpha);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderFeatureFlags{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReaderFeatureFlags copy$default(ReaderFeatureFlags readerFeatureFlags, boolean z, boolean z2, boolean z3, boolean z4, long j, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, boolean z26, boolean z27, boolean z28, boolean z29, boolean z30, boolean z31, boolean z32, boolean z33, boolean z34, boolean z35, boolean z36, boolean z37, boolean z38, boolean z39, boolean z40, boolean z41, boolean z42, boolean z43, boolean z44, boolean z45, boolean z46, boolean z47, boolean z48, boolean z49, boolean z50, boolean z51, boolean z52, boolean z53, boolean z54, boolean z55, boolean z56, boolean z57, boolean z58, boolean z59, long j2, boolean z60, boolean z61, boolean z62, boolean z63, boolean z64, boolean z65, long j3, long j4, boolean z66, long j5, boolean z67, boolean z68, boolean z69, boolean z70, boolean z71, boolean z72, boolean z73, long j6, boolean z74, boolean z75, long j7, boolean z76, long j8, boolean z77, boolean z78, long j9, long j10, boolean z79, AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig, boolean z80, boolean z81, boolean z82, boolean z83, boolean z84, boolean z85, boolean z86, boolean z87, boolean z88, boolean z89, boolean z90, boolean z91, boolean z92, boolean z93, boolean z94, boolean z95, boolean z96, boolean z97, boolean z98, boolean z99, boolean z100, boolean z101, boolean z102, boolean z103, boolean z104, boolean z105, boolean z106, boolean z107, boolean z108, boolean z109, boolean z110, boolean z111, boolean z112, boolean z113, long j11, boolean z114, boolean z115, boolean z116, boolean z117, boolean z118, long j12, long j13, boolean z119, ByteString byteString, int i, int i2, int i3, int i4, int i5, Object obj) {
        long j14;
        boolean z120;
        boolean z121;
        AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig2;
        ByteString byteStringUnknownFields;
        boolean z122;
        boolean z123;
        boolean z124;
        boolean z125;
        long j15;
        boolean z126;
        boolean z127;
        boolean z128;
        boolean z129;
        long j16;
        boolean z130;
        boolean z131;
        boolean z132;
        boolean z133;
        boolean z134;
        boolean z135;
        boolean z136;
        boolean z137;
        boolean z138;
        boolean z139;
        boolean z140;
        boolean z141;
        boolean z142;
        boolean z143;
        boolean z144;
        boolean z145;
        boolean z146;
        boolean z147;
        boolean z148;
        boolean z149;
        boolean z150;
        boolean z151;
        boolean z152;
        boolean z153;
        boolean z154;
        boolean z155;
        boolean z156;
        boolean z157;
        long j17;
        boolean z158;
        boolean z159;
        long j18;
        long j19;
        boolean z160;
        boolean z161;
        boolean z162;
        boolean z163;
        boolean z164 = (i & 1) != 0 ? readerFeatureFlags.tipping_enabled : z;
        boolean z165 = (i & 2) != 0 ? readerFeatureFlags.allow_non_browser_env : z2;
        boolean z166 = (i & 4) != 0 ? readerFeatureFlags.enable_server_driven : z3;
        boolean z167 = (i & 8) != 0 ? readerFeatureFlags.enable_sdk_transaction_sessions : z4;
        long j20 = (i & 16) != 0 ? readerFeatureFlags.server_driven_poll_interval_seconds : j;
        boolean z168 = (i & 32) != 0 ? readerFeatureFlags.enableBbposVersioning : z5;
        boolean z169 = (i & 64) != 0 ? readerFeatureFlags.enableBbposDownloading : z6;
        boolean z170 = (i & 128) != 0 ? readerFeatureFlags.enable_on_reader_tipping : z7;
        boolean z171 = (i & 256) != 0 ? readerFeatureFlags.enable_updater_factory_reset_target : z8;
        boolean z172 = (i & 512) != 0 ? readerFeatureFlags.enable_connect_and_collect : z9;
        boolean z173 = z164;
        boolean z174 = (i & 1024) != 0 ? readerFeatureFlags.enable_firmware_updates : z10;
        boolean z175 = (i & 2048) != 0 ? readerFeatureFlags.enable_firmware_update_retries : z11;
        boolean z176 = (i & 4096) != 0 ? readerFeatureFlags.enable_on_reader_cancel : z12;
        boolean z177 = (i & 8192) != 0 ? readerFeatureFlags.enable_roborabbit_ui_redesign : z13;
        boolean z178 = (i & 16384) != 0 ? readerFeatureFlags.enable_connect_and_collect_release : z14;
        boolean z179 = (i & 32768) != 0 ? readerFeatureFlags.enable_updater_new_oobe_flow : z15;
        boolean z180 = (i & 65536) != 0 ? readerFeatureFlags.enable_iot : z16;
        boolean z181 = (i & 131072) != 0 ? readerFeatureFlags.enable_offline_mode : z17;
        boolean z182 = (i & 262144) != 0 ? readerFeatureFlags.enable_wpe_updater_new_oobe_killswitch : z18;
        boolean z183 = (i & 524288) != 0 ? readerFeatureFlags.disable_iot : z19;
        boolean z184 = (i & 1048576) != 0 ? readerFeatureFlags.enable_new_updates_flow : z20;
        boolean z185 = (i & 2097152) != 0 ? readerFeatureFlags.rom_update_kill_switch : z21;
        boolean z186 = (i & 4194304) != 0 ? readerFeatureFlags.enable_ktor_http_server : z22;
        boolean z187 = (i & 8388608) != 0 ? readerFeatureFlags.wp3_tipping_android_sdk_circuit_breaker : z23;
        boolean z188 = (i & 16777216) != 0 ? readerFeatureFlags.enable_usb_connectivity : z24;
        boolean z189 = (i & 33554432) != 0 ? readerFeatureFlags.wp3_tipping_ios_sdk_circuit_breaker : z25;
        boolean z190 = (i & 67108864) != 0 ? readerFeatureFlags.enable_logging_to_disk : z26;
        boolean z191 = (i & 134217728) != 0 ? readerFeatureFlags.enable_moto_transactions : z27;
        boolean z192 = (i & 268435456) != 0 ? readerFeatureFlags.enable_p2pe_apk_signing_verification : z28;
        boolean z193 = (i & 536870912) != 0 ? readerFeatureFlags.disable_p2pe_apk_signing_verification : z29;
        boolean z194 = (i & 1073741824) != 0 ? readerFeatureFlags.enable_crash_button_in_diagnostics : z30;
        boolean z195 = (i & Integer.MIN_VALUE) != 0 ? readerFeatureFlags.enable_gif_splash_and_lightmode : z31;
        boolean z196 = (i2 & 1) != 0 ? readerFeatureFlags.bluetooth_auto_reconnect_android_sdk_enabled : z32;
        boolean z197 = (i2 & 2) != 0 ? readerFeatureFlags.bluetooth_auto_reconnect_ios_sdk_enabled : z33;
        boolean z198 = (i2 & 4) != 0 ? readerFeatureFlags.disable_bluetooth_auto_reconnect_android_sdk : z34;
        boolean z199 = (i2 & 8) != 0 ? readerFeatureFlags.disable_bluetooth_auto_reconnect_ios_sdk : z35;
        boolean z200 = (i2 & 16) != 0 ? readerFeatureFlags.enable_aod_default_app : z36;
        boolean z201 = (i2 & 32) != 0 ? readerFeatureFlags.enable_new_bbpos_assets_update_components : z37;
        boolean z202 = (i2 & 64) != 0 ? readerFeatureFlags.enable_eftpos_routing : z38;
        boolean z203 = (i2 & 128) != 0 ? readerFeatureFlags.enable_new_payment_collection_android_sdk : z39;
        boolean z204 = (i2 & 256) != 0 ? readerFeatureFlags.enable_client_logger_dispatcher : z40;
        boolean z205 = (i2 & 512) != 0 ? readerFeatureFlags.tip_eligible_amounts_circuit_breaker : z41;
        boolean z206 = (i2 & 1024) != 0 ? readerFeatureFlags.enable_iot_client_respond_via_iot : z42;
        boolean z207 = (i2 & 2048) != 0 ? readerFeatureFlags.enable_sharing_device_report : z43;
        boolean z208 = (i2 & 4096) != 0 ? readerFeatureFlags.enable_traces_to_observability_data_endpoint : z44;
        boolean z209 = (i2 & 8192) != 0 ? readerFeatureFlags.enable_reader_bbpos_proxy : z45;
        boolean z210 = (i2 & 16384) != 0 ? readerFeatureFlags.disable_sdk_force_key_injection_when_unknown_keys : z46;
        boolean z211 = (i2 & 32768) != 0 ? readerFeatureFlags.shopify_display_reader_charge_summary : z47;
        boolean z212 = (i2 & 65536) != 0 ? readerFeatureFlags.shopify_bypass_reader_charge_summary : z48;
        boolean z213 = (i2 & 131072) != 0 ? readerFeatureFlags.enable_application_selection_in_quick_chip : z49;
        boolean z214 = (i2 & 262144) != 0 ? readerFeatureFlags.enable_configure_reboot_time_with_device_ui : z50;
        boolean z215 = (i2 & 524288) != 0 ? readerFeatureFlags.enable_armada_reauthentication_flow : z51;
        boolean z216 = (i2 & 1048576) != 0 ? readerFeatureFlags.enable_send_bbpos_debug_logs_to_splunk : z52;
        boolean z217 = (i2 & 2097152) != 0 ? readerFeatureFlags.enable_iot_hadr_polling : z53;
        boolean z218 = (i2 & 4194304) != 0 ? readerFeatureFlags.enable_mainland_post_action_result : z54;
        boolean z219 = (i2 & 8388608) != 0 ? readerFeatureFlags.enable_client_accessibility_app : z55;
        boolean z220 = (i2 & 16777216) != 0 ? readerFeatureFlags.enable_mag_stripe_pin : z56;
        boolean z221 = (i2 & 33554432) != 0 ? readerFeatureFlags.enable_bbpos_debug_logging : z57;
        boolean z222 = (i2 & 67108864) != 0 ? readerFeatureFlags.configure_device_reboot_time_kill_switch : z58;
        boolean z223 = (i2 & 134217728) != 0 ? readerFeatureFlags.enable_third_party_app_crash_logging : z59;
        long j21 = (i2 & 268435456) != 0 ? readerFeatureFlags.third_party_app_crash_logging_poll_interval_millis : j2;
        boolean z224 = (i2 & 536870912) != 0 ? readerFeatureFlags.enable_p2pe_rom_verification : z60;
        boolean z225 = (i2 & 1073741824) != 0 ? readerFeatureFlags.battery_charging_dialog_killswitch : z61;
        boolean z226 = z224;
        boolean z227 = (i2 & Integer.MIN_VALUE) != 0 ? readerFeatureFlags.enable_ttpa_emv_config_from_backend : z62;
        boolean z228 = (i3 & 1) != 0 ? readerFeatureFlags.enable_battery_charging_dialog : z63;
        boolean z229 = (i3 & 2) != 0 ? readerFeatureFlags.internal_storage_quota_circuit_breaker : z64;
        boolean z230 = (i3 & 4) != 0 ? readerFeatureFlags.disable_event_channel_on_reader : z65;
        boolean z231 = z225;
        long j22 = (i3 & 8) != 0 ? readerFeatureFlags.device_plugged_in_but_not_charging_minimum_battery_discharge_percent : j3;
        long j23 = (i3 & 16) != 0 ? readerFeatureFlags.device_plugged_in_but_not_charging_minimum_required_duration_millis : j4;
        boolean z232 = (i3 & 32) != 0 ? readerFeatureFlags.enable_third_party_settings_intent_logging : z66;
        long j24 = (i3 & 64) != 0 ? readerFeatureFlags.third_party_settings_intent_logging_poll_interval_millis : j5;
        boolean z233 = (i3 & 128) != 0 ? readerFeatureFlags.enable_add_merchant_info_to_edge_headers : z67;
        boolean z234 = (i3 & 256) != 0 ? readerFeatureFlags.enable_device_key_auto_recovery_flow : z68;
        boolean z235 = z233;
        boolean z236 = (i3 & 512) != 0 ? readerFeatureFlags.enable_device_callback_key_recovery_flow : z69;
        boolean z237 = (i3 & 1024) != 0 ? readerFeatureFlags.enable_forms_on_sdk : z70;
        boolean z238 = (i3 & 2048) != 0 ? readerFeatureFlags.enable_customer_cancellation_feature : z71;
        boolean z239 = (i3 & 4096) != 0 ? readerFeatureFlags.enable_background_update_split_download_and_install : z72;
        boolean z240 = (i3 & 8192) != 0 ? readerFeatureFlags.enable_device_temperature_logging : z73;
        boolean z241 = z234;
        long j25 = (i3 & 16384) != 0 ? readerFeatureFlags.device_temperature_logging_poll_interval_millis : j6;
        boolean z242 = (i3 & 32768) != 0 ? readerFeatureFlags.enable_warden_release_serial_port : z74;
        boolean z243 = (i3 & 65536) != 0 ? readerFeatureFlags.enable_rom_sdk_kernel_logging : z75;
        long j26 = (i3 & 131072) != 0 ? readerFeatureFlags.rom_sdk_kernel_logging_poll_interval_millis : j7;
        boolean z244 = (i3 & 262144) != 0 ? readerFeatureFlags.enable_kill_for_memory_event_logging : z76;
        long j27 = (i3 & 524288) != 0 ? readerFeatureFlags.kill_for_memory_event_logging_poll_interval_millis : j8;
        boolean z245 = (i3 & 1048576) != 0 ? readerFeatureFlags.migrate_iot_endpoint_to_iot_service : z77;
        boolean z246 = (i3 & 2097152) != 0 ? readerFeatureFlags.enable_client_accessible_pin : z78;
        long j28 = (i3 & 4194304) != 0 ? readerFeatureFlags.rom_install_timeout_non_seamless_updates_millis : j9;
        long j29 = (i3 & 8388608) != 0 ? readerFeatureFlags.rom_install_timeout_seamless_updates_millis : j10;
        boolean z247 = (i3 & 16777216) != 0 ? readerFeatureFlags.enable_ttpa_pin : z79;
        AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig3 = (33554432 & i3) != 0 ? readerFeatureFlags.android_system_event_logging : androidSystemEventLoggingConfig;
        boolean z248 = z247;
        boolean z249 = (i3 & 67108864) != 0 ? readerFeatureFlags.enable_dcc : z80;
        boolean z250 = (i3 & 134217728) != 0 ? readerFeatureFlags.enable_ttp_auto_reconnect : z81;
        boolean z251 = (i3 & 268435456) != 0 ? readerFeatureFlags.enable_iot_respond_via_rpc : z82;
        boolean z252 = (i3 & 536870912) != 0 ? readerFeatureFlags.selection_form_toggles_below_submit_buttons : z83;
        boolean z253 = (i3 & 1073741824) != 0 ? readerFeatureFlags.offline_pair_unseen_reader_circuit_breaker : z84;
        boolean z254 = (i3 & Integer.MIN_VALUE) != 0 ? readerFeatureFlags.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests : z85;
        boolean z255 = z253;
        boolean z256 = (i4 & 1) != 0 ? readerFeatureFlags.enable_battery_not_charging_events_logging : z86;
        boolean z257 = (i4 & 2) != 0 ? readerFeatureFlags.enable_etna_cav_kfc_updates_check : z87;
        boolean z258 = (i4 & 4) != 0 ? readerFeatureFlags.enable_terminal_surcharging : z88;
        boolean z259 = (i4 & 8) != 0 ? readerFeatureFlags.enable_ios_deferred_logging : z89;
        boolean z260 = (i4 & 16) != 0 ? readerFeatureFlags.enable_apps_on_devices_settings_menu : z90;
        boolean z261 = (i4 & 32) != 0 ? readerFeatureFlags.offline_setup_intents_enabled : z91;
        boolean z262 = (i4 & 64) != 0 ? readerFeatureFlags.mobile_wallet_on_offline_setup_intents_enabled : z92;
        boolean z263 = (i4 & 128) != 0 ? readerFeatureFlags.enable_release_build_to_override_local_ip : z93;
        boolean z264 = (i4 & 256) != 0 ? readerFeatureFlags.disable_predip : z94;
        boolean z265 = (i4 & 512) != 0 ? readerFeatureFlags.enable_wpe_accessibility_volume_control : z95;
        boolean z266 = (i4 & 1024) != 0 ? readerFeatureFlags.enable_new_incremental_auth_ui : z96;
        boolean z267 = (i4 & 2048) != 0 ? readerFeatureFlags.enable_remove_duplicate_subtotal_string : z97;
        boolean z268 = (i4 & 4096) != 0 ? readerFeatureFlags.disable_force_pin_entry : z98;
        boolean z269 = (i4 & 8192) != 0 ? readerFeatureFlags.enable_ktlv_discrepancy_reporting_pcs : z99;
        boolean z270 = (i4 & 16384) != 0 ? readerFeatureFlags.enable_ktlv_pcs : z100;
        boolean z271 = (i4 & 32768) != 0 ? readerFeatureFlags.enable_collect_inputs_interstitial_screen : z101;
        boolean z272 = (i4 & 65536) != 0 ? readerFeatureFlags.enable_apps_on_devices_post_collect_merchant_ui : z102;
        boolean z273 = (i4 & 131072) != 0 ? readerFeatureFlags.enable_wpe_firmware_integrity_error_recovery : z103;
        boolean z274 = (i4 & 262144) != 0 ? readerFeatureFlags.enable_force_pin_entry_for_pi : z104;
        boolean z275 = (i4 & 524288) != 0 ? readerFeatureFlags.enable_force_pin_entry_for_si : z105;
        boolean z276 = (i4 & 1048576) != 0 ? readerFeatureFlags.enable_fixed_iot_reconnect_delay : z106;
        boolean z277 = (i4 & 2097152) != 0 ? readerFeatureFlags.enable_wpe_unauthenticated_device_integrity_error_recovery : z107;
        boolean z278 = (i4 & 4194304) != 0 ? readerFeatureFlags.enable_spos_girocard : z108;
        boolean z279 = (i4 & 8388608) != 0 ? readerFeatureFlags.enable_ttpa_run_attestation_before_pin : z109;
        boolean z280 = (i4 & 16777216) != 0 ? readerFeatureFlags.enable_new_background_iot_state_machine : z110;
        boolean z281 = (i4 & 33554432) != 0 ? readerFeatureFlags.enable_call_to_armada_for_boot_initialization : z111;
        boolean z282 = (i4 & 67108864) != 0 ? readerFeatureFlags.enable_ttpa_eftpos_payments : z112;
        boolean z283 = (i4 & 134217728) != 0 ? readerFeatureFlags.disable_card_inserted_from_prev_txn_check : z113;
        AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig4 = androidSystemEventLoggingConfig3;
        long j30 = (i4 & 268435456) != 0 ? readerFeatureFlags.apps_on_devices_start_transaction_timeout_millis : j11;
        boolean z284 = (i4 & 536870912) != 0 ? readerFeatureFlags.enable_apps_on_devices_start_transaction_timeout : z114;
        boolean z285 = (1073741824 & i4) != 0 ? readerFeatureFlags.enable_start_reader_activity_on_state : z115;
        boolean z286 = (i4 & Integer.MIN_VALUE) != 0 ? readerFeatureFlags.enable_process_messages_with_new_state_machine : z116;
        boolean z287 = z284;
        boolean z288 = (i5 & 1) != 0 ? readerFeatureFlags.enable_standalone_app : z117;
        boolean z289 = (i5 & 2) != 0 ? readerFeatureFlags.enable_mandatory_updates : z118;
        boolean z290 = z285;
        long j31 = (i5 & 4) != 0 ? readerFeatureFlags.smart_reader_transaction_summary_delay_millis : j12;
        long j32 = (i5 & 8) != 0 ? readerFeatureFlags.smart_reader_transaction_summary_unsuccessful_delay_millis : j13;
        boolean z291 = (i5 & 16) != 0 ? readerFeatureFlags.enable_wifi_radio_s710_alpha : z119;
        if ((i5 & 32) != 0) {
            j14 = j31;
            z120 = z277;
            z121 = z263;
            androidSystemEventLoggingConfig2 = androidSystemEventLoggingConfig4;
            byteStringUnknownFields = readerFeatureFlags.unknownFields();
            z122 = z280;
            z123 = z281;
            z124 = z282;
            z125 = z283;
            j15 = j30;
            z126 = z287;
            z127 = z288;
            z128 = z290;
            z129 = z289;
            j16 = j32;
            z163 = z291;
            z130 = z286;
            z131 = z266;
            z132 = z267;
            z133 = z268;
            z134 = z269;
            z135 = z270;
            z136 = z271;
            z137 = z272;
            z138 = z273;
            z139 = z274;
            z140 = z275;
            z141 = z276;
            z142 = z278;
            z143 = z279;
            z144 = z254;
            z145 = z251;
            z146 = z252;
            z147 = z255;
            z148 = z256;
            z149 = z257;
            z150 = z258;
            z151 = z259;
            z152 = z260;
            z153 = z261;
            z154 = z262;
            z155 = z264;
            z156 = z265;
            z157 = z244;
            j17 = j27;
            z158 = z245;
            z159 = z246;
            j18 = j28;
            j19 = j29;
            z160 = z248;
            z161 = z249;
            z162 = z250;
        } else {
            j14 = j31;
            z120 = z277;
            z121 = z263;
            androidSystemEventLoggingConfig2 = androidSystemEventLoggingConfig4;
            byteStringUnknownFields = byteString;
            z122 = z280;
            z123 = z281;
            z124 = z282;
            z125 = z283;
            j15 = j30;
            z126 = z287;
            z127 = z288;
            z128 = z290;
            z129 = z289;
            j16 = j32;
            z130 = z286;
            z131 = z266;
            z132 = z267;
            z133 = z268;
            z134 = z269;
            z135 = z270;
            z136 = z271;
            z137 = z272;
            z138 = z273;
            z139 = z274;
            z140 = z275;
            z141 = z276;
            z142 = z278;
            z143 = z279;
            z144 = z254;
            z145 = z251;
            z146 = z252;
            z147 = z255;
            z148 = z256;
            z149 = z257;
            z150 = z258;
            z151 = z259;
            z152 = z260;
            z153 = z261;
            z154 = z262;
            z155 = z264;
            z156 = z265;
            z157 = z244;
            j17 = j27;
            z158 = z245;
            z159 = z246;
            j18 = j28;
            j19 = j29;
            z160 = z248;
            z161 = z249;
            z162 = z250;
            z163 = z291;
        }
        return readerFeatureFlags.copy(z173, z165, z166, z167, j20, z168, z169, z170, z171, z172, z174, z175, z176, z177, z178, z179, z180, z181, z182, z183, z184, z185, z186, z187, z188, z189, z190, z191, z192, z193, z194, z195, z196, z197, z198, z199, z200, z201, z202, z203, z204, z205, z206, z207, z208, z209, z210, z211, z212, z213, z214, z215, z216, z217, z218, z219, z220, z221, z222, z223, j21, z226, z231, z227, z228, z229, z230, j22, j23, z232, j24, z235, z241, z236, z237, z238, z239, z240, j25, z242, z243, j26, z157, j17, z158, z159, j18, j19, z160, androidSystemEventLoggingConfig2, z161, z162, z145, z146, z147, z144, z148, z149, z150, z151, z152, z153, z154, z121, z155, z156, z131, z132, z133, z134, z135, z136, z137, z138, z139, z140, z141, z120, z142, z143, z122, z123, z124, z125, j15, z126, z128, z130, z127, z129, j14, j16, z163, byteStringUnknownFields);
    }

    public final ReaderFeatureFlags copy(boolean tipping_enabled, boolean allow_non_browser_env, boolean enable_server_driven, boolean enable_sdk_transaction_sessions, long server_driven_poll_interval_seconds, boolean enableBbposVersioning, boolean enableBbposDownloading, boolean enable_on_reader_tipping, boolean enable_updater_factory_reset_target, boolean enable_connect_and_collect, boolean enable_firmware_updates, boolean enable_firmware_update_retries, boolean enable_on_reader_cancel, boolean enable_roborabbit_ui_redesign, boolean enable_connect_and_collect_release, boolean enable_updater_new_oobe_flow, boolean enable_iot, boolean enable_offline_mode, boolean enable_wpe_updater_new_oobe_killswitch, boolean disable_iot, boolean enable_new_updates_flow, boolean rom_update_kill_switch, boolean enable_ktor_http_server, boolean wp3_tipping_android_sdk_circuit_breaker, boolean enable_usb_connectivity, boolean wp3_tipping_ios_sdk_circuit_breaker, boolean enable_logging_to_disk, boolean enable_moto_transactions, boolean enable_p2pe_apk_signing_verification, boolean disable_p2pe_apk_signing_verification, boolean enable_crash_button_in_diagnostics, boolean enable_gif_splash_and_lightmode, boolean bluetooth_auto_reconnect_android_sdk_enabled, boolean bluetooth_auto_reconnect_ios_sdk_enabled, boolean disable_bluetooth_auto_reconnect_android_sdk, boolean disable_bluetooth_auto_reconnect_ios_sdk, boolean enable_aod_default_app, boolean enable_new_bbpos_assets_update_components, boolean enable_eftpos_routing, boolean enable_new_payment_collection_android_sdk, boolean enable_client_logger_dispatcher, boolean tip_eligible_amounts_circuit_breaker, boolean enable_iot_client_respond_via_iot, boolean enable_sharing_device_report, boolean enable_traces_to_observability_data_endpoint, boolean enable_reader_bbpos_proxy, boolean disable_sdk_force_key_injection_when_unknown_keys, boolean shopify_display_reader_charge_summary, boolean shopify_bypass_reader_charge_summary, boolean enable_application_selection_in_quick_chip, boolean enable_configure_reboot_time_with_device_ui, boolean enable_armada_reauthentication_flow, boolean enable_send_bbpos_debug_logs_to_splunk, boolean enable_iot_hadr_polling, boolean enable_mainland_post_action_result, boolean enable_client_accessibility_app, boolean enable_mag_stripe_pin, boolean enable_bbpos_debug_logging, boolean configure_device_reboot_time_kill_switch, boolean enable_third_party_app_crash_logging, long third_party_app_crash_logging_poll_interval_millis, boolean enable_p2pe_rom_verification, boolean battery_charging_dialog_killswitch, boolean enable_ttpa_emv_config_from_backend, boolean enable_battery_charging_dialog, boolean internal_storage_quota_circuit_breaker, boolean disable_event_channel_on_reader, long device_plugged_in_but_not_charging_minimum_battery_discharge_percent, long device_plugged_in_but_not_charging_minimum_required_duration_millis, boolean enable_third_party_settings_intent_logging, long third_party_settings_intent_logging_poll_interval_millis, boolean enable_add_merchant_info_to_edge_headers, boolean enable_device_key_auto_recovery_flow, boolean enable_device_callback_key_recovery_flow, boolean enable_forms_on_sdk, boolean enable_customer_cancellation_feature, boolean enable_background_update_split_download_and_install, boolean enable_device_temperature_logging, long device_temperature_logging_poll_interval_millis, boolean enable_warden_release_serial_port, boolean enable_rom_sdk_kernel_logging, long rom_sdk_kernel_logging_poll_interval_millis, boolean enable_kill_for_memory_event_logging, long kill_for_memory_event_logging_poll_interval_millis, boolean migrate_iot_endpoint_to_iot_service, boolean enable_client_accessible_pin, long rom_install_timeout_non_seamless_updates_millis, long rom_install_timeout_seamless_updates_millis, boolean enable_ttpa_pin, AndroidSystemEventLoggingConfig android_system_event_logging, boolean enable_dcc, boolean enable_ttp_auto_reconnect, boolean enable_iot_respond_via_rpc, boolean selection_form_toggles_below_submit_buttons, boolean offline_pair_unseen_reader_circuit_breaker, boolean enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests, boolean enable_battery_not_charging_events_logging, boolean enable_etna_cav_kfc_updates_check, boolean enable_terminal_surcharging, boolean enable_ios_deferred_logging, boolean enable_apps_on_devices_settings_menu, boolean offline_setup_intents_enabled, boolean mobile_wallet_on_offline_setup_intents_enabled, boolean enable_release_build_to_override_local_ip, boolean disable_predip, boolean enable_wpe_accessibility_volume_control, boolean enable_new_incremental_auth_ui, boolean enable_remove_duplicate_subtotal_string, boolean disable_force_pin_entry, boolean enable_ktlv_discrepancy_reporting_pcs, boolean enable_ktlv_pcs, boolean enable_collect_inputs_interstitial_screen, boolean enable_apps_on_devices_post_collect_merchant_ui, boolean enable_wpe_firmware_integrity_error_recovery, boolean enable_force_pin_entry_for_pi, boolean enable_force_pin_entry_for_si, boolean enable_fixed_iot_reconnect_delay, boolean enable_wpe_unauthenticated_device_integrity_error_recovery, boolean enable_spos_girocard, boolean enable_ttpa_run_attestation_before_pin, boolean enable_new_background_iot_state_machine, boolean enable_call_to_armada_for_boot_initialization, boolean enable_ttpa_eftpos_payments, boolean disable_card_inserted_from_prev_txn_check, long apps_on_devices_start_transaction_timeout_millis, boolean enable_apps_on_devices_start_transaction_timeout, boolean enable_start_reader_activity_on_state, boolean enable_process_messages_with_new_state_machine, boolean enable_standalone_app, boolean enable_mandatory_updates, long smart_reader_transaction_summary_delay_millis, long smart_reader_transaction_summary_unsuccessful_delay_millis, boolean enable_wifi_radio_s710_alpha, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReaderFeatureFlags(tipping_enabled, allow_non_browser_env, enable_server_driven, enable_sdk_transaction_sessions, server_driven_poll_interval_seconds, enableBbposVersioning, enableBbposDownloading, enable_on_reader_tipping, enable_updater_factory_reset_target, enable_connect_and_collect, enable_firmware_updates, enable_firmware_update_retries, enable_on_reader_cancel, enable_roborabbit_ui_redesign, enable_connect_and_collect_release, enable_updater_new_oobe_flow, enable_iot, enable_offline_mode, enable_wpe_updater_new_oobe_killswitch, disable_iot, enable_new_updates_flow, rom_update_kill_switch, enable_ktor_http_server, wp3_tipping_android_sdk_circuit_breaker, enable_usb_connectivity, wp3_tipping_ios_sdk_circuit_breaker, enable_logging_to_disk, enable_moto_transactions, enable_p2pe_apk_signing_verification, disable_p2pe_apk_signing_verification, enable_crash_button_in_diagnostics, enable_gif_splash_and_lightmode, bluetooth_auto_reconnect_android_sdk_enabled, bluetooth_auto_reconnect_ios_sdk_enabled, disable_bluetooth_auto_reconnect_android_sdk, disable_bluetooth_auto_reconnect_ios_sdk, enable_aod_default_app, enable_new_bbpos_assets_update_components, enable_eftpos_routing, enable_new_payment_collection_android_sdk, enable_client_logger_dispatcher, tip_eligible_amounts_circuit_breaker, enable_iot_client_respond_via_iot, enable_sharing_device_report, enable_traces_to_observability_data_endpoint, enable_reader_bbpos_proxy, disable_sdk_force_key_injection_when_unknown_keys, shopify_display_reader_charge_summary, shopify_bypass_reader_charge_summary, enable_application_selection_in_quick_chip, enable_configure_reboot_time_with_device_ui, enable_armada_reauthentication_flow, enable_send_bbpos_debug_logs_to_splunk, enable_iot_hadr_polling, enable_mainland_post_action_result, enable_client_accessibility_app, enable_mag_stripe_pin, enable_bbpos_debug_logging, configure_device_reboot_time_kill_switch, enable_third_party_app_crash_logging, third_party_app_crash_logging_poll_interval_millis, enable_p2pe_rom_verification, battery_charging_dialog_killswitch, enable_ttpa_emv_config_from_backend, enable_battery_charging_dialog, internal_storage_quota_circuit_breaker, disable_event_channel_on_reader, device_plugged_in_but_not_charging_minimum_battery_discharge_percent, device_plugged_in_but_not_charging_minimum_required_duration_millis, enable_third_party_settings_intent_logging, third_party_settings_intent_logging_poll_interval_millis, enable_add_merchant_info_to_edge_headers, enable_device_key_auto_recovery_flow, enable_device_callback_key_recovery_flow, enable_forms_on_sdk, enable_customer_cancellation_feature, enable_background_update_split_download_and_install, enable_device_temperature_logging, device_temperature_logging_poll_interval_millis, enable_warden_release_serial_port, enable_rom_sdk_kernel_logging, rom_sdk_kernel_logging_poll_interval_millis, enable_kill_for_memory_event_logging, kill_for_memory_event_logging_poll_interval_millis, migrate_iot_endpoint_to_iot_service, enable_client_accessible_pin, rom_install_timeout_non_seamless_updates_millis, rom_install_timeout_seamless_updates_millis, enable_ttpa_pin, android_system_event_logging, enable_dcc, enable_ttp_auto_reconnect, enable_iot_respond_via_rpc, selection_form_toggles_below_submit_buttons, offline_pair_unseen_reader_circuit_breaker, enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests, enable_battery_not_charging_events_logging, enable_etna_cav_kfc_updates_check, enable_terminal_surcharging, enable_ios_deferred_logging, enable_apps_on_devices_settings_menu, offline_setup_intents_enabled, mobile_wallet_on_offline_setup_intents_enabled, enable_release_build_to_override_local_ip, disable_predip, enable_wpe_accessibility_volume_control, enable_new_incremental_auth_ui, enable_remove_duplicate_subtotal_string, disable_force_pin_entry, enable_ktlv_discrepancy_reporting_pcs, enable_ktlv_pcs, enable_collect_inputs_interstitial_screen, enable_apps_on_devices_post_collect_merchant_ui, enable_wpe_firmware_integrity_error_recovery, enable_force_pin_entry_for_pi, enable_force_pin_entry_for_si, enable_fixed_iot_reconnect_delay, enable_wpe_unauthenticated_device_integrity_error_recovery, enable_spos_girocard, enable_ttpa_run_attestation_before_pin, enable_new_background_iot_state_machine, enable_call_to_armada_for_boot_initialization, enable_ttpa_eftpos_payments, disable_card_inserted_from_prev_txn_check, apps_on_devices_start_transaction_timeout_millis, enable_apps_on_devices_start_transaction_timeout, enable_start_reader_activity_on_state, enable_process_messages_with_new_state_machine, enable_standalone_app, enable_mandatory_updates, smart_reader_transaction_summary_delay_millis, smart_reader_transaction_summary_unsuccessful_delay_millis, enable_wifi_radio_s710_alpha, unknownFields);
    }

    /* JADX INFO: compiled from: ReaderFeatureFlags.kt */
    @Metadata(d1 = {"\u0000%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0003\b\u0084\u0001\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\t\u0010\u008c\u0001\u001a\u00020\u0002H\u0016J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005H\u0007J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0005J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0005J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0005J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0005J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0005J\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0005H\u0007J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0005J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0005J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0005J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0005J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0005J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0005J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0005J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0005J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u0005J\u000e\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0005J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u0005J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0005J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0005J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0005J\u0010\u0010-\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0005H\u0007J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0005H\u0007J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010/\u001a\u00020\u0005J\u000e\u00100\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0005J\u000e\u00101\u001a\u00020\u00002\u0006\u00101\u001a\u00020\u0005J\u000e\u00102\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0005J\u000e\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u0005J\u000e\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0005J\u0010\u00105\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0005H\u0007J\u000e\u00106\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u0005J\u0010\u00107\u001a\u00020\u00002\u0006\u00107\u001a\u00020\u0005H\u0007J\u000e\u00108\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0005J\u000e\u00109\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0005J\u000e\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u0005J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\u0005J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0005J\u0010\u0010=\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u0005H\u0007J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0005J\u0010\u0010?\u001a\u00020\u00002\u0006\u0010?\u001a\u00020\u0005H\u0007J\u0010\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\u0005H\u0007J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u0005J\u000e\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0005J\u000e\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\u0005J\u000e\u0010D\u001a\u00020\u00002\u0006\u0010D\u001a\u00020\u0005J\u000e\u0010E\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u0005J\u000e\u0010F\u001a\u00020\u00002\u0006\u0010F\u001a\u00020\u0005J\u0010\u0010G\u001a\u00020\u00002\u0006\u0010G\u001a\u00020\u0005H\u0007J\u000e\u0010H\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u0005J\u000e\u0010I\u001a\u00020\u00002\u0006\u0010I\u001a\u00020\u0005J\u0010\u0010J\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0005H\u0007J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\u0005J\u000e\u0010L\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u0005J\u000e\u0010M\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u0005J\u0010\u0010N\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0005H\u0007J\u000e\u0010O\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\u0005J\u000e\u0010P\u001a\u00020\u00002\u0006\u0010P\u001a\u00020\u0005J\u0010\u0010Q\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0005H\u0007J\u000e\u0010R\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\u0005J\u0010\u0010S\u001a\u00020\u00002\u0006\u0010S\u001a\u00020\u0005H\u0007J\u0010\u0010T\u001a\u00020\u00002\u0006\u0010T\u001a\u00020\u0005H\u0007J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0005J\u000e\u0010V\u001a\u00020\u00002\u0006\u0010V\u001a\u00020\u0005J\u000e\u0010W\u001a\u00020\u00002\u0006\u0010W\u001a\u00020\u0005J\u0010\u0010X\u001a\u00020\u00002\u0006\u0010X\u001a\u00020\u0005H\u0007J\u000e\u0010Y\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0005J\u0010\u0010Z\u001a\u00020\u00002\u0006\u0010Z\u001a\u00020\u0005H\u0007J\u0010\u0010[\u001a\u00020\u00002\u0006\u0010[\u001a\u00020\u0005H\u0007J\u000e\u0010\\\u001a\u00020\u00002\u0006\u0010\\\u001a\u00020\u0005J\u000e\u0010]\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\u0005J\u000e\u0010^\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u0005J\u0010\u0010_\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u0005H\u0007J\u000e\u0010`\u001a\u00020\u00002\u0006\u0010`\u001a\u00020\u0005J\u000e\u0010a\u001a\u00020\u00002\u0006\u0010a\u001a\u00020\u0005J\u000e\u0010b\u001a\u00020\u00002\u0006\u0010b\u001a\u00020\u0005J\u000e\u0010c\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\u0005J\u000e\u0010d\u001a\u00020\u00002\u0006\u0010d\u001a\u00020\u0005J\u000e\u0010e\u001a\u00020\u00002\u0006\u0010e\u001a\u00020\u0005J\u000e\u0010f\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\u0005J\u000e\u0010g\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\u0005J\u000e\u0010h\u001a\u00020\u00002\u0006\u0010h\u001a\u00020\u0005J\u000e\u0010i\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\u0005J\u000e\u0010j\u001a\u00020\u00002\u0006\u0010j\u001a\u00020\u0005J\u000e\u0010k\u001a\u00020\u00002\u0006\u0010k\u001a\u00020\u0005J\u000e\u0010l\u001a\u00020\u00002\u0006\u0010l\u001a\u00020\u0005J\u0010\u0010m\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u0005H\u0007J\u0010\u0010n\u001a\u00020\u00002\u0006\u0010n\u001a\u00020\u0005H\u0007J\u000e\u0010o\u001a\u00020\u00002\u0006\u0010o\u001a\u00020\u0005J\u000e\u0010p\u001a\u00020\u00002\u0006\u0010p\u001a\u00020\u0005J\u000e\u0010q\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u0005J\u000e\u0010r\u001a\u00020\u00002\u0006\u0010r\u001a\u00020\u0005J\u000e\u0010s\u001a\u00020\u00002\u0006\u0010s\u001a\u00020\u0005J\u000e\u0010t\u001a\u00020\u00002\u0006\u0010t\u001a\u00020\u0005J\u000e\u0010u\u001a\u00020\u00002\u0006\u0010u\u001a\u00020\u0005J\u000e\u0010v\u001a\u00020\u00002\u0006\u0010v\u001a\u00020\u0005J\u000e\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\tJ\u000e\u0010x\u001a\u00020\u00002\u0006\u0010x\u001a\u00020\u0005J\u000e\u0010y\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u0005J\u0010\u0010z\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u0005H\u0007J\u000e\u0010{\u001a\u00020\u00002\u0006\u0010{\u001a\u00020\u0005J\u000e\u0010|\u001a\u00020\u00002\u0006\u0010|\u001a\u00020\tJ\u000e\u0010}\u001a\u00020\u00002\u0006\u0010}\u001a\u00020\tJ\u000e\u0010~\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\tJ\u000e\u0010\u007f\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u0005J\u0010\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0080\u0001\u001a\u00020\u0005J\u0012\u0010\u0081\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\tH\u0007J\u0010\u0010\u0082\u0001\u001a\u00020\u00002\u0007\u0010\u0082\u0001\u001a\u00020\u0005J\u0012\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0083\u0001\u001a\u00020\u0005H\u0007J\u0010\u0010\u0084\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0001\u001a\u00020\tJ\u0010\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u00020\tJ\u0010\u0010\u0086\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020\tJ\u0010\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0087\u0001\u001a\u00020\tJ\u0010\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0088\u0001\u001a\u00020\u0005J\u0010\u0010\u0089\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0005J\u0010\u0010\u008a\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u0005J\u0010\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u008b\u0001\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010 \u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010%\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010&\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010'\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010*\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010,\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010.\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010/\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00100\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00101\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00102\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00103\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00104\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00105\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00106\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00107\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00108\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00109\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010:\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010;\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010<\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010=\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010>\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010?\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010@\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010A\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010B\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010C\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010D\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010E\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010F\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010G\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010H\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010I\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010J\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010K\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010L\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010M\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010N\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010O\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010P\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010Q\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010R\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010S\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010T\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010U\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010V\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010W\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010X\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010Y\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010Z\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010[\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\\\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010]\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010^\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010_\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010`\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010a\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010d\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010g\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010h\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010i\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010j\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010k\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010l\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010m\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010o\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010p\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010q\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010s\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010u\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010v\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010w\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010x\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010y\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010z\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010{\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010|\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010}\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010~\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u007f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0080\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0081\u0001\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0082\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0083\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0084\u0001\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0085\u0001\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0086\u0001\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0087\u0001\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0088\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0089\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u008a\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u008b\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u008d\u0001"}, d2 = {"Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "()V", "allow_non_browser_env", "", "android_system_event_logging", "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;", "apps_on_devices_start_transaction_timeout_millis", "", "battery_charging_dialog_killswitch", "bluetooth_auto_reconnect_android_sdk_enabled", "bluetooth_auto_reconnect_ios_sdk_enabled", "configure_device_reboot_time_kill_switch", "device_plugged_in_but_not_charging_minimum_battery_discharge_percent", "device_plugged_in_but_not_charging_minimum_required_duration_millis", "device_temperature_logging_poll_interval_millis", "disable_bluetooth_auto_reconnect_android_sdk", "disable_bluetooth_auto_reconnect_ios_sdk", "disable_card_inserted_from_prev_txn_check", "disable_event_channel_on_reader", "disable_force_pin_entry", "disable_iot", "disable_p2pe_apk_signing_verification", "disable_predip", "disable_sdk_force_key_injection_when_unknown_keys", "enableBbposDownloading", "enableBbposVersioning", "enable_add_merchant_info_to_edge_headers", "enable_aod_default_app", "enable_application_selection_in_quick_chip", "enable_apps_on_devices_post_collect_merchant_ui", "enable_apps_on_devices_settings_menu", "enable_apps_on_devices_start_transaction_timeout", "enable_armada_reauthentication_flow", "enable_background_update_split_download_and_install", "enable_battery_charging_dialog", "enable_battery_not_charging_events_logging", "enable_bbpos_debug_logging", "enable_call_to_armada_for_boot_initialization", "enable_client_accessibility_app", "enable_client_accessible_pin", "enable_client_logger_dispatcher", "enable_collect_inputs_interstitial_screen", "enable_configure_reboot_time_with_device_ui", "enable_connect_and_collect", "enable_connect_and_collect_release", "enable_crash_button_in_diagnostics", "enable_customer_cancellation_feature", "enable_dcc", "enable_device_callback_key_recovery_flow", "enable_device_key_auto_recovery_flow", "enable_device_temperature_logging", "enable_eftpos_routing", "enable_etna_cav_kfc_updates_check", "enable_firmware_update_retries", "enable_firmware_updates", "enable_fixed_iot_reconnect_delay", "enable_force_pin_entry_for_pi", "enable_force_pin_entry_for_si", "enable_forms_on_sdk", "enable_gif_splash_and_lightmode", "enable_ios_deferred_logging", "enable_iot", "enable_iot_client_respond_via_iot", "enable_iot_hadr_polling", "enable_iot_respond_via_rpc", "enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests", "enable_kill_for_memory_event_logging", "enable_ktlv_discrepancy_reporting_pcs", "enable_ktlv_pcs", "enable_ktor_http_server", "enable_logging_to_disk", "enable_mag_stripe_pin", "enable_mainland_post_action_result", "enable_mandatory_updates", "enable_moto_transactions", "enable_new_background_iot_state_machine", "enable_new_bbpos_assets_update_components", "enable_new_incremental_auth_ui", "enable_new_payment_collection_android_sdk", "enable_new_updates_flow", "enable_offline_mode", "enable_on_reader_cancel", "enable_on_reader_tipping", "enable_p2pe_apk_signing_verification", "enable_p2pe_rom_verification", "enable_process_messages_with_new_state_machine", "enable_reader_bbpos_proxy", "enable_release_build_to_override_local_ip", "enable_remove_duplicate_subtotal_string", "enable_roborabbit_ui_redesign", "enable_rom_sdk_kernel_logging", "enable_sdk_transaction_sessions", "enable_send_bbpos_debug_logs_to_splunk", "enable_server_driven", "enable_sharing_device_report", "enable_spos_girocard", "enable_standalone_app", "enable_start_reader_activity_on_state", "enable_terminal_surcharging", "enable_third_party_app_crash_logging", "enable_third_party_settings_intent_logging", "enable_traces_to_observability_data_endpoint", "enable_ttp_auto_reconnect", "enable_ttpa_eftpos_payments", "enable_ttpa_emv_config_from_backend", "enable_ttpa_pin", "enable_ttpa_run_attestation_before_pin", "enable_updater_factory_reset_target", "enable_updater_new_oobe_flow", "enable_usb_connectivity", "enable_warden_release_serial_port", "enable_wifi_radio_s710_alpha", "enable_wpe_accessibility_volume_control", "enable_wpe_firmware_integrity_error_recovery", "enable_wpe_unauthenticated_device_integrity_error_recovery", "enable_wpe_updater_new_oobe_killswitch", "internal_storage_quota_circuit_breaker", "kill_for_memory_event_logging_poll_interval_millis", "migrate_iot_endpoint_to_iot_service", "mobile_wallet_on_offline_setup_intents_enabled", "offline_pair_unseen_reader_circuit_breaker", "offline_setup_intents_enabled", "rom_install_timeout_non_seamless_updates_millis", "rom_install_timeout_seamless_updates_millis", "rom_sdk_kernel_logging_poll_interval_millis", "rom_update_kill_switch", "selection_form_toggles_below_submit_buttons", "server_driven_poll_interval_seconds", "shopify_bypass_reader_charge_summary", "shopify_display_reader_charge_summary", "smart_reader_transaction_summary_delay_millis", "smart_reader_transaction_summary_unsuccessful_delay_millis", "third_party_app_crash_logging_poll_interval_millis", "third_party_settings_intent_logging_poll_interval_millis", "tip_eligible_amounts_circuit_breaker", "tipping_enabled", "wp3_tipping_android_sdk_circuit_breaker", "wp3_tipping_ios_sdk_circuit_breaker", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReaderFeatureFlags, Builder> {
        public boolean allow_non_browser_env;
        public AndroidSystemEventLoggingConfig android_system_event_logging;
        public long apps_on_devices_start_transaction_timeout_millis;
        public boolean battery_charging_dialog_killswitch;
        public boolean bluetooth_auto_reconnect_android_sdk_enabled;
        public boolean bluetooth_auto_reconnect_ios_sdk_enabled;
        public boolean configure_device_reboot_time_kill_switch;
        public long device_plugged_in_but_not_charging_minimum_battery_discharge_percent;
        public long device_plugged_in_but_not_charging_minimum_required_duration_millis;
        public long device_temperature_logging_poll_interval_millis;
        public boolean disable_bluetooth_auto_reconnect_android_sdk;
        public boolean disable_bluetooth_auto_reconnect_ios_sdk;
        public boolean disable_card_inserted_from_prev_txn_check;
        public boolean disable_event_channel_on_reader;
        public boolean disable_force_pin_entry;
        public boolean disable_iot;
        public boolean disable_p2pe_apk_signing_verification;
        public boolean disable_predip;
        public boolean disable_sdk_force_key_injection_when_unknown_keys;
        public boolean enableBbposDownloading;
        public boolean enableBbposVersioning;
        public boolean enable_add_merchant_info_to_edge_headers;
        public boolean enable_aod_default_app;
        public boolean enable_application_selection_in_quick_chip;
        public boolean enable_apps_on_devices_post_collect_merchant_ui;
        public boolean enable_apps_on_devices_settings_menu;
        public boolean enable_apps_on_devices_start_transaction_timeout;
        public boolean enable_armada_reauthentication_flow;
        public boolean enable_background_update_split_download_and_install;
        public boolean enable_battery_charging_dialog;
        public boolean enable_battery_not_charging_events_logging;
        public boolean enable_bbpos_debug_logging;
        public boolean enable_call_to_armada_for_boot_initialization;
        public boolean enable_client_accessibility_app;
        public boolean enable_client_accessible_pin;
        public boolean enable_client_logger_dispatcher;
        public boolean enable_collect_inputs_interstitial_screen;
        public boolean enable_configure_reboot_time_with_device_ui;
        public boolean enable_connect_and_collect;
        public boolean enable_connect_and_collect_release;
        public boolean enable_crash_button_in_diagnostics;
        public boolean enable_customer_cancellation_feature;
        public boolean enable_dcc;
        public boolean enable_device_callback_key_recovery_flow;
        public boolean enable_device_key_auto_recovery_flow;
        public boolean enable_device_temperature_logging;
        public boolean enable_eftpos_routing;
        public boolean enable_etna_cav_kfc_updates_check;
        public boolean enable_firmware_update_retries;
        public boolean enable_firmware_updates;
        public boolean enable_fixed_iot_reconnect_delay;
        public boolean enable_force_pin_entry_for_pi;
        public boolean enable_force_pin_entry_for_si;
        public boolean enable_forms_on_sdk;
        public boolean enable_gif_splash_and_lightmode;
        public boolean enable_ios_deferred_logging;
        public boolean enable_iot;
        public boolean enable_iot_client_respond_via_iot;
        public boolean enable_iot_hadr_polling;
        public boolean enable_iot_respond_via_rpc;
        public boolean enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests;
        public boolean enable_kill_for_memory_event_logging;
        public boolean enable_ktlv_discrepancy_reporting_pcs;
        public boolean enable_ktlv_pcs;
        public boolean enable_ktor_http_server;
        public boolean enable_logging_to_disk;
        public boolean enable_mag_stripe_pin;
        public boolean enable_mainland_post_action_result;
        public boolean enable_mandatory_updates;
        public boolean enable_moto_transactions;
        public boolean enable_new_background_iot_state_machine;
        public boolean enable_new_bbpos_assets_update_components;
        public boolean enable_new_incremental_auth_ui;
        public boolean enable_new_payment_collection_android_sdk;
        public boolean enable_new_updates_flow;
        public boolean enable_offline_mode;
        public boolean enable_on_reader_cancel;
        public boolean enable_on_reader_tipping;
        public boolean enable_p2pe_apk_signing_verification;
        public boolean enable_p2pe_rom_verification;
        public boolean enable_process_messages_with_new_state_machine;
        public boolean enable_reader_bbpos_proxy;
        public boolean enable_release_build_to_override_local_ip;
        public boolean enable_remove_duplicate_subtotal_string;
        public boolean enable_roborabbit_ui_redesign;
        public boolean enable_rom_sdk_kernel_logging;
        public boolean enable_sdk_transaction_sessions;
        public boolean enable_send_bbpos_debug_logs_to_splunk;
        public boolean enable_server_driven;
        public boolean enable_sharing_device_report;
        public boolean enable_spos_girocard;
        public boolean enable_standalone_app;
        public boolean enable_start_reader_activity_on_state;
        public boolean enable_terminal_surcharging;
        public boolean enable_third_party_app_crash_logging;
        public boolean enable_third_party_settings_intent_logging;
        public boolean enable_traces_to_observability_data_endpoint;
        public boolean enable_ttp_auto_reconnect;
        public boolean enable_ttpa_eftpos_payments;
        public boolean enable_ttpa_emv_config_from_backend;
        public boolean enable_ttpa_pin;
        public boolean enable_ttpa_run_attestation_before_pin;
        public boolean enable_updater_factory_reset_target;
        public boolean enable_updater_new_oobe_flow;
        public boolean enable_usb_connectivity;
        public boolean enable_warden_release_serial_port;
        public boolean enable_wifi_radio_s710_alpha;
        public boolean enable_wpe_accessibility_volume_control;
        public boolean enable_wpe_firmware_integrity_error_recovery;
        public boolean enable_wpe_unauthenticated_device_integrity_error_recovery;
        public boolean enable_wpe_updater_new_oobe_killswitch;
        public boolean internal_storage_quota_circuit_breaker;
        public long kill_for_memory_event_logging_poll_interval_millis;
        public boolean migrate_iot_endpoint_to_iot_service;
        public boolean mobile_wallet_on_offline_setup_intents_enabled;
        public boolean offline_pair_unseen_reader_circuit_breaker;
        public boolean offline_setup_intents_enabled;
        public long rom_install_timeout_non_seamless_updates_millis;
        public long rom_install_timeout_seamless_updates_millis;
        public long rom_sdk_kernel_logging_poll_interval_millis;
        public boolean rom_update_kill_switch;
        public boolean selection_form_toggles_below_submit_buttons;
        public long server_driven_poll_interval_seconds;
        public boolean shopify_bypass_reader_charge_summary;
        public boolean shopify_display_reader_charge_summary;
        public long smart_reader_transaction_summary_delay_millis;
        public long smart_reader_transaction_summary_unsuccessful_delay_millis;
        public long third_party_app_crash_logging_poll_interval_millis;
        public long third_party_settings_intent_logging_poll_interval_millis;
        public boolean tip_eligible_amounts_circuit_breaker;
        public boolean tipping_enabled;
        public boolean wp3_tipping_android_sdk_circuit_breaker;
        public boolean wp3_tipping_ios_sdk_circuit_breaker;

        public final Builder tipping_enabled(boolean tipping_enabled) {
            this.tipping_enabled = tipping_enabled;
            return this;
        }

        public final Builder allow_non_browser_env(boolean allow_non_browser_env) {
            this.allow_non_browser_env = allow_non_browser_env;
            return this;
        }

        @Deprecated(message = "enable_server_driven is deprecated")
        public final Builder enable_server_driven(boolean enable_server_driven) {
            this.enable_server_driven = enable_server_driven;
            return this;
        }

        public final Builder enable_sdk_transaction_sessions(boolean enable_sdk_transaction_sessions) {
            this.enable_sdk_transaction_sessions = enable_sdk_transaction_sessions;
            return this;
        }

        @Deprecated(message = "server_driven_poll_interval_seconds is deprecated")
        public final Builder server_driven_poll_interval_seconds(long server_driven_poll_interval_seconds) {
            this.server_driven_poll_interval_seconds = server_driven_poll_interval_seconds;
            return this;
        }

        public final Builder enableBbposVersioning(boolean enableBbposVersioning) {
            this.enableBbposVersioning = enableBbposVersioning;
            return this;
        }

        public final Builder enableBbposDownloading(boolean enableBbposDownloading) {
            this.enableBbposDownloading = enableBbposDownloading;
            return this;
        }

        @Deprecated(message = "enable_on_reader_tipping is deprecated")
        public final Builder enable_on_reader_tipping(boolean enable_on_reader_tipping) {
            this.enable_on_reader_tipping = enable_on_reader_tipping;
            return this;
        }

        @Deprecated(message = "enable_updater_factory_reset_target is deprecated")
        public final Builder enable_updater_factory_reset_target(boolean enable_updater_factory_reset_target) {
            this.enable_updater_factory_reset_target = enable_updater_factory_reset_target;
            return this;
        }

        @Deprecated(message = "enable_connect_and_collect is deprecated")
        public final Builder enable_connect_and_collect(boolean enable_connect_and_collect) {
            this.enable_connect_and_collect = enable_connect_and_collect;
            return this;
        }

        public final Builder enable_firmware_updates(boolean enable_firmware_updates) {
            this.enable_firmware_updates = enable_firmware_updates;
            return this;
        }

        @Deprecated(message = "enable_firmware_update_retries is deprecated")
        public final Builder enable_firmware_update_retries(boolean enable_firmware_update_retries) {
            this.enable_firmware_update_retries = enable_firmware_update_retries;
            return this;
        }

        @Deprecated(message = "enable_on_reader_cancel is deprecated")
        public final Builder enable_on_reader_cancel(boolean enable_on_reader_cancel) {
            this.enable_on_reader_cancel = enable_on_reader_cancel;
            return this;
        }

        @Deprecated(message = "enable_roborabbit_ui_redesign is deprecated")
        public final Builder enable_roborabbit_ui_redesign(boolean enable_roborabbit_ui_redesign) {
            this.enable_roborabbit_ui_redesign = enable_roborabbit_ui_redesign;
            return this;
        }

        @Deprecated(message = "enable_connect_and_collect_release is deprecated")
        public final Builder enable_connect_and_collect_release(boolean enable_connect_and_collect_release) {
            this.enable_connect_and_collect_release = enable_connect_and_collect_release;
            return this;
        }

        @Deprecated(message = "enable_updater_new_oobe_flow is deprecated")
        public final Builder enable_updater_new_oobe_flow(boolean enable_updater_new_oobe_flow) {
            this.enable_updater_new_oobe_flow = enable_updater_new_oobe_flow;
            return this;
        }

        @Deprecated(message = "enable_iot is deprecated")
        public final Builder enable_iot(boolean enable_iot) {
            this.enable_iot = enable_iot;
            return this;
        }

        public final Builder enable_offline_mode(boolean enable_offline_mode) {
            this.enable_offline_mode = enable_offline_mode;
            return this;
        }

        public final Builder enable_wpe_updater_new_oobe_killswitch(boolean enable_wpe_updater_new_oobe_killswitch) {
            this.enable_wpe_updater_new_oobe_killswitch = enable_wpe_updater_new_oobe_killswitch;
            return this;
        }

        public final Builder disable_iot(boolean disable_iot) {
            this.disable_iot = disable_iot;
            return this;
        }

        @Deprecated(message = "enable_new_updates_flow is deprecated")
        public final Builder enable_new_updates_flow(boolean enable_new_updates_flow) {
            this.enable_new_updates_flow = enable_new_updates_flow;
            return this;
        }

        public final Builder rom_update_kill_switch(boolean rom_update_kill_switch) {
            this.rom_update_kill_switch = rom_update_kill_switch;
            return this;
        }

        @Deprecated(message = "enable_ktor_http_server is deprecated")
        public final Builder enable_ktor_http_server(boolean enable_ktor_http_server) {
            this.enable_ktor_http_server = enable_ktor_http_server;
            return this;
        }

        public final Builder wp3_tipping_android_sdk_circuit_breaker(boolean wp3_tipping_android_sdk_circuit_breaker) {
            this.wp3_tipping_android_sdk_circuit_breaker = wp3_tipping_android_sdk_circuit_breaker;
            return this;
        }

        public final Builder enable_usb_connectivity(boolean enable_usb_connectivity) {
            this.enable_usb_connectivity = enable_usb_connectivity;
            return this;
        }

        public final Builder wp3_tipping_ios_sdk_circuit_breaker(boolean wp3_tipping_ios_sdk_circuit_breaker) {
            this.wp3_tipping_ios_sdk_circuit_breaker = wp3_tipping_ios_sdk_circuit_breaker;
            return this;
        }

        public final Builder enable_logging_to_disk(boolean enable_logging_to_disk) {
            this.enable_logging_to_disk = enable_logging_to_disk;
            return this;
        }

        public final Builder enable_moto_transactions(boolean enable_moto_transactions) {
            this.enable_moto_transactions = enable_moto_transactions;
            return this;
        }

        public final Builder enable_p2pe_apk_signing_verification(boolean enable_p2pe_apk_signing_verification) {
            this.enable_p2pe_apk_signing_verification = enable_p2pe_apk_signing_verification;
            return this;
        }

        public final Builder disable_p2pe_apk_signing_verification(boolean disable_p2pe_apk_signing_verification) {
            this.disable_p2pe_apk_signing_verification = disable_p2pe_apk_signing_verification;
            return this;
        }

        public final Builder enable_crash_button_in_diagnostics(boolean enable_crash_button_in_diagnostics) {
            this.enable_crash_button_in_diagnostics = enable_crash_button_in_diagnostics;
            return this;
        }

        @Deprecated(message = "enable_gif_splash_and_lightmode is deprecated")
        public final Builder enable_gif_splash_and_lightmode(boolean enable_gif_splash_and_lightmode) {
            this.enable_gif_splash_and_lightmode = enable_gif_splash_and_lightmode;
            return this;
        }

        public final Builder bluetooth_auto_reconnect_android_sdk_enabled(boolean bluetooth_auto_reconnect_android_sdk_enabled) {
            this.bluetooth_auto_reconnect_android_sdk_enabled = bluetooth_auto_reconnect_android_sdk_enabled;
            return this;
        }

        public final Builder bluetooth_auto_reconnect_ios_sdk_enabled(boolean bluetooth_auto_reconnect_ios_sdk_enabled) {
            this.bluetooth_auto_reconnect_ios_sdk_enabled = bluetooth_auto_reconnect_ios_sdk_enabled;
            return this;
        }

        public final Builder disable_bluetooth_auto_reconnect_android_sdk(boolean disable_bluetooth_auto_reconnect_android_sdk) {
            this.disable_bluetooth_auto_reconnect_android_sdk = disable_bluetooth_auto_reconnect_android_sdk;
            return this;
        }

        public final Builder disable_bluetooth_auto_reconnect_ios_sdk(boolean disable_bluetooth_auto_reconnect_ios_sdk) {
            this.disable_bluetooth_auto_reconnect_ios_sdk = disable_bluetooth_auto_reconnect_ios_sdk;
            return this;
        }

        @Deprecated(message = "enable_aod_default_app is deprecated")
        public final Builder enable_aod_default_app(boolean enable_aod_default_app) {
            this.enable_aod_default_app = enable_aod_default_app;
            return this;
        }

        @Deprecated(message = "enable_new_bbpos_assets_update_components is deprecated")
        public final Builder enable_new_bbpos_assets_update_components(boolean enable_new_bbpos_assets_update_components) {
            this.enable_new_bbpos_assets_update_components = enable_new_bbpos_assets_update_components;
            return this;
        }

        @Deprecated(message = "enable_eftpos_routing is deprecated")
        public final Builder enable_eftpos_routing(boolean enable_eftpos_routing) {
            this.enable_eftpos_routing = enable_eftpos_routing;
            return this;
        }

        public final Builder enable_new_payment_collection_android_sdk(boolean enable_new_payment_collection_android_sdk) {
            this.enable_new_payment_collection_android_sdk = enable_new_payment_collection_android_sdk;
            return this;
        }

        public final Builder enable_client_logger_dispatcher(boolean enable_client_logger_dispatcher) {
            this.enable_client_logger_dispatcher = enable_client_logger_dispatcher;
            return this;
        }

        public final Builder tip_eligible_amounts_circuit_breaker(boolean tip_eligible_amounts_circuit_breaker) {
            this.tip_eligible_amounts_circuit_breaker = tip_eligible_amounts_circuit_breaker;
            return this;
        }

        @Deprecated(message = "enable_iot_client_respond_via_iot is deprecated")
        public final Builder enable_iot_client_respond_via_iot(boolean enable_iot_client_respond_via_iot) {
            this.enable_iot_client_respond_via_iot = enable_iot_client_respond_via_iot;
            return this;
        }

        public final Builder enable_sharing_device_report(boolean enable_sharing_device_report) {
            this.enable_sharing_device_report = enable_sharing_device_report;
            return this;
        }

        public final Builder enable_traces_to_observability_data_endpoint(boolean enable_traces_to_observability_data_endpoint) {
            this.enable_traces_to_observability_data_endpoint = enable_traces_to_observability_data_endpoint;
            return this;
        }

        @Deprecated(message = "enable_reader_bbpos_proxy is deprecated")
        public final Builder enable_reader_bbpos_proxy(boolean enable_reader_bbpos_proxy) {
            this.enable_reader_bbpos_proxy = enable_reader_bbpos_proxy;
            return this;
        }

        public final Builder disable_sdk_force_key_injection_when_unknown_keys(boolean disable_sdk_force_key_injection_when_unknown_keys) {
            this.disable_sdk_force_key_injection_when_unknown_keys = disable_sdk_force_key_injection_when_unknown_keys;
            return this;
        }

        @Deprecated(message = "shopify_display_reader_charge_summary is deprecated")
        public final Builder shopify_display_reader_charge_summary(boolean shopify_display_reader_charge_summary) {
            this.shopify_display_reader_charge_summary = shopify_display_reader_charge_summary;
            return this;
        }

        public final Builder shopify_bypass_reader_charge_summary(boolean shopify_bypass_reader_charge_summary) {
            this.shopify_bypass_reader_charge_summary = shopify_bypass_reader_charge_summary;
            return this;
        }

        public final Builder enable_application_selection_in_quick_chip(boolean enable_application_selection_in_quick_chip) {
            this.enable_application_selection_in_quick_chip = enable_application_selection_in_quick_chip;
            return this;
        }

        public final Builder enable_configure_reboot_time_with_device_ui(boolean enable_configure_reboot_time_with_device_ui) {
            this.enable_configure_reboot_time_with_device_ui = enable_configure_reboot_time_with_device_ui;
            return this;
        }

        public final Builder enable_armada_reauthentication_flow(boolean enable_armada_reauthentication_flow) {
            this.enable_armada_reauthentication_flow = enable_armada_reauthentication_flow;
            return this;
        }

        public final Builder enable_send_bbpos_debug_logs_to_splunk(boolean enable_send_bbpos_debug_logs_to_splunk) {
            this.enable_send_bbpos_debug_logs_to_splunk = enable_send_bbpos_debug_logs_to_splunk;
            return this;
        }

        public final Builder enable_iot_hadr_polling(boolean enable_iot_hadr_polling) {
            this.enable_iot_hadr_polling = enable_iot_hadr_polling;
            return this;
        }

        @Deprecated(message = "enable_mainland_post_action_result is deprecated")
        public final Builder enable_mainland_post_action_result(boolean enable_mainland_post_action_result) {
            this.enable_mainland_post_action_result = enable_mainland_post_action_result;
            return this;
        }

        public final Builder enable_client_accessibility_app(boolean enable_client_accessibility_app) {
            this.enable_client_accessibility_app = enable_client_accessibility_app;
            return this;
        }

        public final Builder enable_mag_stripe_pin(boolean enable_mag_stripe_pin) {
            this.enable_mag_stripe_pin = enable_mag_stripe_pin;
            return this;
        }

        public final Builder enable_bbpos_debug_logging(boolean enable_bbpos_debug_logging) {
            this.enable_bbpos_debug_logging = enable_bbpos_debug_logging;
            return this;
        }

        public final Builder configure_device_reboot_time_kill_switch(boolean configure_device_reboot_time_kill_switch) {
            this.configure_device_reboot_time_kill_switch = configure_device_reboot_time_kill_switch;
            return this;
        }

        public final Builder enable_third_party_app_crash_logging(boolean enable_third_party_app_crash_logging) {
            this.enable_third_party_app_crash_logging = enable_third_party_app_crash_logging;
            return this;
        }

        public final Builder third_party_app_crash_logging_poll_interval_millis(long third_party_app_crash_logging_poll_interval_millis) {
            this.third_party_app_crash_logging_poll_interval_millis = third_party_app_crash_logging_poll_interval_millis;
            return this;
        }

        public final Builder enable_p2pe_rom_verification(boolean enable_p2pe_rom_verification) {
            this.enable_p2pe_rom_verification = enable_p2pe_rom_verification;
            return this;
        }

        @Deprecated(message = "battery_charging_dialog_killswitch is deprecated")
        public final Builder battery_charging_dialog_killswitch(boolean battery_charging_dialog_killswitch) {
            this.battery_charging_dialog_killswitch = battery_charging_dialog_killswitch;
            return this;
        }

        public final Builder enable_ttpa_emv_config_from_backend(boolean enable_ttpa_emv_config_from_backend) {
            this.enable_ttpa_emv_config_from_backend = enable_ttpa_emv_config_from_backend;
            return this;
        }

        public final Builder enable_battery_charging_dialog(boolean enable_battery_charging_dialog) {
            this.enable_battery_charging_dialog = enable_battery_charging_dialog;
            return this;
        }

        public final Builder internal_storage_quota_circuit_breaker(boolean internal_storage_quota_circuit_breaker) {
            this.internal_storage_quota_circuit_breaker = internal_storage_quota_circuit_breaker;
            return this;
        }

        public final Builder disable_event_channel_on_reader(boolean disable_event_channel_on_reader) {
            this.disable_event_channel_on_reader = disable_event_channel_on_reader;
            return this;
        }

        public final Builder device_plugged_in_but_not_charging_minimum_battery_discharge_percent(long device_plugged_in_but_not_charging_minimum_battery_discharge_percent) {
            this.device_plugged_in_but_not_charging_minimum_battery_discharge_percent = device_plugged_in_but_not_charging_minimum_battery_discharge_percent;
            return this;
        }

        public final Builder device_plugged_in_but_not_charging_minimum_required_duration_millis(long device_plugged_in_but_not_charging_minimum_required_duration_millis) {
            this.device_plugged_in_but_not_charging_minimum_required_duration_millis = device_plugged_in_but_not_charging_minimum_required_duration_millis;
            return this;
        }

        public final Builder enable_third_party_settings_intent_logging(boolean enable_third_party_settings_intent_logging) {
            this.enable_third_party_settings_intent_logging = enable_third_party_settings_intent_logging;
            return this;
        }

        public final Builder third_party_settings_intent_logging_poll_interval_millis(long third_party_settings_intent_logging_poll_interval_millis) {
            this.third_party_settings_intent_logging_poll_interval_millis = third_party_settings_intent_logging_poll_interval_millis;
            return this;
        }

        public final Builder enable_add_merchant_info_to_edge_headers(boolean enable_add_merchant_info_to_edge_headers) {
            this.enable_add_merchant_info_to_edge_headers = enable_add_merchant_info_to_edge_headers;
            return this;
        }

        public final Builder enable_device_key_auto_recovery_flow(boolean enable_device_key_auto_recovery_flow) {
            this.enable_device_key_auto_recovery_flow = enable_device_key_auto_recovery_flow;
            return this;
        }

        public final Builder enable_device_callback_key_recovery_flow(boolean enable_device_callback_key_recovery_flow) {
            this.enable_device_callback_key_recovery_flow = enable_device_callback_key_recovery_flow;
            return this;
        }

        public final Builder enable_forms_on_sdk(boolean enable_forms_on_sdk) {
            this.enable_forms_on_sdk = enable_forms_on_sdk;
            return this;
        }

        public final Builder enable_customer_cancellation_feature(boolean enable_customer_cancellation_feature) {
            this.enable_customer_cancellation_feature = enable_customer_cancellation_feature;
            return this;
        }

        public final Builder enable_background_update_split_download_and_install(boolean enable_background_update_split_download_and_install) {
            this.enable_background_update_split_download_and_install = enable_background_update_split_download_and_install;
            return this;
        }

        public final Builder enable_device_temperature_logging(boolean enable_device_temperature_logging) {
            this.enable_device_temperature_logging = enable_device_temperature_logging;
            return this;
        }

        public final Builder device_temperature_logging_poll_interval_millis(long device_temperature_logging_poll_interval_millis) {
            this.device_temperature_logging_poll_interval_millis = device_temperature_logging_poll_interval_millis;
            return this;
        }

        public final Builder enable_warden_release_serial_port(boolean enable_warden_release_serial_port) {
            this.enable_warden_release_serial_port = enable_warden_release_serial_port;
            return this;
        }

        public final Builder enable_rom_sdk_kernel_logging(boolean enable_rom_sdk_kernel_logging) {
            this.enable_rom_sdk_kernel_logging = enable_rom_sdk_kernel_logging;
            return this;
        }

        public final Builder rom_sdk_kernel_logging_poll_interval_millis(long rom_sdk_kernel_logging_poll_interval_millis) {
            this.rom_sdk_kernel_logging_poll_interval_millis = rom_sdk_kernel_logging_poll_interval_millis;
            return this;
        }

        public final Builder enable_kill_for_memory_event_logging(boolean enable_kill_for_memory_event_logging) {
            this.enable_kill_for_memory_event_logging = enable_kill_for_memory_event_logging;
            return this;
        }

        public final Builder kill_for_memory_event_logging_poll_interval_millis(long kill_for_memory_event_logging_poll_interval_millis) {
            this.kill_for_memory_event_logging_poll_interval_millis = kill_for_memory_event_logging_poll_interval_millis;
            return this;
        }

        public final Builder migrate_iot_endpoint_to_iot_service(boolean migrate_iot_endpoint_to_iot_service) {
            this.migrate_iot_endpoint_to_iot_service = migrate_iot_endpoint_to_iot_service;
            return this;
        }

        public final Builder enable_client_accessible_pin(boolean enable_client_accessible_pin) {
            this.enable_client_accessible_pin = enable_client_accessible_pin;
            return this;
        }

        public final Builder rom_install_timeout_non_seamless_updates_millis(long rom_install_timeout_non_seamless_updates_millis) {
            this.rom_install_timeout_non_seamless_updates_millis = rom_install_timeout_non_seamless_updates_millis;
            return this;
        }

        public final Builder rom_install_timeout_seamless_updates_millis(long rom_install_timeout_seamless_updates_millis) {
            this.rom_install_timeout_seamless_updates_millis = rom_install_timeout_seamless_updates_millis;
            return this;
        }

        public final Builder enable_ttpa_pin(boolean enable_ttpa_pin) {
            this.enable_ttpa_pin = enable_ttpa_pin;
            return this;
        }

        public final Builder android_system_event_logging(AndroidSystemEventLoggingConfig android_system_event_logging) {
            this.android_system_event_logging = android_system_event_logging;
            return this;
        }

        public final Builder enable_dcc(boolean enable_dcc) {
            this.enable_dcc = enable_dcc;
            return this;
        }

        public final Builder enable_ttp_auto_reconnect(boolean enable_ttp_auto_reconnect) {
            this.enable_ttp_auto_reconnect = enable_ttp_auto_reconnect;
            return this;
        }

        public final Builder enable_iot_respond_via_rpc(boolean enable_iot_respond_via_rpc) {
            this.enable_iot_respond_via_rpc = enable_iot_respond_via_rpc;
            return this;
        }

        public final Builder selection_form_toggles_below_submit_buttons(boolean selection_form_toggles_below_submit_buttons) {
            this.selection_form_toggles_below_submit_buttons = selection_form_toggles_below_submit_buttons;
            return this;
        }

        @Deprecated(message = "offline_pair_unseen_reader_circuit_breaker is deprecated")
        public final Builder offline_pair_unseen_reader_circuit_breaker(boolean offline_pair_unseen_reader_circuit_breaker) {
            this.offline_pair_unseen_reader_circuit_breaker = offline_pair_unseen_reader_circuit_breaker;
            return this;
        }

        public final Builder enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests(boolean enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests) {
            this.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests = enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests;
            return this;
        }

        public final Builder enable_battery_not_charging_events_logging(boolean enable_battery_not_charging_events_logging) {
            this.enable_battery_not_charging_events_logging = enable_battery_not_charging_events_logging;
            return this;
        }

        public final Builder enable_etna_cav_kfc_updates_check(boolean enable_etna_cav_kfc_updates_check) {
            this.enable_etna_cav_kfc_updates_check = enable_etna_cav_kfc_updates_check;
            return this;
        }

        public final Builder enable_terminal_surcharging(boolean enable_terminal_surcharging) {
            this.enable_terminal_surcharging = enable_terminal_surcharging;
            return this;
        }

        public final Builder enable_ios_deferred_logging(boolean enable_ios_deferred_logging) {
            this.enable_ios_deferred_logging = enable_ios_deferred_logging;
            return this;
        }

        public final Builder enable_apps_on_devices_settings_menu(boolean enable_apps_on_devices_settings_menu) {
            this.enable_apps_on_devices_settings_menu = enable_apps_on_devices_settings_menu;
            return this;
        }

        public final Builder offline_setup_intents_enabled(boolean offline_setup_intents_enabled) {
            this.offline_setup_intents_enabled = offline_setup_intents_enabled;
            return this;
        }

        public final Builder mobile_wallet_on_offline_setup_intents_enabled(boolean mobile_wallet_on_offline_setup_intents_enabled) {
            this.mobile_wallet_on_offline_setup_intents_enabled = mobile_wallet_on_offline_setup_intents_enabled;
            return this;
        }

        public final Builder enable_release_build_to_override_local_ip(boolean enable_release_build_to_override_local_ip) {
            this.enable_release_build_to_override_local_ip = enable_release_build_to_override_local_ip;
            return this;
        }

        public final Builder disable_predip(boolean disable_predip) {
            this.disable_predip = disable_predip;
            return this;
        }

        public final Builder enable_wpe_accessibility_volume_control(boolean enable_wpe_accessibility_volume_control) {
            this.enable_wpe_accessibility_volume_control = enable_wpe_accessibility_volume_control;
            return this;
        }

        public final Builder enable_new_incremental_auth_ui(boolean enable_new_incremental_auth_ui) {
            this.enable_new_incremental_auth_ui = enable_new_incremental_auth_ui;
            return this;
        }

        @Deprecated(message = "enable_remove_duplicate_subtotal_string is deprecated")
        public final Builder enable_remove_duplicate_subtotal_string(boolean enable_remove_duplicate_subtotal_string) {
            this.enable_remove_duplicate_subtotal_string = enable_remove_duplicate_subtotal_string;
            return this;
        }

        @Deprecated(message = "disable_force_pin_entry is deprecated")
        public final Builder disable_force_pin_entry(boolean disable_force_pin_entry) {
            this.disable_force_pin_entry = disable_force_pin_entry;
            return this;
        }

        public final Builder enable_ktlv_discrepancy_reporting_pcs(boolean enable_ktlv_discrepancy_reporting_pcs) {
            this.enable_ktlv_discrepancy_reporting_pcs = enable_ktlv_discrepancy_reporting_pcs;
            return this;
        }

        public final Builder enable_ktlv_pcs(boolean enable_ktlv_pcs) {
            this.enable_ktlv_pcs = enable_ktlv_pcs;
            return this;
        }

        public final Builder enable_collect_inputs_interstitial_screen(boolean enable_collect_inputs_interstitial_screen) {
            this.enable_collect_inputs_interstitial_screen = enable_collect_inputs_interstitial_screen;
            return this;
        }

        public final Builder enable_apps_on_devices_post_collect_merchant_ui(boolean enable_apps_on_devices_post_collect_merchant_ui) {
            this.enable_apps_on_devices_post_collect_merchant_ui = enable_apps_on_devices_post_collect_merchant_ui;
            return this;
        }

        public final Builder enable_wpe_firmware_integrity_error_recovery(boolean enable_wpe_firmware_integrity_error_recovery) {
            this.enable_wpe_firmware_integrity_error_recovery = enable_wpe_firmware_integrity_error_recovery;
            return this;
        }

        public final Builder enable_force_pin_entry_for_pi(boolean enable_force_pin_entry_for_pi) {
            this.enable_force_pin_entry_for_pi = enable_force_pin_entry_for_pi;
            return this;
        }

        public final Builder enable_force_pin_entry_for_si(boolean enable_force_pin_entry_for_si) {
            this.enable_force_pin_entry_for_si = enable_force_pin_entry_for_si;
            return this;
        }

        public final Builder enable_fixed_iot_reconnect_delay(boolean enable_fixed_iot_reconnect_delay) {
            this.enable_fixed_iot_reconnect_delay = enable_fixed_iot_reconnect_delay;
            return this;
        }

        public final Builder enable_wpe_unauthenticated_device_integrity_error_recovery(boolean enable_wpe_unauthenticated_device_integrity_error_recovery) {
            this.enable_wpe_unauthenticated_device_integrity_error_recovery = enable_wpe_unauthenticated_device_integrity_error_recovery;
            return this;
        }

        public final Builder enable_spos_girocard(boolean enable_spos_girocard) {
            this.enable_spos_girocard = enable_spos_girocard;
            return this;
        }

        public final Builder enable_ttpa_run_attestation_before_pin(boolean enable_ttpa_run_attestation_before_pin) {
            this.enable_ttpa_run_attestation_before_pin = enable_ttpa_run_attestation_before_pin;
            return this;
        }

        public final Builder enable_new_background_iot_state_machine(boolean enable_new_background_iot_state_machine) {
            this.enable_new_background_iot_state_machine = enable_new_background_iot_state_machine;
            return this;
        }

        public final Builder enable_call_to_armada_for_boot_initialization(boolean enable_call_to_armada_for_boot_initialization) {
            this.enable_call_to_armada_for_boot_initialization = enable_call_to_armada_for_boot_initialization;
            return this;
        }

        public final Builder enable_ttpa_eftpos_payments(boolean enable_ttpa_eftpos_payments) {
            this.enable_ttpa_eftpos_payments = enable_ttpa_eftpos_payments;
            return this;
        }

        public final Builder disable_card_inserted_from_prev_txn_check(boolean disable_card_inserted_from_prev_txn_check) {
            this.disable_card_inserted_from_prev_txn_check = disable_card_inserted_from_prev_txn_check;
            return this;
        }

        public final Builder apps_on_devices_start_transaction_timeout_millis(long apps_on_devices_start_transaction_timeout_millis) {
            this.apps_on_devices_start_transaction_timeout_millis = apps_on_devices_start_transaction_timeout_millis;
            return this;
        }

        public final Builder enable_apps_on_devices_start_transaction_timeout(boolean enable_apps_on_devices_start_transaction_timeout) {
            this.enable_apps_on_devices_start_transaction_timeout = enable_apps_on_devices_start_transaction_timeout;
            return this;
        }

        public final Builder enable_start_reader_activity_on_state(boolean enable_start_reader_activity_on_state) {
            this.enable_start_reader_activity_on_state = enable_start_reader_activity_on_state;
            return this;
        }

        public final Builder enable_process_messages_with_new_state_machine(boolean enable_process_messages_with_new_state_machine) {
            this.enable_process_messages_with_new_state_machine = enable_process_messages_with_new_state_machine;
            return this;
        }

        public final Builder enable_standalone_app(boolean enable_standalone_app) {
            this.enable_standalone_app = enable_standalone_app;
            return this;
        }

        public final Builder enable_mandatory_updates(boolean enable_mandatory_updates) {
            this.enable_mandatory_updates = enable_mandatory_updates;
            return this;
        }

        public final Builder smart_reader_transaction_summary_delay_millis(long smart_reader_transaction_summary_delay_millis) {
            this.smart_reader_transaction_summary_delay_millis = smart_reader_transaction_summary_delay_millis;
            return this;
        }

        public final Builder smart_reader_transaction_summary_unsuccessful_delay_millis(long smart_reader_transaction_summary_unsuccessful_delay_millis) {
            this.smart_reader_transaction_summary_unsuccessful_delay_millis = smart_reader_transaction_summary_unsuccessful_delay_millis;
            return this;
        }

        public final Builder enable_wifi_radio_s710_alpha(boolean enable_wifi_radio_s710_alpha) {
            this.enable_wifi_radio_s710_alpha = enable_wifi_radio_s710_alpha;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReaderFeatureFlags build() {
            return new ReaderFeatureFlags(this.tipping_enabled, this.allow_non_browser_env, this.enable_server_driven, this.enable_sdk_transaction_sessions, this.server_driven_poll_interval_seconds, this.enableBbposVersioning, this.enableBbposDownloading, this.enable_on_reader_tipping, this.enable_updater_factory_reset_target, this.enable_connect_and_collect, this.enable_firmware_updates, this.enable_firmware_update_retries, this.enable_on_reader_cancel, this.enable_roborabbit_ui_redesign, this.enable_connect_and_collect_release, this.enable_updater_new_oobe_flow, this.enable_iot, this.enable_offline_mode, this.enable_wpe_updater_new_oobe_killswitch, this.disable_iot, this.enable_new_updates_flow, this.rom_update_kill_switch, this.enable_ktor_http_server, this.wp3_tipping_android_sdk_circuit_breaker, this.enable_usb_connectivity, this.wp3_tipping_ios_sdk_circuit_breaker, this.enable_logging_to_disk, this.enable_moto_transactions, this.enable_p2pe_apk_signing_verification, this.disable_p2pe_apk_signing_verification, this.enable_crash_button_in_diagnostics, this.enable_gif_splash_and_lightmode, this.bluetooth_auto_reconnect_android_sdk_enabled, this.bluetooth_auto_reconnect_ios_sdk_enabled, this.disable_bluetooth_auto_reconnect_android_sdk, this.disable_bluetooth_auto_reconnect_ios_sdk, this.enable_aod_default_app, this.enable_new_bbpos_assets_update_components, this.enable_eftpos_routing, this.enable_new_payment_collection_android_sdk, this.enable_client_logger_dispatcher, this.tip_eligible_amounts_circuit_breaker, this.enable_iot_client_respond_via_iot, this.enable_sharing_device_report, this.enable_traces_to_observability_data_endpoint, this.enable_reader_bbpos_proxy, this.disable_sdk_force_key_injection_when_unknown_keys, this.shopify_display_reader_charge_summary, this.shopify_bypass_reader_charge_summary, this.enable_application_selection_in_quick_chip, this.enable_configure_reboot_time_with_device_ui, this.enable_armada_reauthentication_flow, this.enable_send_bbpos_debug_logs_to_splunk, this.enable_iot_hadr_polling, this.enable_mainland_post_action_result, this.enable_client_accessibility_app, this.enable_mag_stripe_pin, this.enable_bbpos_debug_logging, this.configure_device_reboot_time_kill_switch, this.enable_third_party_app_crash_logging, this.third_party_app_crash_logging_poll_interval_millis, this.enable_p2pe_rom_verification, this.battery_charging_dialog_killswitch, this.enable_ttpa_emv_config_from_backend, this.enable_battery_charging_dialog, this.internal_storage_quota_circuit_breaker, this.disable_event_channel_on_reader, this.device_plugged_in_but_not_charging_minimum_battery_discharge_percent, this.device_plugged_in_but_not_charging_minimum_required_duration_millis, this.enable_third_party_settings_intent_logging, this.third_party_settings_intent_logging_poll_interval_millis, this.enable_add_merchant_info_to_edge_headers, this.enable_device_key_auto_recovery_flow, this.enable_device_callback_key_recovery_flow, this.enable_forms_on_sdk, this.enable_customer_cancellation_feature, this.enable_background_update_split_download_and_install, this.enable_device_temperature_logging, this.device_temperature_logging_poll_interval_millis, this.enable_warden_release_serial_port, this.enable_rom_sdk_kernel_logging, this.rom_sdk_kernel_logging_poll_interval_millis, this.enable_kill_for_memory_event_logging, this.kill_for_memory_event_logging_poll_interval_millis, this.migrate_iot_endpoint_to_iot_service, this.enable_client_accessible_pin, this.rom_install_timeout_non_seamless_updates_millis, this.rom_install_timeout_seamless_updates_millis, this.enable_ttpa_pin, this.android_system_event_logging, this.enable_dcc, this.enable_ttp_auto_reconnect, this.enable_iot_respond_via_rpc, this.selection_form_toggles_below_submit_buttons, this.offline_pair_unseen_reader_circuit_breaker, this.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests, this.enable_battery_not_charging_events_logging, this.enable_etna_cav_kfc_updates_check, this.enable_terminal_surcharging, this.enable_ios_deferred_logging, this.enable_apps_on_devices_settings_menu, this.offline_setup_intents_enabled, this.mobile_wallet_on_offline_setup_intents_enabled, this.enable_release_build_to_override_local_ip, this.disable_predip, this.enable_wpe_accessibility_volume_control, this.enable_new_incremental_auth_ui, this.enable_remove_duplicate_subtotal_string, this.disable_force_pin_entry, this.enable_ktlv_discrepancy_reporting_pcs, this.enable_ktlv_pcs, this.enable_collect_inputs_interstitial_screen, this.enable_apps_on_devices_post_collect_merchant_ui, this.enable_wpe_firmware_integrity_error_recovery, this.enable_force_pin_entry_for_pi, this.enable_force_pin_entry_for_si, this.enable_fixed_iot_reconnect_delay, this.enable_wpe_unauthenticated_device_integrity_error_recovery, this.enable_spos_girocard, this.enable_ttpa_run_attestation_before_pin, this.enable_new_background_iot_state_machine, this.enable_call_to_armada_for_boot_initialization, this.enable_ttpa_eftpos_payments, this.disable_card_inserted_from_prev_txn_check, this.apps_on_devices_start_transaction_timeout_millis, this.enable_apps_on_devices_start_transaction_timeout, this.enable_start_reader_activity_on_state, this.enable_process_messages_with_new_state_machine, this.enable_standalone_app, this.enable_mandatory_updates, this.smart_reader_transaction_summary_delay_millis, this.smart_reader_transaction_summary_unsuccessful_delay_millis, this.enable_wifi_radio_s710_alpha, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReaderFeatureFlags.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReaderFeatureFlags build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderFeatureFlags.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReaderFeatureFlags>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.ReaderFeatureFlags$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReaderFeatureFlags value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.tipping_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.tipping_enabled));
                }
                if (value.allow_non_browser_env) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.allow_non_browser_env));
                }
                if (value.enable_server_driven) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.enable_server_driven));
                }
                if (value.enable_sdk_transaction_sessions) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.enable_sdk_transaction_sessions));
                }
                if (value.server_driven_poll_interval_seconds != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(5, Long.valueOf(value.server_driven_poll_interval_seconds));
                }
                if (value.enableBbposVersioning) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(6, Boolean.valueOf(value.enableBbposVersioning));
                }
                if (value.enableBbposDownloading) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(7, Boolean.valueOf(value.enableBbposDownloading));
                }
                if (value.enable_on_reader_tipping) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(8, Boolean.valueOf(value.enable_on_reader_tipping));
                }
                if (value.enable_updater_factory_reset_target) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(9, Boolean.valueOf(value.enable_updater_factory_reset_target));
                }
                if (value.enable_connect_and_collect) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(10, Boolean.valueOf(value.enable_connect_and_collect));
                }
                if (value.enable_firmware_updates) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(11, Boolean.valueOf(value.enable_firmware_updates));
                }
                if (value.enable_firmware_update_retries) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(12, Boolean.valueOf(value.enable_firmware_update_retries));
                }
                if (value.enable_on_reader_cancel) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(13, Boolean.valueOf(value.enable_on_reader_cancel));
                }
                if (value.enable_roborabbit_ui_redesign) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(14, Boolean.valueOf(value.enable_roborabbit_ui_redesign));
                }
                if (value.enable_connect_and_collect_release) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(15, Boolean.valueOf(value.enable_connect_and_collect_release));
                }
                if (value.enable_updater_new_oobe_flow) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(16, Boolean.valueOf(value.enable_updater_new_oobe_flow));
                }
                if (value.enable_iot) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(17, Boolean.valueOf(value.enable_iot));
                }
                if (value.enable_offline_mode) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(18, Boolean.valueOf(value.enable_offline_mode));
                }
                if (value.enable_wpe_updater_new_oobe_killswitch) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(19, Boolean.valueOf(value.enable_wpe_updater_new_oobe_killswitch));
                }
                if (value.disable_iot) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(20, Boolean.valueOf(value.disable_iot));
                }
                if (value.enable_new_updates_flow) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(21, Boolean.valueOf(value.enable_new_updates_flow));
                }
                if (value.rom_update_kill_switch) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(22, Boolean.valueOf(value.rom_update_kill_switch));
                }
                if (value.enable_ktor_http_server) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(23, Boolean.valueOf(value.enable_ktor_http_server));
                }
                if (value.wp3_tipping_android_sdk_circuit_breaker) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(24, Boolean.valueOf(value.wp3_tipping_android_sdk_circuit_breaker));
                }
                if (value.enable_usb_connectivity) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(25, Boolean.valueOf(value.enable_usb_connectivity));
                }
                if (value.wp3_tipping_ios_sdk_circuit_breaker) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(26, Boolean.valueOf(value.wp3_tipping_ios_sdk_circuit_breaker));
                }
                if (value.enable_logging_to_disk) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(27, Boolean.valueOf(value.enable_logging_to_disk));
                }
                if (value.enable_moto_transactions) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(28, Boolean.valueOf(value.enable_moto_transactions));
                }
                if (value.enable_p2pe_apk_signing_verification) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(29, Boolean.valueOf(value.enable_p2pe_apk_signing_verification));
                }
                if (value.disable_p2pe_apk_signing_verification) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(30, Boolean.valueOf(value.disable_p2pe_apk_signing_verification));
                }
                if (value.enable_crash_button_in_diagnostics) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(31, Boolean.valueOf(value.enable_crash_button_in_diagnostics));
                }
                if (value.enable_gif_splash_and_lightmode) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(32, Boolean.valueOf(value.enable_gif_splash_and_lightmode));
                }
                if (value.bluetooth_auto_reconnect_android_sdk_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(33, Boolean.valueOf(value.bluetooth_auto_reconnect_android_sdk_enabled));
                }
                if (value.bluetooth_auto_reconnect_ios_sdk_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(34, Boolean.valueOf(value.bluetooth_auto_reconnect_ios_sdk_enabled));
                }
                if (value.disable_bluetooth_auto_reconnect_android_sdk) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(35, Boolean.valueOf(value.disable_bluetooth_auto_reconnect_android_sdk));
                }
                if (value.disable_bluetooth_auto_reconnect_ios_sdk) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(36, Boolean.valueOf(value.disable_bluetooth_auto_reconnect_ios_sdk));
                }
                if (value.enable_aod_default_app) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(37, Boolean.valueOf(value.enable_aod_default_app));
                }
                if (value.enable_new_bbpos_assets_update_components) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(38, Boolean.valueOf(value.enable_new_bbpos_assets_update_components));
                }
                if (value.enable_eftpos_routing) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(39, Boolean.valueOf(value.enable_eftpos_routing));
                }
                if (value.enable_new_payment_collection_android_sdk) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(40, Boolean.valueOf(value.enable_new_payment_collection_android_sdk));
                }
                if (value.enable_client_logger_dispatcher) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(45, Boolean.valueOf(value.enable_client_logger_dispatcher));
                }
                if (value.tip_eligible_amounts_circuit_breaker) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(46, Boolean.valueOf(value.tip_eligible_amounts_circuit_breaker));
                }
                if (value.enable_iot_client_respond_via_iot) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(47, Boolean.valueOf(value.enable_iot_client_respond_via_iot));
                }
                if (value.enable_sharing_device_report) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(48, Boolean.valueOf(value.enable_sharing_device_report));
                }
                if (value.enable_traces_to_observability_data_endpoint) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(49, Boolean.valueOf(value.enable_traces_to_observability_data_endpoint));
                }
                if (value.enable_reader_bbpos_proxy) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(50, Boolean.valueOf(value.enable_reader_bbpos_proxy));
                }
                if (value.disable_sdk_force_key_injection_when_unknown_keys) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(51, Boolean.valueOf(value.disable_sdk_force_key_injection_when_unknown_keys));
                }
                if (value.shopify_display_reader_charge_summary) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(52, Boolean.valueOf(value.shopify_display_reader_charge_summary));
                }
                if (value.shopify_bypass_reader_charge_summary) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(53, Boolean.valueOf(value.shopify_bypass_reader_charge_summary));
                }
                if (value.enable_application_selection_in_quick_chip) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(54, Boolean.valueOf(value.enable_application_selection_in_quick_chip));
                }
                if (value.enable_configure_reboot_time_with_device_ui) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(55, Boolean.valueOf(value.enable_configure_reboot_time_with_device_ui));
                }
                if (value.enable_armada_reauthentication_flow) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(56, Boolean.valueOf(value.enable_armada_reauthentication_flow));
                }
                if (value.enable_send_bbpos_debug_logs_to_splunk) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(57, Boolean.valueOf(value.enable_send_bbpos_debug_logs_to_splunk));
                }
                if (value.enable_iot_hadr_polling) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(58, Boolean.valueOf(value.enable_iot_hadr_polling));
                }
                if (value.enable_mainland_post_action_result) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(59, Boolean.valueOf(value.enable_mainland_post_action_result));
                }
                if (value.enable_client_accessibility_app) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(60, Boolean.valueOf(value.enable_client_accessibility_app));
                }
                if (value.enable_mag_stripe_pin) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(61, Boolean.valueOf(value.enable_mag_stripe_pin));
                }
                if (value.enable_bbpos_debug_logging) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(62, Boolean.valueOf(value.enable_bbpos_debug_logging));
                }
                if (value.configure_device_reboot_time_kill_switch) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(63, Boolean.valueOf(value.configure_device_reboot_time_kill_switch));
                }
                if (value.enable_third_party_app_crash_logging) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(64, Boolean.valueOf(value.enable_third_party_app_crash_logging));
                }
                if (value.third_party_app_crash_logging_poll_interval_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(65, Long.valueOf(value.third_party_app_crash_logging_poll_interval_millis));
                }
                if (value.enable_p2pe_rom_verification) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(66, Boolean.valueOf(value.enable_p2pe_rom_verification));
                }
                if (value.battery_charging_dialog_killswitch) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(67, Boolean.valueOf(value.battery_charging_dialog_killswitch));
                }
                if (value.enable_ttpa_emv_config_from_backend) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(68, Boolean.valueOf(value.enable_ttpa_emv_config_from_backend));
                }
                if (value.enable_battery_charging_dialog) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(69, Boolean.valueOf(value.enable_battery_charging_dialog));
                }
                if (value.internal_storage_quota_circuit_breaker) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(70, Boolean.valueOf(value.internal_storage_quota_circuit_breaker));
                }
                if (value.disable_event_channel_on_reader) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(71, Boolean.valueOf(value.disable_event_channel_on_reader));
                }
                if (value.device_plugged_in_but_not_charging_minimum_battery_discharge_percent != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(72, Long.valueOf(value.device_plugged_in_but_not_charging_minimum_battery_discharge_percent));
                }
                if (value.device_plugged_in_but_not_charging_minimum_required_duration_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(73, Long.valueOf(value.device_plugged_in_but_not_charging_minimum_required_duration_millis));
                }
                if (value.enable_third_party_settings_intent_logging) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(74, Boolean.valueOf(value.enable_third_party_settings_intent_logging));
                }
                if (value.third_party_settings_intent_logging_poll_interval_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(75, Long.valueOf(value.third_party_settings_intent_logging_poll_interval_millis));
                }
                if (value.enable_add_merchant_info_to_edge_headers) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(76, Boolean.valueOf(value.enable_add_merchant_info_to_edge_headers));
                }
                if (value.enable_device_key_auto_recovery_flow) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(77, Boolean.valueOf(value.enable_device_key_auto_recovery_flow));
                }
                if (value.enable_device_callback_key_recovery_flow) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(78, Boolean.valueOf(value.enable_device_callback_key_recovery_flow));
                }
                if (value.enable_forms_on_sdk) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(79, Boolean.valueOf(value.enable_forms_on_sdk));
                }
                if (value.enable_customer_cancellation_feature) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(80, Boolean.valueOf(value.enable_customer_cancellation_feature));
                }
                if (value.enable_background_update_split_download_and_install) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(81, Boolean.valueOf(value.enable_background_update_split_download_and_install));
                }
                if (value.enable_device_temperature_logging) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(82, Boolean.valueOf(value.enable_device_temperature_logging));
                }
                if (value.device_temperature_logging_poll_interval_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(83, Long.valueOf(value.device_temperature_logging_poll_interval_millis));
                }
                if (value.enable_warden_release_serial_port) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(84, Boolean.valueOf(value.enable_warden_release_serial_port));
                }
                if (value.enable_rom_sdk_kernel_logging) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(85, Boolean.valueOf(value.enable_rom_sdk_kernel_logging));
                }
                if (value.rom_sdk_kernel_logging_poll_interval_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(86, Long.valueOf(value.rom_sdk_kernel_logging_poll_interval_millis));
                }
                if (value.enable_kill_for_memory_event_logging) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(87, Boolean.valueOf(value.enable_kill_for_memory_event_logging));
                }
                if (value.kill_for_memory_event_logging_poll_interval_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(88, Long.valueOf(value.kill_for_memory_event_logging_poll_interval_millis));
                }
                if (value.migrate_iot_endpoint_to_iot_service) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(89, Boolean.valueOf(value.migrate_iot_endpoint_to_iot_service));
                }
                if (value.enable_client_accessible_pin) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(90, Boolean.valueOf(value.enable_client_accessible_pin));
                }
                if (value.rom_install_timeout_non_seamless_updates_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(91, Long.valueOf(value.rom_install_timeout_non_seamless_updates_millis));
                }
                if (value.rom_install_timeout_seamless_updates_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(92, Long.valueOf(value.rom_install_timeout_seamless_updates_millis));
                }
                if (value.enable_ttpa_pin) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(93, Boolean.valueOf(value.enable_ttpa_pin));
                }
                if (value.android_system_event_logging != null) {
                    size += ReaderFeatureFlags.AndroidSystemEventLoggingConfig.ADAPTER.encodedSizeWithTag(94, value.android_system_event_logging);
                }
                if (value.enable_dcc) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(95, Boolean.valueOf(value.enable_dcc));
                }
                if (value.enable_ttp_auto_reconnect) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(96, Boolean.valueOf(value.enable_ttp_auto_reconnect));
                }
                if (value.enable_iot_respond_via_rpc) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(97, Boolean.valueOf(value.enable_iot_respond_via_rpc));
                }
                if (value.selection_form_toggles_below_submit_buttons) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(98, Boolean.valueOf(value.selection_form_toggles_below_submit_buttons));
                }
                if (value.offline_pair_unseen_reader_circuit_breaker) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(99, Boolean.valueOf(value.offline_pair_unseen_reader_circuit_breaker));
                }
                if (value.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(100, Boolean.valueOf(value.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests));
                }
                if (value.enable_battery_not_charging_events_logging) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(101, Boolean.valueOf(value.enable_battery_not_charging_events_logging));
                }
                if (value.enable_etna_cav_kfc_updates_check) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(102, Boolean.valueOf(value.enable_etna_cav_kfc_updates_check));
                }
                if (value.enable_terminal_surcharging) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(103, Boolean.valueOf(value.enable_terminal_surcharging));
                }
                if (value.enable_ios_deferred_logging) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(104, Boolean.valueOf(value.enable_ios_deferred_logging));
                }
                if (value.enable_apps_on_devices_settings_menu) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_SEM_OWNER_DIED, Boolean.valueOf(value.enable_apps_on_devices_settings_menu));
                }
                if (value.offline_setup_intents_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_SEM_USER_LIMIT, Boolean.valueOf(value.offline_setup_intents_enabled));
                }
                if (value.mobile_wallet_on_offline_setup_intents_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_DISK_CHANGE, Boolean.valueOf(value.mobile_wallet_on_offline_setup_intents_enabled));
                }
                if (value.enable_release_build_to_override_local_ip) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(108, Boolean.valueOf(value.enable_release_build_to_override_local_ip));
                }
                if (value.disable_predip) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(109, Boolean.valueOf(value.disable_predip));
                }
                if (value.enable_wpe_accessibility_volume_control) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(110, Boolean.valueOf(value.enable_wpe_accessibility_volume_control));
                }
                if (value.enable_new_incremental_auth_ui) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_BUFFER_OVERFLOW, Boolean.valueOf(value.enable_new_incremental_auth_ui));
                }
                if (value.enable_remove_duplicate_subtotal_string) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(112, Boolean.valueOf(value.enable_remove_duplicate_subtotal_string));
                }
                if (value.disable_force_pin_entry) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_NO_MORE_SEARCH_HANDLES, Boolean.valueOf(value.disable_force_pin_entry));
                }
                if (value.enable_ktlv_discrepancy_reporting_pcs) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_INVALID_TARGET_HANDLE, Boolean.valueOf(value.enable_ktlv_discrepancy_reporting_pcs));
                }
                if (value.enable_ktlv_pcs) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(115, Boolean.valueOf(value.enable_ktlv_pcs));
                }
                if (value.enable_collect_inputs_interstitial_screen) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(116, Boolean.valueOf(value.enable_collect_inputs_interstitial_screen));
                }
                if (value.enable_apps_on_devices_post_collect_merchant_ui) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_INVALID_CATEGORY, Boolean.valueOf(value.enable_apps_on_devices_post_collect_merchant_ui));
                }
                if (value.enable_wpe_firmware_integrity_error_recovery) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_INVALID_VERIFY_SWITCH, Boolean.valueOf(value.enable_wpe_firmware_integrity_error_recovery));
                }
                if (value.enable_force_pin_entry_for_pi) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_BAD_DRIVER_LEVEL, Boolean.valueOf(value.enable_force_pin_entry_for_pi));
                }
                if (value.enable_force_pin_entry_for_si) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_CALL_NOT_IMPLEMENTED, Boolean.valueOf(value.enable_force_pin_entry_for_si));
                }
                if (value.enable_fixed_iot_reconnect_delay) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_SEM_TIMEOUT, Boolean.valueOf(value.enable_fixed_iot_reconnect_delay));
                }
                if (value.enable_wpe_unauthenticated_device_integrity_error_recovery) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(122, Boolean.valueOf(value.enable_wpe_unauthenticated_device_integrity_error_recovery));
                }
                if (value.enable_spos_girocard) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(123, Boolean.valueOf(value.enable_spos_girocard));
                }
                if (value.enable_ttpa_run_attestation_before_pin) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_INVALID_LEVEL, Boolean.valueOf(value.enable_ttpa_run_attestation_before_pin));
                }
                if (value.enable_new_background_iot_state_machine) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_NO_VOLUME_LABEL, Boolean.valueOf(value.enable_new_background_iot_state_machine));
                }
                if (value.enable_call_to_armada_for_boot_initialization) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(126, Boolean.valueOf(value.enable_call_to_armada_for_boot_initialization));
                }
                if (value.enable_ttpa_eftpos_payments) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(127, Boolean.valueOf(value.enable_ttpa_eftpos_payments));
                }
                if (value.disable_card_inserted_from_prev_txn_check) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(128, Boolean.valueOf(value.disable_card_inserted_from_prev_txn_check));
                }
                if (value.apps_on_devices_start_transaction_timeout_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(129, Long.valueOf(value.apps_on_devices_start_transaction_timeout_millis));
                }
                if (value.enable_apps_on_devices_start_transaction_timeout) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(130, Boolean.valueOf(value.enable_apps_on_devices_start_transaction_timeout));
                }
                if (value.enable_start_reader_activity_on_state) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(131, Boolean.valueOf(value.enable_start_reader_activity_on_state));
                }
                if (value.enable_process_messages_with_new_state_machine) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_SEEK_ON_DEVICE, Boolean.valueOf(value.enable_process_messages_with_new_state_machine));
                }
                if (value.enable_standalone_app) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_IS_JOIN_TARGET, Boolean.valueOf(value.enable_standalone_app));
                }
                if (value.enable_mandatory_updates) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_IS_JOINED, Boolean.valueOf(value.enable_mandatory_updates));
                }
                if (value.smart_reader_transaction_summary_delay_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(WinError.ERROR_IS_SUBSTED, Long.valueOf(value.smart_reader_transaction_summary_delay_millis));
                }
                if (value.smart_reader_transaction_summary_unsuccessful_delay_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(136, Long.valueOf(value.smart_reader_transaction_summary_unsuccessful_delay_millis));
                }
                return value.enable_wifi_radio_s710_alpha ? size + ProtoAdapter.BOOL.encodedSizeWithTag(WinError.ERROR_NOT_SUBSTED, Boolean.valueOf(value.enable_wifi_radio_s710_alpha)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReaderFeatureFlags value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.tipping_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.tipping_enabled));
                }
                if (value.allow_non_browser_env) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.allow_non_browser_env));
                }
                if (value.enable_server_driven) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.enable_server_driven));
                }
                if (value.enable_sdk_transaction_sessions) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.enable_sdk_transaction_sessions));
                }
                if (value.server_driven_poll_interval_seconds != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.server_driven_poll_interval_seconds));
                }
                if (value.enableBbposVersioning) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.enableBbposVersioning));
                }
                if (value.enableBbposDownloading) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.enableBbposDownloading));
                }
                if (value.enable_on_reader_tipping) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.enable_on_reader_tipping));
                }
                if (value.enable_updater_factory_reset_target) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.enable_updater_factory_reset_target));
                }
                if (value.enable_connect_and_collect) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.enable_connect_and_collect));
                }
                if (value.enable_firmware_updates) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 11, Boolean.valueOf(value.enable_firmware_updates));
                }
                if (value.enable_firmware_update_retries) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 12, Boolean.valueOf(value.enable_firmware_update_retries));
                }
                if (value.enable_on_reader_cancel) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 13, Boolean.valueOf(value.enable_on_reader_cancel));
                }
                if (value.enable_roborabbit_ui_redesign) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 14, Boolean.valueOf(value.enable_roborabbit_ui_redesign));
                }
                if (value.enable_connect_and_collect_release) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 15, Boolean.valueOf(value.enable_connect_and_collect_release));
                }
                if (value.enable_updater_new_oobe_flow) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 16, Boolean.valueOf(value.enable_updater_new_oobe_flow));
                }
                if (value.enable_iot) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 17, Boolean.valueOf(value.enable_iot));
                }
                if (value.enable_offline_mode) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 18, Boolean.valueOf(value.enable_offline_mode));
                }
                if (value.enable_wpe_updater_new_oobe_killswitch) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 19, Boolean.valueOf(value.enable_wpe_updater_new_oobe_killswitch));
                }
                if (value.disable_iot) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 20, Boolean.valueOf(value.disable_iot));
                }
                if (value.enable_new_updates_flow) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 21, Boolean.valueOf(value.enable_new_updates_flow));
                }
                if (value.rom_update_kill_switch) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 22, Boolean.valueOf(value.rom_update_kill_switch));
                }
                if (value.enable_ktor_http_server) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 23, Boolean.valueOf(value.enable_ktor_http_server));
                }
                if (value.wp3_tipping_android_sdk_circuit_breaker) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 24, Boolean.valueOf(value.wp3_tipping_android_sdk_circuit_breaker));
                }
                if (value.enable_usb_connectivity) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 25, Boolean.valueOf(value.enable_usb_connectivity));
                }
                if (value.wp3_tipping_ios_sdk_circuit_breaker) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 26, Boolean.valueOf(value.wp3_tipping_ios_sdk_circuit_breaker));
                }
                if (value.enable_logging_to_disk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 27, Boolean.valueOf(value.enable_logging_to_disk));
                }
                if (value.enable_moto_transactions) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 28, Boolean.valueOf(value.enable_moto_transactions));
                }
                if (value.enable_p2pe_apk_signing_verification) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 29, Boolean.valueOf(value.enable_p2pe_apk_signing_verification));
                }
                if (value.disable_p2pe_apk_signing_verification) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 30, Boolean.valueOf(value.disable_p2pe_apk_signing_verification));
                }
                if (value.enable_crash_button_in_diagnostics) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 31, Boolean.valueOf(value.enable_crash_button_in_diagnostics));
                }
                if (value.enable_gif_splash_and_lightmode) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 32, Boolean.valueOf(value.enable_gif_splash_and_lightmode));
                }
                if (value.bluetooth_auto_reconnect_android_sdk_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 33, Boolean.valueOf(value.bluetooth_auto_reconnect_android_sdk_enabled));
                }
                if (value.bluetooth_auto_reconnect_ios_sdk_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 34, Boolean.valueOf(value.bluetooth_auto_reconnect_ios_sdk_enabled));
                }
                if (value.disable_bluetooth_auto_reconnect_android_sdk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 35, Boolean.valueOf(value.disable_bluetooth_auto_reconnect_android_sdk));
                }
                if (value.disable_bluetooth_auto_reconnect_ios_sdk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 36, Boolean.valueOf(value.disable_bluetooth_auto_reconnect_ios_sdk));
                }
                if (value.enable_aod_default_app) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 37, Boolean.valueOf(value.enable_aod_default_app));
                }
                if (value.enable_new_bbpos_assets_update_components) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 38, Boolean.valueOf(value.enable_new_bbpos_assets_update_components));
                }
                if (value.enable_eftpos_routing) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 39, Boolean.valueOf(value.enable_eftpos_routing));
                }
                if (value.enable_new_payment_collection_android_sdk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 40, Boolean.valueOf(value.enable_new_payment_collection_android_sdk));
                }
                if (value.enable_client_logger_dispatcher) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 45, Boolean.valueOf(value.enable_client_logger_dispatcher));
                }
                if (value.tip_eligible_amounts_circuit_breaker) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 46, Boolean.valueOf(value.tip_eligible_amounts_circuit_breaker));
                }
                if (value.enable_iot_client_respond_via_iot) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 47, Boolean.valueOf(value.enable_iot_client_respond_via_iot));
                }
                if (value.enable_sharing_device_report) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 48, Boolean.valueOf(value.enable_sharing_device_report));
                }
                if (value.enable_traces_to_observability_data_endpoint) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 49, Boolean.valueOf(value.enable_traces_to_observability_data_endpoint));
                }
                if (value.enable_reader_bbpos_proxy) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 50, Boolean.valueOf(value.enable_reader_bbpos_proxy));
                }
                if (value.disable_sdk_force_key_injection_when_unknown_keys) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 51, Boolean.valueOf(value.disable_sdk_force_key_injection_when_unknown_keys));
                }
                if (value.shopify_display_reader_charge_summary) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 52, Boolean.valueOf(value.shopify_display_reader_charge_summary));
                }
                if (value.shopify_bypass_reader_charge_summary) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 53, Boolean.valueOf(value.shopify_bypass_reader_charge_summary));
                }
                if (value.enable_application_selection_in_quick_chip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 54, Boolean.valueOf(value.enable_application_selection_in_quick_chip));
                }
                if (value.enable_configure_reboot_time_with_device_ui) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 55, Boolean.valueOf(value.enable_configure_reboot_time_with_device_ui));
                }
                if (value.enable_armada_reauthentication_flow) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 56, Boolean.valueOf(value.enable_armada_reauthentication_flow));
                }
                if (value.enable_send_bbpos_debug_logs_to_splunk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 57, Boolean.valueOf(value.enable_send_bbpos_debug_logs_to_splunk));
                }
                if (value.enable_iot_hadr_polling) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 58, Boolean.valueOf(value.enable_iot_hadr_polling));
                }
                if (value.enable_mainland_post_action_result) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 59, Boolean.valueOf(value.enable_mainland_post_action_result));
                }
                if (value.enable_client_accessibility_app) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 60, Boolean.valueOf(value.enable_client_accessibility_app));
                }
                if (value.enable_mag_stripe_pin) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 61, Boolean.valueOf(value.enable_mag_stripe_pin));
                }
                if (value.enable_bbpos_debug_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 62, Boolean.valueOf(value.enable_bbpos_debug_logging));
                }
                if (value.configure_device_reboot_time_kill_switch) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 63, Boolean.valueOf(value.configure_device_reboot_time_kill_switch));
                }
                if (value.enable_third_party_app_crash_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 64, Boolean.valueOf(value.enable_third_party_app_crash_logging));
                }
                if (value.third_party_app_crash_logging_poll_interval_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 65, Long.valueOf(value.third_party_app_crash_logging_poll_interval_millis));
                }
                if (value.enable_p2pe_rom_verification) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 66, Boolean.valueOf(value.enable_p2pe_rom_verification));
                }
                if (value.battery_charging_dialog_killswitch) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 67, Boolean.valueOf(value.battery_charging_dialog_killswitch));
                }
                if (value.enable_ttpa_emv_config_from_backend) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 68, Boolean.valueOf(value.enable_ttpa_emv_config_from_backend));
                }
                if (value.enable_battery_charging_dialog) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 69, Boolean.valueOf(value.enable_battery_charging_dialog));
                }
                if (value.internal_storage_quota_circuit_breaker) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 70, Boolean.valueOf(value.internal_storage_quota_circuit_breaker));
                }
                if (value.disable_event_channel_on_reader) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 71, Boolean.valueOf(value.disable_event_channel_on_reader));
                }
                if (value.device_plugged_in_but_not_charging_minimum_battery_discharge_percent != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 72, Long.valueOf(value.device_plugged_in_but_not_charging_minimum_battery_discharge_percent));
                }
                if (value.device_plugged_in_but_not_charging_minimum_required_duration_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 73, Long.valueOf(value.device_plugged_in_but_not_charging_minimum_required_duration_millis));
                }
                if (value.enable_third_party_settings_intent_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 74, Boolean.valueOf(value.enable_third_party_settings_intent_logging));
                }
                if (value.third_party_settings_intent_logging_poll_interval_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 75, Long.valueOf(value.third_party_settings_intent_logging_poll_interval_millis));
                }
                if (value.enable_add_merchant_info_to_edge_headers) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 76, Boolean.valueOf(value.enable_add_merchant_info_to_edge_headers));
                }
                if (value.enable_device_key_auto_recovery_flow) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 77, Boolean.valueOf(value.enable_device_key_auto_recovery_flow));
                }
                if (value.enable_device_callback_key_recovery_flow) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 78, Boolean.valueOf(value.enable_device_callback_key_recovery_flow));
                }
                if (value.enable_forms_on_sdk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 79, Boolean.valueOf(value.enable_forms_on_sdk));
                }
                if (value.enable_customer_cancellation_feature) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 80, Boolean.valueOf(value.enable_customer_cancellation_feature));
                }
                if (value.enable_background_update_split_download_and_install) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 81, Boolean.valueOf(value.enable_background_update_split_download_and_install));
                }
                if (value.enable_device_temperature_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 82, Boolean.valueOf(value.enable_device_temperature_logging));
                }
                if (value.device_temperature_logging_poll_interval_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 83, Long.valueOf(value.device_temperature_logging_poll_interval_millis));
                }
                if (value.enable_warden_release_serial_port) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 84, Boolean.valueOf(value.enable_warden_release_serial_port));
                }
                if (value.enable_rom_sdk_kernel_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 85, Boolean.valueOf(value.enable_rom_sdk_kernel_logging));
                }
                if (value.rom_sdk_kernel_logging_poll_interval_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 86, Long.valueOf(value.rom_sdk_kernel_logging_poll_interval_millis));
                }
                if (value.enable_kill_for_memory_event_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 87, Boolean.valueOf(value.enable_kill_for_memory_event_logging));
                }
                if (value.kill_for_memory_event_logging_poll_interval_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 88, Long.valueOf(value.kill_for_memory_event_logging_poll_interval_millis));
                }
                if (value.migrate_iot_endpoint_to_iot_service) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 89, Boolean.valueOf(value.migrate_iot_endpoint_to_iot_service));
                }
                if (value.enable_client_accessible_pin) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 90, Boolean.valueOf(value.enable_client_accessible_pin));
                }
                if (value.rom_install_timeout_non_seamless_updates_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 91, Long.valueOf(value.rom_install_timeout_non_seamless_updates_millis));
                }
                if (value.rom_install_timeout_seamless_updates_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 92, Long.valueOf(value.rom_install_timeout_seamless_updates_millis));
                }
                if (value.enable_ttpa_pin) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 93, Boolean.valueOf(value.enable_ttpa_pin));
                }
                if (value.android_system_event_logging != null) {
                    ReaderFeatureFlags.AndroidSystemEventLoggingConfig.ADAPTER.encodeWithTag(writer, 94, value.android_system_event_logging);
                }
                if (value.enable_dcc) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 95, Boolean.valueOf(value.enable_dcc));
                }
                if (value.enable_ttp_auto_reconnect) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 96, Boolean.valueOf(value.enable_ttp_auto_reconnect));
                }
                if (value.enable_iot_respond_via_rpc) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 97, Boolean.valueOf(value.enable_iot_respond_via_rpc));
                }
                if (value.selection_form_toggles_below_submit_buttons) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 98, Boolean.valueOf(value.selection_form_toggles_below_submit_buttons));
                }
                if (value.offline_pair_unseen_reader_circuit_breaker) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 99, Boolean.valueOf(value.offline_pair_unseen_reader_circuit_breaker));
                }
                if (value.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 100, Boolean.valueOf(value.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests));
                }
                if (value.enable_battery_not_charging_events_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 101, Boolean.valueOf(value.enable_battery_not_charging_events_logging));
                }
                if (value.enable_etna_cav_kfc_updates_check) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 102, Boolean.valueOf(value.enable_etna_cav_kfc_updates_check));
                }
                if (value.enable_terminal_surcharging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 103, Boolean.valueOf(value.enable_terminal_surcharging));
                }
                if (value.enable_ios_deferred_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 104, Boolean.valueOf(value.enable_ios_deferred_logging));
                }
                if (value.enable_apps_on_devices_settings_menu) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_SEM_OWNER_DIED, Boolean.valueOf(value.enable_apps_on_devices_settings_menu));
                }
                if (value.offline_setup_intents_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_SEM_USER_LIMIT, Boolean.valueOf(value.offline_setup_intents_enabled));
                }
                if (value.mobile_wallet_on_offline_setup_intents_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_DISK_CHANGE, Boolean.valueOf(value.mobile_wallet_on_offline_setup_intents_enabled));
                }
                if (value.enable_release_build_to_override_local_ip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 108, Boolean.valueOf(value.enable_release_build_to_override_local_ip));
                }
                if (value.disable_predip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 109, Boolean.valueOf(value.disable_predip));
                }
                if (value.enable_wpe_accessibility_volume_control) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 110, Boolean.valueOf(value.enable_wpe_accessibility_volume_control));
                }
                if (value.enable_new_incremental_auth_ui) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_BUFFER_OVERFLOW, Boolean.valueOf(value.enable_new_incremental_auth_ui));
                }
                if (value.enable_remove_duplicate_subtotal_string) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 112, Boolean.valueOf(value.enable_remove_duplicate_subtotal_string));
                }
                if (value.disable_force_pin_entry) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_NO_MORE_SEARCH_HANDLES, Boolean.valueOf(value.disable_force_pin_entry));
                }
                if (value.enable_ktlv_discrepancy_reporting_pcs) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_INVALID_TARGET_HANDLE, Boolean.valueOf(value.enable_ktlv_discrepancy_reporting_pcs));
                }
                if (value.enable_ktlv_pcs) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 115, Boolean.valueOf(value.enable_ktlv_pcs));
                }
                if (value.enable_collect_inputs_interstitial_screen) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 116, Boolean.valueOf(value.enable_collect_inputs_interstitial_screen));
                }
                if (value.enable_apps_on_devices_post_collect_merchant_ui) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_INVALID_CATEGORY, Boolean.valueOf(value.enable_apps_on_devices_post_collect_merchant_ui));
                }
                if (value.enable_wpe_firmware_integrity_error_recovery) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_INVALID_VERIFY_SWITCH, Boolean.valueOf(value.enable_wpe_firmware_integrity_error_recovery));
                }
                if (value.enable_force_pin_entry_for_pi) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_BAD_DRIVER_LEVEL, Boolean.valueOf(value.enable_force_pin_entry_for_pi));
                }
                if (value.enable_force_pin_entry_for_si) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_CALL_NOT_IMPLEMENTED, Boolean.valueOf(value.enable_force_pin_entry_for_si));
                }
                if (value.enable_fixed_iot_reconnect_delay) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_SEM_TIMEOUT, Boolean.valueOf(value.enable_fixed_iot_reconnect_delay));
                }
                if (value.enable_wpe_unauthenticated_device_integrity_error_recovery) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 122, Boolean.valueOf(value.enable_wpe_unauthenticated_device_integrity_error_recovery));
                }
                if (value.enable_spos_girocard) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 123, Boolean.valueOf(value.enable_spos_girocard));
                }
                if (value.enable_ttpa_run_attestation_before_pin) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_INVALID_LEVEL, Boolean.valueOf(value.enable_ttpa_run_attestation_before_pin));
                }
                if (value.enable_new_background_iot_state_machine) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_NO_VOLUME_LABEL, Boolean.valueOf(value.enable_new_background_iot_state_machine));
                }
                if (value.enable_call_to_armada_for_boot_initialization) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 126, Boolean.valueOf(value.enable_call_to_armada_for_boot_initialization));
                }
                if (value.enable_ttpa_eftpos_payments) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 127, Boolean.valueOf(value.enable_ttpa_eftpos_payments));
                }
                if (value.disable_card_inserted_from_prev_txn_check) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 128, Boolean.valueOf(value.disable_card_inserted_from_prev_txn_check));
                }
                if (value.apps_on_devices_start_transaction_timeout_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 129, Long.valueOf(value.apps_on_devices_start_transaction_timeout_millis));
                }
                if (value.enable_apps_on_devices_start_transaction_timeout) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 130, Boolean.valueOf(value.enable_apps_on_devices_start_transaction_timeout));
                }
                if (value.enable_start_reader_activity_on_state) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 131, Boolean.valueOf(value.enable_start_reader_activity_on_state));
                }
                if (value.enable_process_messages_with_new_state_machine) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_SEEK_ON_DEVICE, Boolean.valueOf(value.enable_process_messages_with_new_state_machine));
                }
                if (value.enable_standalone_app) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_IS_JOIN_TARGET, Boolean.valueOf(value.enable_standalone_app));
                }
                if (value.enable_mandatory_updates) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_IS_JOINED, Boolean.valueOf(value.enable_mandatory_updates));
                }
                if (value.smart_reader_transaction_summary_delay_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, WinError.ERROR_IS_SUBSTED, Long.valueOf(value.smart_reader_transaction_summary_delay_millis));
                }
                if (value.smart_reader_transaction_summary_unsuccessful_delay_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 136, Long.valueOf(value.smart_reader_transaction_summary_unsuccessful_delay_millis));
                }
                if (value.enable_wifi_radio_s710_alpha) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_NOT_SUBSTED, Boolean.valueOf(value.enable_wifi_radio_s710_alpha));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReaderFeatureFlags value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.enable_wifi_radio_s710_alpha) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_NOT_SUBSTED, Boolean.valueOf(value.enable_wifi_radio_s710_alpha));
                }
                if (value.smart_reader_transaction_summary_unsuccessful_delay_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 136, Long.valueOf(value.smart_reader_transaction_summary_unsuccessful_delay_millis));
                }
                if (value.smart_reader_transaction_summary_delay_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, WinError.ERROR_IS_SUBSTED, Long.valueOf(value.smart_reader_transaction_summary_delay_millis));
                }
                if (value.enable_mandatory_updates) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_IS_JOINED, Boolean.valueOf(value.enable_mandatory_updates));
                }
                if (value.enable_standalone_app) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_IS_JOIN_TARGET, Boolean.valueOf(value.enable_standalone_app));
                }
                if (value.enable_process_messages_with_new_state_machine) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_SEEK_ON_DEVICE, Boolean.valueOf(value.enable_process_messages_with_new_state_machine));
                }
                if (value.enable_start_reader_activity_on_state) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 131, Boolean.valueOf(value.enable_start_reader_activity_on_state));
                }
                if (value.enable_apps_on_devices_start_transaction_timeout) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 130, Boolean.valueOf(value.enable_apps_on_devices_start_transaction_timeout));
                }
                if (value.apps_on_devices_start_transaction_timeout_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 129, Long.valueOf(value.apps_on_devices_start_transaction_timeout_millis));
                }
                if (value.disable_card_inserted_from_prev_txn_check) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 128, Boolean.valueOf(value.disable_card_inserted_from_prev_txn_check));
                }
                if (value.enable_ttpa_eftpos_payments) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 127, Boolean.valueOf(value.enable_ttpa_eftpos_payments));
                }
                if (value.enable_call_to_armada_for_boot_initialization) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 126, Boolean.valueOf(value.enable_call_to_armada_for_boot_initialization));
                }
                if (value.enable_new_background_iot_state_machine) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_NO_VOLUME_LABEL, Boolean.valueOf(value.enable_new_background_iot_state_machine));
                }
                if (value.enable_ttpa_run_attestation_before_pin) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_INVALID_LEVEL, Boolean.valueOf(value.enable_ttpa_run_attestation_before_pin));
                }
                if (value.enable_spos_girocard) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 123, Boolean.valueOf(value.enable_spos_girocard));
                }
                if (value.enable_wpe_unauthenticated_device_integrity_error_recovery) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 122, Boolean.valueOf(value.enable_wpe_unauthenticated_device_integrity_error_recovery));
                }
                if (value.enable_fixed_iot_reconnect_delay) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_SEM_TIMEOUT, Boolean.valueOf(value.enable_fixed_iot_reconnect_delay));
                }
                if (value.enable_force_pin_entry_for_si) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_CALL_NOT_IMPLEMENTED, Boolean.valueOf(value.enable_force_pin_entry_for_si));
                }
                if (value.enable_force_pin_entry_for_pi) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_BAD_DRIVER_LEVEL, Boolean.valueOf(value.enable_force_pin_entry_for_pi));
                }
                if (value.enable_wpe_firmware_integrity_error_recovery) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_INVALID_VERIFY_SWITCH, Boolean.valueOf(value.enable_wpe_firmware_integrity_error_recovery));
                }
                if (value.enable_apps_on_devices_post_collect_merchant_ui) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_INVALID_CATEGORY, Boolean.valueOf(value.enable_apps_on_devices_post_collect_merchant_ui));
                }
                if (value.enable_collect_inputs_interstitial_screen) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 116, Boolean.valueOf(value.enable_collect_inputs_interstitial_screen));
                }
                if (value.enable_ktlv_pcs) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 115, Boolean.valueOf(value.enable_ktlv_pcs));
                }
                if (value.enable_ktlv_discrepancy_reporting_pcs) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_INVALID_TARGET_HANDLE, Boolean.valueOf(value.enable_ktlv_discrepancy_reporting_pcs));
                }
                if (value.disable_force_pin_entry) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_NO_MORE_SEARCH_HANDLES, Boolean.valueOf(value.disable_force_pin_entry));
                }
                if (value.enable_remove_duplicate_subtotal_string) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 112, Boolean.valueOf(value.enable_remove_duplicate_subtotal_string));
                }
                if (value.enable_new_incremental_auth_ui) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_BUFFER_OVERFLOW, Boolean.valueOf(value.enable_new_incremental_auth_ui));
                }
                if (value.enable_wpe_accessibility_volume_control) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 110, Boolean.valueOf(value.enable_wpe_accessibility_volume_control));
                }
                if (value.disable_predip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 109, Boolean.valueOf(value.disable_predip));
                }
                if (value.enable_release_build_to_override_local_ip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 108, Boolean.valueOf(value.enable_release_build_to_override_local_ip));
                }
                if (value.mobile_wallet_on_offline_setup_intents_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_DISK_CHANGE, Boolean.valueOf(value.mobile_wallet_on_offline_setup_intents_enabled));
                }
                if (value.offline_setup_intents_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_SEM_USER_LIMIT, Boolean.valueOf(value.offline_setup_intents_enabled));
                }
                if (value.enable_apps_on_devices_settings_menu) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, WinError.ERROR_SEM_OWNER_DIED, Boolean.valueOf(value.enable_apps_on_devices_settings_menu));
                }
                if (value.enable_ios_deferred_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 104, Boolean.valueOf(value.enable_ios_deferred_logging));
                }
                if (value.enable_terminal_surcharging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 103, Boolean.valueOf(value.enable_terminal_surcharging));
                }
                if (value.enable_etna_cav_kfc_updates_check) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 102, Boolean.valueOf(value.enable_etna_cav_kfc_updates_check));
                }
                if (value.enable_battery_not_charging_events_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 101, Boolean.valueOf(value.enable_battery_not_charging_events_logging));
                }
                if (value.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 100, Boolean.valueOf(value.enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests));
                }
                if (value.offline_pair_unseen_reader_circuit_breaker) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 99, Boolean.valueOf(value.offline_pair_unseen_reader_circuit_breaker));
                }
                if (value.selection_form_toggles_below_submit_buttons) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 98, Boolean.valueOf(value.selection_form_toggles_below_submit_buttons));
                }
                if (value.enable_iot_respond_via_rpc) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 97, Boolean.valueOf(value.enable_iot_respond_via_rpc));
                }
                if (value.enable_ttp_auto_reconnect) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 96, Boolean.valueOf(value.enable_ttp_auto_reconnect));
                }
                if (value.enable_dcc) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 95, Boolean.valueOf(value.enable_dcc));
                }
                if (value.android_system_event_logging != null) {
                    ReaderFeatureFlags.AndroidSystemEventLoggingConfig.ADAPTER.encodeWithTag(writer, 94, value.android_system_event_logging);
                }
                if (value.enable_ttpa_pin) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 93, Boolean.valueOf(value.enable_ttpa_pin));
                }
                if (value.rom_install_timeout_seamless_updates_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 92, Long.valueOf(value.rom_install_timeout_seamless_updates_millis));
                }
                if (value.rom_install_timeout_non_seamless_updates_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 91, Long.valueOf(value.rom_install_timeout_non_seamless_updates_millis));
                }
                if (value.enable_client_accessible_pin) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 90, Boolean.valueOf(value.enable_client_accessible_pin));
                }
                if (value.migrate_iot_endpoint_to_iot_service) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 89, Boolean.valueOf(value.migrate_iot_endpoint_to_iot_service));
                }
                if (value.kill_for_memory_event_logging_poll_interval_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 88, Long.valueOf(value.kill_for_memory_event_logging_poll_interval_millis));
                }
                if (value.enable_kill_for_memory_event_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 87, Boolean.valueOf(value.enable_kill_for_memory_event_logging));
                }
                if (value.rom_sdk_kernel_logging_poll_interval_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 86, Long.valueOf(value.rom_sdk_kernel_logging_poll_interval_millis));
                }
                if (value.enable_rom_sdk_kernel_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 85, Boolean.valueOf(value.enable_rom_sdk_kernel_logging));
                }
                if (value.enable_warden_release_serial_port) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 84, Boolean.valueOf(value.enable_warden_release_serial_port));
                }
                if (value.device_temperature_logging_poll_interval_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 83, Long.valueOf(value.device_temperature_logging_poll_interval_millis));
                }
                if (value.enable_device_temperature_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 82, Boolean.valueOf(value.enable_device_temperature_logging));
                }
                if (value.enable_background_update_split_download_and_install) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 81, Boolean.valueOf(value.enable_background_update_split_download_and_install));
                }
                if (value.enable_customer_cancellation_feature) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 80, Boolean.valueOf(value.enable_customer_cancellation_feature));
                }
                if (value.enable_forms_on_sdk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 79, Boolean.valueOf(value.enable_forms_on_sdk));
                }
                if (value.enable_device_callback_key_recovery_flow) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 78, Boolean.valueOf(value.enable_device_callback_key_recovery_flow));
                }
                if (value.enable_device_key_auto_recovery_flow) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 77, Boolean.valueOf(value.enable_device_key_auto_recovery_flow));
                }
                if (value.enable_add_merchant_info_to_edge_headers) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 76, Boolean.valueOf(value.enable_add_merchant_info_to_edge_headers));
                }
                if (value.third_party_settings_intent_logging_poll_interval_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 75, Long.valueOf(value.third_party_settings_intent_logging_poll_interval_millis));
                }
                if (value.enable_third_party_settings_intent_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 74, Boolean.valueOf(value.enable_third_party_settings_intent_logging));
                }
                if (value.device_plugged_in_but_not_charging_minimum_required_duration_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 73, Long.valueOf(value.device_plugged_in_but_not_charging_minimum_required_duration_millis));
                }
                if (value.device_plugged_in_but_not_charging_minimum_battery_discharge_percent != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 72, Long.valueOf(value.device_plugged_in_but_not_charging_minimum_battery_discharge_percent));
                }
                if (value.disable_event_channel_on_reader) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 71, Boolean.valueOf(value.disable_event_channel_on_reader));
                }
                if (value.internal_storage_quota_circuit_breaker) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 70, Boolean.valueOf(value.internal_storage_quota_circuit_breaker));
                }
                if (value.enable_battery_charging_dialog) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 69, Boolean.valueOf(value.enable_battery_charging_dialog));
                }
                if (value.enable_ttpa_emv_config_from_backend) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 68, Boolean.valueOf(value.enable_ttpa_emv_config_from_backend));
                }
                if (value.battery_charging_dialog_killswitch) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 67, Boolean.valueOf(value.battery_charging_dialog_killswitch));
                }
                if (value.enable_p2pe_rom_verification) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 66, Boolean.valueOf(value.enable_p2pe_rom_verification));
                }
                if (value.third_party_app_crash_logging_poll_interval_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 65, Long.valueOf(value.third_party_app_crash_logging_poll_interval_millis));
                }
                if (value.enable_third_party_app_crash_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 64, Boolean.valueOf(value.enable_third_party_app_crash_logging));
                }
                if (value.configure_device_reboot_time_kill_switch) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 63, Boolean.valueOf(value.configure_device_reboot_time_kill_switch));
                }
                if (value.enable_bbpos_debug_logging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 62, Boolean.valueOf(value.enable_bbpos_debug_logging));
                }
                if (value.enable_mag_stripe_pin) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 61, Boolean.valueOf(value.enable_mag_stripe_pin));
                }
                if (value.enable_client_accessibility_app) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 60, Boolean.valueOf(value.enable_client_accessibility_app));
                }
                if (value.enable_mainland_post_action_result) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 59, Boolean.valueOf(value.enable_mainland_post_action_result));
                }
                if (value.enable_iot_hadr_polling) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 58, Boolean.valueOf(value.enable_iot_hadr_polling));
                }
                if (value.enable_send_bbpos_debug_logs_to_splunk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 57, Boolean.valueOf(value.enable_send_bbpos_debug_logs_to_splunk));
                }
                if (value.enable_armada_reauthentication_flow) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 56, Boolean.valueOf(value.enable_armada_reauthentication_flow));
                }
                if (value.enable_configure_reboot_time_with_device_ui) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 55, Boolean.valueOf(value.enable_configure_reboot_time_with_device_ui));
                }
                if (value.enable_application_selection_in_quick_chip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 54, Boolean.valueOf(value.enable_application_selection_in_quick_chip));
                }
                if (value.shopify_bypass_reader_charge_summary) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 53, Boolean.valueOf(value.shopify_bypass_reader_charge_summary));
                }
                if (value.shopify_display_reader_charge_summary) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 52, Boolean.valueOf(value.shopify_display_reader_charge_summary));
                }
                if (value.disable_sdk_force_key_injection_when_unknown_keys) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 51, Boolean.valueOf(value.disable_sdk_force_key_injection_when_unknown_keys));
                }
                if (value.enable_reader_bbpos_proxy) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 50, Boolean.valueOf(value.enable_reader_bbpos_proxy));
                }
                if (value.enable_traces_to_observability_data_endpoint) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 49, Boolean.valueOf(value.enable_traces_to_observability_data_endpoint));
                }
                if (value.enable_sharing_device_report) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 48, Boolean.valueOf(value.enable_sharing_device_report));
                }
                if (value.enable_iot_client_respond_via_iot) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 47, Boolean.valueOf(value.enable_iot_client_respond_via_iot));
                }
                if (value.tip_eligible_amounts_circuit_breaker) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 46, Boolean.valueOf(value.tip_eligible_amounts_circuit_breaker));
                }
                if (value.enable_client_logger_dispatcher) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 45, Boolean.valueOf(value.enable_client_logger_dispatcher));
                }
                if (value.enable_new_payment_collection_android_sdk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 40, Boolean.valueOf(value.enable_new_payment_collection_android_sdk));
                }
                if (value.enable_eftpos_routing) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 39, Boolean.valueOf(value.enable_eftpos_routing));
                }
                if (value.enable_new_bbpos_assets_update_components) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 38, Boolean.valueOf(value.enable_new_bbpos_assets_update_components));
                }
                if (value.enable_aod_default_app) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 37, Boolean.valueOf(value.enable_aod_default_app));
                }
                if (value.disable_bluetooth_auto_reconnect_ios_sdk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 36, Boolean.valueOf(value.disable_bluetooth_auto_reconnect_ios_sdk));
                }
                if (value.disable_bluetooth_auto_reconnect_android_sdk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 35, Boolean.valueOf(value.disable_bluetooth_auto_reconnect_android_sdk));
                }
                if (value.bluetooth_auto_reconnect_ios_sdk_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 34, Boolean.valueOf(value.bluetooth_auto_reconnect_ios_sdk_enabled));
                }
                if (value.bluetooth_auto_reconnect_android_sdk_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 33, Boolean.valueOf(value.bluetooth_auto_reconnect_android_sdk_enabled));
                }
                if (value.enable_gif_splash_and_lightmode) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 32, Boolean.valueOf(value.enable_gif_splash_and_lightmode));
                }
                if (value.enable_crash_button_in_diagnostics) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 31, Boolean.valueOf(value.enable_crash_button_in_diagnostics));
                }
                if (value.disable_p2pe_apk_signing_verification) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 30, Boolean.valueOf(value.disable_p2pe_apk_signing_verification));
                }
                if (value.enable_p2pe_apk_signing_verification) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 29, Boolean.valueOf(value.enable_p2pe_apk_signing_verification));
                }
                if (value.enable_moto_transactions) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 28, Boolean.valueOf(value.enable_moto_transactions));
                }
                if (value.enable_logging_to_disk) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 27, Boolean.valueOf(value.enable_logging_to_disk));
                }
                if (value.wp3_tipping_ios_sdk_circuit_breaker) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 26, Boolean.valueOf(value.wp3_tipping_ios_sdk_circuit_breaker));
                }
                if (value.enable_usb_connectivity) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 25, Boolean.valueOf(value.enable_usb_connectivity));
                }
                if (value.wp3_tipping_android_sdk_circuit_breaker) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 24, Boolean.valueOf(value.wp3_tipping_android_sdk_circuit_breaker));
                }
                if (value.enable_ktor_http_server) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 23, Boolean.valueOf(value.enable_ktor_http_server));
                }
                if (value.rom_update_kill_switch) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 22, Boolean.valueOf(value.rom_update_kill_switch));
                }
                if (value.enable_new_updates_flow) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 21, Boolean.valueOf(value.enable_new_updates_flow));
                }
                if (value.disable_iot) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 20, Boolean.valueOf(value.disable_iot));
                }
                if (value.enable_wpe_updater_new_oobe_killswitch) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 19, Boolean.valueOf(value.enable_wpe_updater_new_oobe_killswitch));
                }
                if (value.enable_offline_mode) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 18, Boolean.valueOf(value.enable_offline_mode));
                }
                if (value.enable_iot) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 17, Boolean.valueOf(value.enable_iot));
                }
                if (value.enable_updater_new_oobe_flow) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 16, Boolean.valueOf(value.enable_updater_new_oobe_flow));
                }
                if (value.enable_connect_and_collect_release) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 15, Boolean.valueOf(value.enable_connect_and_collect_release));
                }
                if (value.enable_roborabbit_ui_redesign) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 14, Boolean.valueOf(value.enable_roborabbit_ui_redesign));
                }
                if (value.enable_on_reader_cancel) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 13, Boolean.valueOf(value.enable_on_reader_cancel));
                }
                if (value.enable_firmware_update_retries) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 12, Boolean.valueOf(value.enable_firmware_update_retries));
                }
                if (value.enable_firmware_updates) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 11, Boolean.valueOf(value.enable_firmware_updates));
                }
                if (value.enable_connect_and_collect) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.enable_connect_and_collect));
                }
                if (value.enable_updater_factory_reset_target) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.enable_updater_factory_reset_target));
                }
                if (value.enable_on_reader_tipping) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.enable_on_reader_tipping));
                }
                if (value.enableBbposDownloading) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.enableBbposDownloading));
                }
                if (value.enableBbposVersioning) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.enableBbposVersioning));
                }
                if (value.server_driven_poll_interval_seconds != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.server_driven_poll_interval_seconds));
                }
                if (value.enable_sdk_transaction_sessions) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.enable_sdk_transaction_sessions));
                }
                if (value.enable_server_driven) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.enable_server_driven));
                }
                if (value.allow_non_browser_env) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.allow_non_browser_env));
                }
                if (value.tipping_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.tipping_enabled));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReaderFeatureFlags redact(ReaderFeatureFlags value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ReaderFeatureFlags.AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig = value.android_system_event_logging;
                return ReaderFeatureFlags.copy$default(value, false, false, false, false, 0L, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 0L, false, false, false, false, false, false, 0L, 0L, false, 0L, false, false, false, false, false, false, false, 0L, false, false, 0L, false, 0L, false, false, 0L, 0L, false, androidSystemEventLoggingConfig != null ? ReaderFeatureFlags.AndroidSystemEventLoggingConfig.ADAPTER.redact(androidSystemEventLoggingConfig) : null, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 0L, false, false, false, false, false, 0L, 0L, false, ByteString.EMPTY, -1, -1, -33554433, -1, 31, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReaderFeatureFlags decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ReaderFeatureFlags.AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig = null;
                boolean z = false;
                boolean z2 = false;
                boolean z3 = false;
                boolean z4 = false;
                boolean z5 = false;
                boolean z6 = false;
                boolean z7 = false;
                boolean z8 = false;
                boolean z9 = false;
                boolean z10 = false;
                boolean z11 = false;
                boolean z12 = false;
                boolean z13 = false;
                boolean z14 = false;
                boolean z15 = false;
                boolean z16 = false;
                boolean z17 = false;
                boolean z18 = false;
                boolean z19 = false;
                boolean z20 = false;
                boolean z21 = false;
                boolean z22 = false;
                boolean z23 = false;
                boolean z24 = false;
                boolean z25 = false;
                boolean z26 = false;
                boolean z27 = false;
                boolean z28 = false;
                boolean z29 = false;
                boolean z30 = false;
                boolean z31 = false;
                boolean z32 = false;
                boolean z33 = false;
                boolean z34 = false;
                boolean z35 = false;
                boolean z36 = false;
                boolean z37 = false;
                boolean z38 = false;
                boolean z39 = false;
                boolean z40 = false;
                boolean z41 = false;
                boolean z42 = false;
                boolean z43 = false;
                boolean z44 = false;
                boolean z45 = false;
                boolean z46 = false;
                boolean z47 = false;
                boolean z48 = false;
                boolean z49 = false;
                boolean z50 = false;
                boolean z51 = false;
                boolean z52 = false;
                boolean z53 = false;
                boolean z54 = false;
                boolean z55 = false;
                boolean z56 = false;
                boolean z57 = false;
                boolean z58 = false;
                boolean z59 = false;
                boolean z60 = false;
                boolean z61 = false;
                boolean z62 = false;
                boolean z63 = false;
                boolean z64 = false;
                boolean z65 = false;
                boolean z66 = false;
                boolean z67 = false;
                boolean z68 = false;
                boolean z69 = false;
                boolean z70 = false;
                boolean z71 = false;
                boolean z72 = false;
                boolean z73 = false;
                boolean z74 = false;
                boolean z75 = false;
                boolean z76 = false;
                boolean z77 = false;
                boolean z78 = false;
                boolean z79 = false;
                boolean z80 = false;
                boolean z81 = false;
                boolean z82 = false;
                boolean z83 = false;
                boolean z84 = false;
                boolean z85 = false;
                boolean z86 = false;
                boolean z87 = false;
                boolean z88 = false;
                boolean z89 = false;
                boolean z90 = false;
                boolean z91 = false;
                boolean z92 = false;
                boolean z93 = false;
                boolean z94 = false;
                boolean z95 = false;
                boolean z96 = false;
                boolean z97 = false;
                boolean z98 = false;
                boolean z99 = false;
                boolean z100 = false;
                boolean z101 = false;
                boolean z102 = false;
                boolean z103 = false;
                boolean z104 = false;
                boolean z105 = false;
                boolean z106 = false;
                boolean z107 = false;
                boolean z108 = false;
                boolean z109 = false;
                boolean z110 = false;
                boolean z111 = false;
                boolean z112 = false;
                boolean z113 = false;
                boolean z114 = false;
                boolean z115 = false;
                boolean z116 = false;
                boolean z117 = false;
                boolean z118 = false;
                boolean z119 = false;
                long j = 0;
                long j2 = 0;
                long j3 = 0;
                long j4 = 0;
                long j5 = 0;
                long j6 = 0;
                long j7 = 0;
                long j8 = 0;
                long j9 = 0;
                long j10 = 0;
                long j11 = 0;
                long j12 = 0;
                long j13 = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                boolean zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit = Unit.INSTANCE;
                                z = zBooleanValue;
                                break;
                            case 2:
                                boolean zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit2 = Unit.INSTANCE;
                                z2 = zBooleanValue2;
                                break;
                            case 3:
                                boolean zBooleanValue3 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit3 = Unit.INSTANCE;
                                z3 = zBooleanValue3;
                                break;
                            case 4:
                                boolean zBooleanValue4 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit4 = Unit.INSTANCE;
                                z4 = zBooleanValue4;
                                break;
                            case 5:
                                long jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit5 = Unit.INSTANCE;
                                j = jLongValue;
                                break;
                            case 6:
                                boolean zBooleanValue5 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit6 = Unit.INSTANCE;
                                z5 = zBooleanValue5;
                                break;
                            case 7:
                                boolean zBooleanValue6 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit7 = Unit.INSTANCE;
                                z6 = zBooleanValue6;
                                break;
                            case 8:
                                boolean zBooleanValue7 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit8 = Unit.INSTANCE;
                                z7 = zBooleanValue7;
                                break;
                            case 9:
                                boolean zBooleanValue8 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit9 = Unit.INSTANCE;
                                z8 = zBooleanValue8;
                                break;
                            case 10:
                                boolean zBooleanValue9 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit10 = Unit.INSTANCE;
                                z9 = zBooleanValue9;
                                break;
                            case 11:
                                boolean zBooleanValue10 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit11 = Unit.INSTANCE;
                                z10 = zBooleanValue10;
                                break;
                            case 12:
                                boolean zBooleanValue11 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit12 = Unit.INSTANCE;
                                z11 = zBooleanValue11;
                                break;
                            case 13:
                                boolean zBooleanValue12 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit13 = Unit.INSTANCE;
                                z12 = zBooleanValue12;
                                break;
                            case 14:
                                boolean zBooleanValue13 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit14 = Unit.INSTANCE;
                                z13 = zBooleanValue13;
                                break;
                            case 15:
                                boolean zBooleanValue14 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit15 = Unit.INSTANCE;
                                z14 = zBooleanValue14;
                                break;
                            case 16:
                                boolean zBooleanValue15 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit16 = Unit.INSTANCE;
                                z15 = zBooleanValue15;
                                break;
                            case 17:
                                boolean zBooleanValue16 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit17 = Unit.INSTANCE;
                                z16 = zBooleanValue16;
                                break;
                            case 18:
                                boolean zBooleanValue17 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit18 = Unit.INSTANCE;
                                z17 = zBooleanValue17;
                                break;
                            case 19:
                                boolean zBooleanValue18 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit19 = Unit.INSTANCE;
                                z18 = zBooleanValue18;
                                break;
                            case 20:
                                boolean zBooleanValue19 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit20 = Unit.INSTANCE;
                                z19 = zBooleanValue19;
                                break;
                            case 21:
                                boolean zBooleanValue20 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit21 = Unit.INSTANCE;
                                z20 = zBooleanValue20;
                                break;
                            case 22:
                                boolean zBooleanValue21 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit22 = Unit.INSTANCE;
                                z21 = zBooleanValue21;
                                break;
                            case 23:
                                boolean zBooleanValue22 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit23 = Unit.INSTANCE;
                                z22 = zBooleanValue22;
                                break;
                            case 24:
                                boolean zBooleanValue23 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit24 = Unit.INSTANCE;
                                z23 = zBooleanValue23;
                                break;
                            case 25:
                                boolean zBooleanValue24 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit25 = Unit.INSTANCE;
                                z24 = zBooleanValue24;
                                break;
                            case 26:
                                boolean zBooleanValue25 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit26 = Unit.INSTANCE;
                                z25 = zBooleanValue25;
                                break;
                            case 27:
                                boolean zBooleanValue26 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit27 = Unit.INSTANCE;
                                z26 = zBooleanValue26;
                                break;
                            case 28:
                                boolean zBooleanValue27 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit28 = Unit.INSTANCE;
                                z27 = zBooleanValue27;
                                break;
                            case 29:
                                boolean zBooleanValue28 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit29 = Unit.INSTANCE;
                                z28 = zBooleanValue28;
                                break;
                            case 30:
                                boolean zBooleanValue29 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit30 = Unit.INSTANCE;
                                z29 = zBooleanValue29;
                                break;
                            case 31:
                                boolean zBooleanValue30 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit31 = Unit.INSTANCE;
                                z30 = zBooleanValue30;
                                break;
                            case 32:
                                boolean zBooleanValue31 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit32 = Unit.INSTANCE;
                                z31 = zBooleanValue31;
                                break;
                            case 33:
                                boolean zBooleanValue32 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit33 = Unit.INSTANCE;
                                z32 = zBooleanValue32;
                                break;
                            case 34:
                                boolean zBooleanValue33 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit34 = Unit.INSTANCE;
                                z33 = zBooleanValue33;
                                break;
                            case 35:
                                boolean zBooleanValue34 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit35 = Unit.INSTANCE;
                                z34 = zBooleanValue34;
                                break;
                            case 36:
                                boolean zBooleanValue35 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit36 = Unit.INSTANCE;
                                z35 = zBooleanValue35;
                                break;
                            case 37:
                                boolean zBooleanValue36 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit37 = Unit.INSTANCE;
                                z36 = zBooleanValue36;
                                break;
                            case 38:
                                boolean zBooleanValue37 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit38 = Unit.INSTANCE;
                                z37 = zBooleanValue37;
                                break;
                            case 39:
                                boolean zBooleanValue38 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit39 = Unit.INSTANCE;
                                z38 = zBooleanValue38;
                                break;
                            case 40:
                                boolean zBooleanValue39 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit40 = Unit.INSTANCE;
                                z39 = zBooleanValue39;
                                break;
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            default:
                                reader.readUnknownField(iNextTag);
                                Unit unit41 = Unit.INSTANCE;
                                break;
                            case 45:
                                boolean zBooleanValue40 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit42 = Unit.INSTANCE;
                                z40 = zBooleanValue40;
                                break;
                            case 46:
                                boolean zBooleanValue41 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit43 = Unit.INSTANCE;
                                z41 = zBooleanValue41;
                                break;
                            case 47:
                                boolean zBooleanValue42 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit44 = Unit.INSTANCE;
                                z42 = zBooleanValue42;
                                break;
                            case 48:
                                boolean zBooleanValue43 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit45 = Unit.INSTANCE;
                                z43 = zBooleanValue43;
                                break;
                            case 49:
                                boolean zBooleanValue44 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit46 = Unit.INSTANCE;
                                z44 = zBooleanValue44;
                                break;
                            case 50:
                                boolean zBooleanValue45 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit47 = Unit.INSTANCE;
                                z45 = zBooleanValue45;
                                break;
                            case 51:
                                boolean zBooleanValue46 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit48 = Unit.INSTANCE;
                                z46 = zBooleanValue46;
                                break;
                            case 52:
                                boolean zBooleanValue47 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit49 = Unit.INSTANCE;
                                z47 = zBooleanValue47;
                                break;
                            case 53:
                                boolean zBooleanValue48 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit50 = Unit.INSTANCE;
                                z48 = zBooleanValue48;
                                break;
                            case 54:
                                boolean zBooleanValue49 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit51 = Unit.INSTANCE;
                                z49 = zBooleanValue49;
                                break;
                            case 55:
                                boolean zBooleanValue50 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit52 = Unit.INSTANCE;
                                z50 = zBooleanValue50;
                                break;
                            case 56:
                                boolean zBooleanValue51 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit53 = Unit.INSTANCE;
                                z51 = zBooleanValue51;
                                break;
                            case 57:
                                boolean zBooleanValue52 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit54 = Unit.INSTANCE;
                                z52 = zBooleanValue52;
                                break;
                            case 58:
                                boolean zBooleanValue53 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit55 = Unit.INSTANCE;
                                z53 = zBooleanValue53;
                                break;
                            case 59:
                                boolean zBooleanValue54 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit56 = Unit.INSTANCE;
                                z54 = zBooleanValue54;
                                break;
                            case 60:
                                boolean zBooleanValue55 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit57 = Unit.INSTANCE;
                                z55 = zBooleanValue55;
                                break;
                            case 61:
                                boolean zBooleanValue56 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit58 = Unit.INSTANCE;
                                z56 = zBooleanValue56;
                                break;
                            case 62:
                                boolean zBooleanValue57 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit59 = Unit.INSTANCE;
                                z57 = zBooleanValue57;
                                break;
                            case 63:
                                boolean zBooleanValue58 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit60 = Unit.INSTANCE;
                                z58 = zBooleanValue58;
                                break;
                            case 64:
                                boolean zBooleanValue59 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit61 = Unit.INSTANCE;
                                z59 = zBooleanValue59;
                                break;
                            case 65:
                                long jLongValue2 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit62 = Unit.INSTANCE;
                                j2 = jLongValue2;
                                break;
                            case 66:
                                boolean zBooleanValue60 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit63 = Unit.INSTANCE;
                                z60 = zBooleanValue60;
                                break;
                            case 67:
                                boolean zBooleanValue61 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit64 = Unit.INSTANCE;
                                z61 = zBooleanValue61;
                                break;
                            case 68:
                                boolean zBooleanValue62 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit65 = Unit.INSTANCE;
                                z62 = zBooleanValue62;
                                break;
                            case 69:
                                boolean zBooleanValue63 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit66 = Unit.INSTANCE;
                                z63 = zBooleanValue63;
                                break;
                            case 70:
                                boolean zBooleanValue64 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit67 = Unit.INSTANCE;
                                z64 = zBooleanValue64;
                                break;
                            case 71:
                                boolean zBooleanValue65 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit68 = Unit.INSTANCE;
                                z65 = zBooleanValue65;
                                break;
                            case 72:
                                long jLongValue3 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit69 = Unit.INSTANCE;
                                j3 = jLongValue3;
                                break;
                            case 73:
                                long jLongValue4 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit70 = Unit.INSTANCE;
                                j4 = jLongValue4;
                                break;
                            case 74:
                                boolean zBooleanValue66 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit71 = Unit.INSTANCE;
                                z66 = zBooleanValue66;
                                break;
                            case 75:
                                long jLongValue5 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit72 = Unit.INSTANCE;
                                j5 = jLongValue5;
                                break;
                            case 76:
                                boolean zBooleanValue67 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit73 = Unit.INSTANCE;
                                z67 = zBooleanValue67;
                                break;
                            case 77:
                                boolean zBooleanValue68 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit74 = Unit.INSTANCE;
                                z68 = zBooleanValue68;
                                break;
                            case 78:
                                boolean zBooleanValue69 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit75 = Unit.INSTANCE;
                                z69 = zBooleanValue69;
                                break;
                            case 79:
                                boolean zBooleanValue70 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit76 = Unit.INSTANCE;
                                z70 = zBooleanValue70;
                                break;
                            case 80:
                                boolean zBooleanValue71 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit77 = Unit.INSTANCE;
                                z71 = zBooleanValue71;
                                break;
                            case 81:
                                boolean zBooleanValue72 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit78 = Unit.INSTANCE;
                                z72 = zBooleanValue72;
                                break;
                            case 82:
                                boolean zBooleanValue73 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit79 = Unit.INSTANCE;
                                z73 = zBooleanValue73;
                                break;
                            case 83:
                                long jLongValue6 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit80 = Unit.INSTANCE;
                                j6 = jLongValue6;
                                break;
                            case 84:
                                boolean zBooleanValue74 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit81 = Unit.INSTANCE;
                                z74 = zBooleanValue74;
                                break;
                            case WinError.ERROR_ALREADY_ASSIGNED /* 85 */:
                                boolean zBooleanValue75 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit82 = Unit.INSTANCE;
                                z75 = zBooleanValue75;
                                break;
                            case 86:
                                long jLongValue7 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit83 = Unit.INSTANCE;
                                j7 = jLongValue7;
                                break;
                            case 87:
                                boolean zBooleanValue76 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit84 = Unit.INSTANCE;
                                z76 = zBooleanValue76;
                                break;
                            case 88:
                                long jLongValue8 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit85 = Unit.INSTANCE;
                                j8 = jLongValue8;
                                break;
                            case 89:
                                boolean zBooleanValue77 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit86 = Unit.INSTANCE;
                                z77 = zBooleanValue77;
                                break;
                            case 90:
                                boolean zBooleanValue78 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit87 = Unit.INSTANCE;
                                z78 = zBooleanValue78;
                                break;
                            case WinUser.SM_MOUSEHORIZONTALWHEELPRESENT /* 91 */:
                                long jLongValue9 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit88 = Unit.INSTANCE;
                                j9 = jLongValue9;
                                break;
                            case WinUser.SM_CXPADDEDBORDER /* 92 */:
                                long jLongValue10 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit89 = Unit.INSTANCE;
                                j10 = jLongValue10;
                                break;
                            case 93:
                                boolean zBooleanValue79 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit90 = Unit.INSTANCE;
                                z79 = zBooleanValue79;
                                break;
                            case 94:
                                ReaderFeatureFlags.AndroidSystemEventLoggingConfig androidSystemEventLoggingConfigDecode = ReaderFeatureFlags.AndroidSystemEventLoggingConfig.ADAPTER.decode(reader);
                                Unit unit91 = Unit.INSTANCE;
                                androidSystemEventLoggingConfig = androidSystemEventLoggingConfigDecode;
                                break;
                            case XAttr.ENOTSUP /* 95 */:
                                boolean zBooleanValue80 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit92 = Unit.INSTANCE;
                                z80 = zBooleanValue80;
                                break;
                            case WinNT.LANG_KASHMIRI /* 96 */:
                                boolean zBooleanValue81 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit93 = Unit.INSTANCE;
                                z81 = zBooleanValue81;
                                break;
                            case 97:
                                boolean zBooleanValue82 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit94 = Unit.INSTANCE;
                                z82 = zBooleanValue82;
                                break;
                            case 98:
                                boolean zBooleanValue83 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit95 = Unit.INSTANCE;
                                z83 = zBooleanValue83;
                                break;
                            case 99:
                                boolean zBooleanValue84 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit96 = Unit.INSTANCE;
                                z84 = zBooleanValue84;
                                break;
                            case 100:
                                boolean zBooleanValue85 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit97 = Unit.INSTANCE;
                                z85 = zBooleanValue85;
                                break;
                            case 101:
                                boolean zBooleanValue86 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit98 = Unit.INSTANCE;
                                z86 = zBooleanValue86;
                                break;
                            case 102:
                                boolean zBooleanValue87 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit99 = Unit.INSTANCE;
                                z87 = zBooleanValue87;
                                break;
                            case 103:
                                boolean zBooleanValue88 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit100 = Unit.INSTANCE;
                                z88 = zBooleanValue88;
                                break;
                            case 104:
                                boolean zBooleanValue89 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit101 = Unit.INSTANCE;
                                z89 = zBooleanValue89;
                                break;
                            case WinError.ERROR_SEM_OWNER_DIED /* 105 */:
                                boolean zBooleanValue90 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit102 = Unit.INSTANCE;
                                z90 = zBooleanValue90;
                                break;
                            case WinError.ERROR_SEM_USER_LIMIT /* 106 */:
                                boolean zBooleanValue91 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit103 = Unit.INSTANCE;
                                z91 = zBooleanValue91;
                                break;
                            case WinError.ERROR_DISK_CHANGE /* 107 */:
                                boolean zBooleanValue92 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit104 = Unit.INSTANCE;
                                z92 = zBooleanValue92;
                                break;
                            case 108:
                                boolean zBooleanValue93 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit105 = Unit.INSTANCE;
                                z93 = zBooleanValue93;
                                break;
                            case 109:
                                boolean zBooleanValue94 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit106 = Unit.INSTANCE;
                                z94 = zBooleanValue94;
                                break;
                            case 110:
                                boolean zBooleanValue95 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit107 = Unit.INSTANCE;
                                z95 = zBooleanValue95;
                                break;
                            case WinError.ERROR_BUFFER_OVERFLOW /* 111 */:
                                boolean zBooleanValue96 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit108 = Unit.INSTANCE;
                                z96 = zBooleanValue96;
                                break;
                            case 112:
                                boolean zBooleanValue97 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit109 = Unit.INSTANCE;
                                z97 = zBooleanValue97;
                                break;
                            case WinError.ERROR_NO_MORE_SEARCH_HANDLES /* 113 */:
                                boolean zBooleanValue98 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit110 = Unit.INSTANCE;
                                z98 = zBooleanValue98;
                                break;
                            case WinError.ERROR_INVALID_TARGET_HANDLE /* 114 */:
                                boolean zBooleanValue99 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit111 = Unit.INSTANCE;
                                z99 = zBooleanValue99;
                                break;
                            case 115:
                                boolean zBooleanValue100 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit112 = Unit.INSTANCE;
                                z100 = zBooleanValue100;
                                break;
                            case 116:
                                boolean zBooleanValue101 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit113 = Unit.INSTANCE;
                                z101 = zBooleanValue101;
                                break;
                            case WinError.ERROR_INVALID_CATEGORY /* 117 */:
                                boolean zBooleanValue102 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit114 = Unit.INSTANCE;
                                z102 = zBooleanValue102;
                                break;
                            case WinError.ERROR_INVALID_VERIFY_SWITCH /* 118 */:
                                boolean zBooleanValue103 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit115 = Unit.INSTANCE;
                                z103 = zBooleanValue103;
                                break;
                            case WinError.ERROR_BAD_DRIVER_LEVEL /* 119 */:
                                boolean zBooleanValue104 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit116 = Unit.INSTANCE;
                                z104 = zBooleanValue104;
                                break;
                            case WinError.ERROR_CALL_NOT_IMPLEMENTED /* 120 */:
                                boolean zBooleanValue105 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit117 = Unit.INSTANCE;
                                z105 = zBooleanValue105;
                                break;
                            case WinError.ERROR_SEM_TIMEOUT /* 121 */:
                                boolean zBooleanValue106 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit118 = Unit.INSTANCE;
                                z106 = zBooleanValue106;
                                break;
                            case 122:
                                boolean zBooleanValue107 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit119 = Unit.INSTANCE;
                                z107 = zBooleanValue107;
                                break;
                            case 123:
                                boolean zBooleanValue108 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit120 = Unit.INSTANCE;
                                z108 = zBooleanValue108;
                                break;
                            case WinError.ERROR_INVALID_LEVEL /* 124 */:
                                boolean zBooleanValue109 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit121 = Unit.INSTANCE;
                                z109 = zBooleanValue109;
                                break;
                            case WinError.ERROR_NO_VOLUME_LABEL /* 125 */:
                                boolean zBooleanValue110 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit122 = Unit.INSTANCE;
                                z110 = zBooleanValue110;
                                break;
                            case 126:
                                boolean zBooleanValue111 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit123 = Unit.INSTANCE;
                                z111 = zBooleanValue111;
                                break;
                            case 127:
                                boolean zBooleanValue112 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit124 = Unit.INSTANCE;
                                z112 = zBooleanValue112;
                                break;
                            case 128:
                                boolean zBooleanValue113 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit125 = Unit.INSTANCE;
                                z113 = zBooleanValue113;
                                break;
                            case 129:
                                long jLongValue11 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit126 = Unit.INSTANCE;
                                j11 = jLongValue11;
                                break;
                            case 130:
                                boolean zBooleanValue114 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit127 = Unit.INSTANCE;
                                z114 = zBooleanValue114;
                                break;
                            case 131:
                                boolean zBooleanValue115 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit128 = Unit.INSTANCE;
                                z115 = zBooleanValue115;
                                break;
                            case WinError.ERROR_SEEK_ON_DEVICE /* 132 */:
                                boolean zBooleanValue116 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit129 = Unit.INSTANCE;
                                z116 = zBooleanValue116;
                                break;
                            case WinError.ERROR_IS_JOIN_TARGET /* 133 */:
                                boolean zBooleanValue117 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit130 = Unit.INSTANCE;
                                z117 = zBooleanValue117;
                                break;
                            case WinError.ERROR_IS_JOINED /* 134 */:
                                boolean zBooleanValue118 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit131 = Unit.INSTANCE;
                                z118 = zBooleanValue118;
                                break;
                            case WinError.ERROR_IS_SUBSTED /* 135 */:
                                long jLongValue12 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit132 = Unit.INSTANCE;
                                j12 = jLongValue12;
                                break;
                            case 136:
                                long jLongValue13 = ProtoAdapter.INT64.decode(reader).longValue();
                                Unit unit133 = Unit.INSTANCE;
                                j13 = jLongValue13;
                                break;
                            case WinError.ERROR_NOT_SUBSTED /* 137 */:
                                boolean zBooleanValue119 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                Unit unit134 = Unit.INSTANCE;
                                z119 = zBooleanValue119;
                                break;
                        }
                    } else {
                        return new ReaderFeatureFlags(z, z2, z3, z4, j, z5, z6, z7, z8, z9, z10, z11, z12, z13, z14, z15, z16, z17, z18, z19, z20, z21, z22, z23, z24, z25, z26, z27, z28, z29, z30, z31, z32, z33, z34, z35, z36, z37, z38, z39, z40, z41, z42, z43, z44, z45, z46, z47, z48, z49, z50, z51, z52, z53, z54, z55, z56, z57, z58, z59, j2, z60, z61, z62, z63, z64, z65, j3, j4, z66, j5, z67, z68, z69, z70, z71, z72, z73, j6, z74, z75, j7, z76, j8, z77, z78, j9, j10, z79, androidSystemEventLoggingConfig, z80, z81, z82, z83, z84, z85, z86, z87, z88, z89, z90, z91, z92, z93, z94, z95, z96, z97, z98, z99, z100, z101, z102, z103, z104, z105, z106, z107, z108, z109, z110, z111, z112, z113, j11, z114, z115, z116, z117, z118, j12, j13, z119, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: ReaderFeatureFlags.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aB_\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ`\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;", "poll_interval_millis", "", "destroy_activity_enabled", "", "destroy_service_enabled", "process_died_enabled", "anr_enabled", "low_memory_enabled", "process_crashed_too_much_enabled", "service_crashed_too_much_enabled", "unknownFields", "Lokio/ByteString;", "(JZZZZZZZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AndroidSystemEventLoggingConfig extends Message<AndroidSystemEventLoggingConfig, Builder> {
        public static final ProtoAdapter<AndroidSystemEventLoggingConfig> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "anrEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
        public final boolean anr_enabled;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "destroyActivityEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final boolean destroy_activity_enabled;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "destroyServiceEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final boolean destroy_service_enabled;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "lowMemoryEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
        public final boolean low_memory_enabled;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "pollIntervalMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final long poll_interval_millis;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "processCrashedTooMuchEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
        public final boolean process_crashed_too_much_enabled;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "processDiedEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final boolean process_died_enabled;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "serviceCrashedTooMuchEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
        public final boolean service_crashed_too_much_enabled;

        public AndroidSystemEventLoggingConfig() {
            this(0L, false, false, false, false, false, false, false, null, 511, null);
        }

        public /* synthetic */ AndroidSystemEventLoggingConfig(long j, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? false : z3, (i & 16) != 0 ? false : z4, (i & 32) != 0 ? false : z5, (i & 64) != 0 ? false : z6, (i & 128) != 0 ? false : z7, (i & 256) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AndroidSystemEventLoggingConfig(long j, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.poll_interval_millis = j;
            this.destroy_activity_enabled = z;
            this.destroy_service_enabled = z2;
            this.process_died_enabled = z3;
            this.anr_enabled = z4;
            this.low_memory_enabled = z5;
            this.process_crashed_too_much_enabled = z6;
            this.service_crashed_too_much_enabled = z7;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.poll_interval_millis = this.poll_interval_millis;
            builder.destroy_activity_enabled = this.destroy_activity_enabled;
            builder.destroy_service_enabled = this.destroy_service_enabled;
            builder.process_died_enabled = this.process_died_enabled;
            builder.anr_enabled = this.anr_enabled;
            builder.low_memory_enabled = this.low_memory_enabled;
            builder.process_crashed_too_much_enabled = this.process_crashed_too_much_enabled;
            builder.service_crashed_too_much_enabled = this.service_crashed_too_much_enabled;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AndroidSystemEventLoggingConfig)) {
                return false;
            }
            AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig = (AndroidSystemEventLoggingConfig) other;
            return Intrinsics.areEqual(unknownFields(), androidSystemEventLoggingConfig.unknownFields()) && this.poll_interval_millis == androidSystemEventLoggingConfig.poll_interval_millis && this.destroy_activity_enabled == androidSystemEventLoggingConfig.destroy_activity_enabled && this.destroy_service_enabled == androidSystemEventLoggingConfig.destroy_service_enabled && this.process_died_enabled == androidSystemEventLoggingConfig.process_died_enabled && this.anr_enabled == androidSystemEventLoggingConfig.anr_enabled && this.low_memory_enabled == androidSystemEventLoggingConfig.low_memory_enabled && this.process_crashed_too_much_enabled == androidSystemEventLoggingConfig.process_crashed_too_much_enabled && this.service_crashed_too_much_enabled == androidSystemEventLoggingConfig.service_crashed_too_much_enabled;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((((((((((((unknownFields().hashCode() * 37) + Long.hashCode(this.poll_interval_millis)) * 37) + Boolean.hashCode(this.destroy_activity_enabled)) * 37) + Boolean.hashCode(this.destroy_service_enabled)) * 37) + Boolean.hashCode(this.process_died_enabled)) * 37) + Boolean.hashCode(this.anr_enabled)) * 37) + Boolean.hashCode(this.low_memory_enabled)) * 37) + Boolean.hashCode(this.process_crashed_too_much_enabled)) * 37) + Boolean.hashCode(this.service_crashed_too_much_enabled);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("poll_interval_millis=" + this.poll_interval_millis);
            arrayList2.add("destroy_activity_enabled=" + this.destroy_activity_enabled);
            arrayList2.add("destroy_service_enabled=" + this.destroy_service_enabled);
            arrayList2.add("process_died_enabled=" + this.process_died_enabled);
            arrayList2.add("anr_enabled=" + this.anr_enabled);
            arrayList2.add("low_memory_enabled=" + this.low_memory_enabled);
            arrayList2.add("process_crashed_too_much_enabled=" + this.process_crashed_too_much_enabled);
            arrayList2.add("service_crashed_too_much_enabled=" + this.service_crashed_too_much_enabled);
            return CollectionsKt.joinToString$default(arrayList, ", ", "AndroidSystemEventLoggingConfig{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AndroidSystemEventLoggingConfig copy$default(AndroidSystemEventLoggingConfig androidSystemEventLoggingConfig, long j, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                j = androidSystemEventLoggingConfig.poll_interval_millis;
            }
            long j2 = j;
            if ((i & 2) != 0) {
                z = androidSystemEventLoggingConfig.destroy_activity_enabled;
            }
            boolean z8 = z;
            if ((i & 4) != 0) {
                z2 = androidSystemEventLoggingConfig.destroy_service_enabled;
            }
            return androidSystemEventLoggingConfig.copy(j2, z8, z2, (i & 8) != 0 ? androidSystemEventLoggingConfig.process_died_enabled : z3, (i & 16) != 0 ? androidSystemEventLoggingConfig.anr_enabled : z4, (i & 32) != 0 ? androidSystemEventLoggingConfig.low_memory_enabled : z5, (i & 64) != 0 ? androidSystemEventLoggingConfig.process_crashed_too_much_enabled : z6, (i & 128) != 0 ? androidSystemEventLoggingConfig.service_crashed_too_much_enabled : z7, (i & 256) != 0 ? androidSystemEventLoggingConfig.unknownFields() : byteString);
        }

        public final AndroidSystemEventLoggingConfig copy(long poll_interval_millis, boolean destroy_activity_enabled, boolean destroy_service_enabled, boolean process_died_enabled, boolean anr_enabled, boolean low_memory_enabled, boolean process_crashed_too_much_enabled, boolean service_crashed_too_much_enabled, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AndroidSystemEventLoggingConfig(poll_interval_millis, destroy_activity_enabled, destroy_service_enabled, process_died_enabled, anr_enabled, low_memory_enabled, process_crashed_too_much_enabled, service_crashed_too_much_enabled, unknownFields);
        }

        /* JADX INFO: compiled from: ReaderFeatureFlags.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;", "()V", "anr_enabled", "", "destroy_activity_enabled", "destroy_service_enabled", "low_memory_enabled", "poll_interval_millis", "", "process_crashed_too_much_enabled", "process_died_enabled", "service_crashed_too_much_enabled", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AndroidSystemEventLoggingConfig, Builder> {
            public boolean anr_enabled;
            public boolean destroy_activity_enabled;
            public boolean destroy_service_enabled;
            public boolean low_memory_enabled;
            public long poll_interval_millis;
            public boolean process_crashed_too_much_enabled;
            public boolean process_died_enabled;
            public boolean service_crashed_too_much_enabled;

            public final Builder poll_interval_millis(long poll_interval_millis) {
                this.poll_interval_millis = poll_interval_millis;
                return this;
            }

            public final Builder destroy_activity_enabled(boolean destroy_activity_enabled) {
                this.destroy_activity_enabled = destroy_activity_enabled;
                return this;
            }

            public final Builder destroy_service_enabled(boolean destroy_service_enabled) {
                this.destroy_service_enabled = destroy_service_enabled;
                return this;
            }

            public final Builder process_died_enabled(boolean process_died_enabled) {
                this.process_died_enabled = process_died_enabled;
                return this;
            }

            public final Builder anr_enabled(boolean anr_enabled) {
                this.anr_enabled = anr_enabled;
                return this;
            }

            public final Builder low_memory_enabled(boolean low_memory_enabled) {
                this.low_memory_enabled = low_memory_enabled;
                return this;
            }

            public final Builder process_crashed_too_much_enabled(boolean process_crashed_too_much_enabled) {
                this.process_crashed_too_much_enabled = process_crashed_too_much_enabled;
                return this;
            }

            public final Builder service_crashed_too_much_enabled(boolean service_crashed_too_much_enabled) {
                this.service_crashed_too_much_enabled = service_crashed_too_much_enabled;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AndroidSystemEventLoggingConfig build() {
                return new AndroidSystemEventLoggingConfig(this.poll_interval_millis, this.destroy_activity_enabled, this.destroy_service_enabled, this.process_died_enabled, this.anr_enabled, this.low_memory_enabled, this.process_crashed_too_much_enabled, this.service_crashed_too_much_enabled, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ReaderFeatureFlags.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AndroidSystemEventLoggingConfig build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AndroidSystemEventLoggingConfig.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AndroidSystemEventLoggingConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ReaderFeatureFlags.AndroidSystemEventLoggingConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.poll_interval_millis != 0) {
                        size += ProtoAdapter.INT64.encodedSizeWithTag(1, Long.valueOf(value.poll_interval_millis));
                    }
                    if (value.destroy_activity_enabled) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.destroy_activity_enabled));
                    }
                    if (value.destroy_service_enabled) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.destroy_service_enabled));
                    }
                    if (value.process_died_enabled) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.process_died_enabled));
                    }
                    if (value.anr_enabled) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(5, Boolean.valueOf(value.anr_enabled));
                    }
                    if (value.low_memory_enabled) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(6, Boolean.valueOf(value.low_memory_enabled));
                    }
                    if (value.process_crashed_too_much_enabled) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(7, Boolean.valueOf(value.process_crashed_too_much_enabled));
                    }
                    return value.service_crashed_too_much_enabled ? size + ProtoAdapter.BOOL.encodedSizeWithTag(8, Boolean.valueOf(value.service_crashed_too_much_enabled)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ReaderFeatureFlags.AndroidSystemEventLoggingConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.poll_interval_millis != 0) {
                        ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.poll_interval_millis));
                    }
                    if (value.destroy_activity_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.destroy_activity_enabled));
                    }
                    if (value.destroy_service_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.destroy_service_enabled));
                    }
                    if (value.process_died_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.process_died_enabled));
                    }
                    if (value.anr_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.anr_enabled));
                    }
                    if (value.low_memory_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.low_memory_enabled));
                    }
                    if (value.process_crashed_too_much_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.process_crashed_too_much_enabled));
                    }
                    if (value.service_crashed_too_much_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.service_crashed_too_much_enabled));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ReaderFeatureFlags.AndroidSystemEventLoggingConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.service_crashed_too_much_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.service_crashed_too_much_enabled));
                    }
                    if (value.process_crashed_too_much_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.process_crashed_too_much_enabled));
                    }
                    if (value.low_memory_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.low_memory_enabled));
                    }
                    if (value.anr_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.anr_enabled));
                    }
                    if (value.process_died_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.process_died_enabled));
                    }
                    if (value.destroy_service_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.destroy_service_enabled));
                    }
                    if (value.destroy_activity_enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.destroy_activity_enabled));
                    }
                    if (value.poll_interval_millis != 0) {
                        ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.poll_interval_millis));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ReaderFeatureFlags.AndroidSystemEventLoggingConfig redact(ReaderFeatureFlags.AndroidSystemEventLoggingConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return ReaderFeatureFlags.AndroidSystemEventLoggingConfig.copy$default(value, 0L, false, false, false, false, false, false, false, ByteString.EMPTY, 255, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ReaderFeatureFlags.AndroidSystemEventLoggingConfig decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    long jLongValue = 0;
                    boolean zBooleanValue = false;
                    boolean zBooleanValue2 = false;
                    boolean zBooleanValue3 = false;
                    boolean zBooleanValue4 = false;
                    boolean zBooleanValue5 = false;
                    boolean zBooleanValue6 = false;
                    boolean zBooleanValue7 = false;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                    break;
                                case 2:
                                    zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 3:
                                    zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 4:
                                    zBooleanValue3 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 5:
                                    zBooleanValue4 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 6:
                                    zBooleanValue5 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 7:
                                    zBooleanValue6 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 8:
                                    zBooleanValue7 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                        } else {
                            return new ReaderFeatureFlags.AndroidSystemEventLoggingConfig(jLongValue, zBooleanValue, zBooleanValue2, zBooleanValue3, zBooleanValue4, zBooleanValue5, zBooleanValue6, zBooleanValue7, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }
    }
}
