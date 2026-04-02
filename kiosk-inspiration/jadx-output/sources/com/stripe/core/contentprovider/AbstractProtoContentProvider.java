package com.stripe.core.contentprovider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.actions.SearchIntents;
import com.stripe.core.contentprovider.ContentValueKey;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AbstractProtoContentProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J/\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000eH\u0016¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\fH\u0016JK\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000e2\b\u0010 \u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0002\u0010!J9\u0010\"\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000eH\u0016¢\u0006\u0002\u0010#R\u0014\u0010\u0003\u001a\u00020\u0004X\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006$"}, d2 = {"Lcom/stripe/core/contentprovider/AbstractProtoContentProvider;", "Landroid/content/ContentProvider;", "()V", "contentValueKey", "Lcom/stripe/core/contentprovider/ContentValueKey;", "getContentValueKey", "()Lcom/stripe/core/contentprovider/ContentValueKey;", "delete", "", "uri", "Landroid/net/Uri;", "selection", "", "selectionArgs", "", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "getFile", "Ljava/io/File;", "context", "Landroid/content/Context;", "getType", "insert", "values", "Landroid/content/ContentValues;", "onCreate", "", "openFile", "Landroid/os/ParcelFileDescriptor;", "mode", SearchIntents.EXTRA_QUERY, "Landroid/database/Cursor;", "projection", "sortOrder", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "contentprovider_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AbstractProtoContentProvider extends ContentProvider {
    private final ContentValueKey contentValueKey = ContentValueKey.UnusedContentValueKey.INSTANCE;

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return 0;
    }

    public abstract File getFile(Context context);

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return 0;
    }

    protected ContentValueKey getContentValueKey() {
        return this.contentValueKey;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String mode) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Context context = getContext();
        if (context == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            AbstractProtoContentProvider abstractProtoContentProvider = this;
            objM817constructorimpl = Result.m817constructorimpl(ParcelFileDescriptor.open(getFile(context), 268435456));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        return (ParcelFileDescriptor) (Result.m823isFailureimpl(objM817constructorimpl) ? null : objM817constructorimpl);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return "application/x-protobuf";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        Object objM817constructorimpl;
        Unit unit;
        byte[] asByteArray;
        Intrinsics.checkNotNullParameter(uri, "uri");
        Context context = getContext();
        if (context != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                AbstractProtoContentProvider abstractProtoContentProvider = this;
                String value = getContentValueKey().getValue();
                if (value == null || values == null || (asByteArray = values.getAsByteArray(value)) == null) {
                    unit = null;
                } else {
                    FilesKt.writeBytes(getFile(context), asByteArray);
                    unit = Unit.INSTANCE;
                }
                objM817constructorimpl = Result.m817constructorimpl(unit);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            Result.m816boximpl(objM817constructorimpl);
        }
        return null;
    }
}
