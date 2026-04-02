package com.stripe.proto.model.common;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.jvmcore.logging.terminal.log.TerminalLogExceptionListener;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ReportedConfigFile.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016BA\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJB\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0007H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/common/ReportedConfigFile;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;", TerminalLogExceptionListener.FILE_NAME_TAG, "", "file_content", "file_version", "", "file_ctime", "file_mtime", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;IIILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReportedConfigFile extends Message<ReportedConfigFile, Builder> {
    public static final ProtoAdapter<ReportedConfigFile> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "fileContent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String file_content;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "fileCtime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final int file_ctime;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "fileMtime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final int file_mtime;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "fileName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String file_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "fileVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int file_version;

    public ReportedConfigFile() {
        this(null, null, 0, 0, 0, null, 63, null);
    }

    public /* synthetic */ ReportedConfigFile(String str, String str2, int i, int i2, int i3, ByteString byteString, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? "" : str, (i4 & 2) != 0 ? "" : str2, (i4 & 4) != 0 ? 0 : i, (i4 & 8) != 0 ? 0 : i2, (i4 & 16) != 0 ? 0 : i3, (i4 & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportedConfigFile(String file_name, String file_content, int i, int i2, int i3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(file_name, "file_name");
        Intrinsics.checkNotNullParameter(file_content, "file_content");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.file_name = file_name;
        this.file_content = file_content;
        this.file_version = i;
        this.file_ctime = i2;
        this.file_mtime = i3;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.file_name = this.file_name;
        builder.file_content = this.file_content;
        builder.file_version = this.file_version;
        builder.file_ctime = this.file_ctime;
        builder.file_mtime = this.file_mtime;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReportedConfigFile)) {
            return false;
        }
        ReportedConfigFile reportedConfigFile = (ReportedConfigFile) other;
        return Intrinsics.areEqual(unknownFields(), reportedConfigFile.unknownFields()) && Intrinsics.areEqual(this.file_name, reportedConfigFile.file_name) && Intrinsics.areEqual(this.file_content, reportedConfigFile.file_content) && this.file_version == reportedConfigFile.file_version && this.file_ctime == reportedConfigFile.file_ctime && this.file_mtime == reportedConfigFile.file_mtime;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((unknownFields().hashCode() * 37) + this.file_name.hashCode()) * 37) + this.file_content.hashCode()) * 37) + Integer.hashCode(this.file_version)) * 37) + Integer.hashCode(this.file_ctime)) * 37) + Integer.hashCode(this.file_mtime);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("file_name=" + Internal.sanitize(this.file_name));
        arrayList2.add("file_content=" + Internal.sanitize(this.file_content));
        arrayList2.add("file_version=" + this.file_version);
        arrayList2.add("file_ctime=" + this.file_ctime);
        arrayList2.add("file_mtime=" + this.file_mtime);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReportedConfigFile{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReportedConfigFile copy$default(ReportedConfigFile reportedConfigFile, String str, String str2, int i, int i2, int i3, ByteString byteString, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = reportedConfigFile.file_name;
        }
        if ((i4 & 2) != 0) {
            str2 = reportedConfigFile.file_content;
        }
        if ((i4 & 4) != 0) {
            i = reportedConfigFile.file_version;
        }
        if ((i4 & 8) != 0) {
            i2 = reportedConfigFile.file_ctime;
        }
        if ((i4 & 16) != 0) {
            i3 = reportedConfigFile.file_mtime;
        }
        if ((i4 & 32) != 0) {
            byteString = reportedConfigFile.unknownFields();
        }
        int i5 = i3;
        ByteString byteString2 = byteString;
        return reportedConfigFile.copy(str, str2, i, i2, i5, byteString2);
    }

    public final ReportedConfigFile copy(String file_name, String file_content, int file_version, int file_ctime, int file_mtime, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(file_name, "file_name");
        Intrinsics.checkNotNullParameter(file_content, "file_content");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReportedConfigFile(file_name, file_content, file_version, file_ctime, file_mtime, unknownFields);
    }

    /* JADX INFO: compiled from: ReportedConfigFile.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/ReportedConfigFile;", "()V", "file_content", "", "file_ctime", "", "file_mtime", TerminalLogExceptionListener.FILE_NAME_TAG, "file_version", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReportedConfigFile, Builder> {
        public int file_ctime;
        public int file_mtime;
        public int file_version;
        public String file_name = "";
        public String file_content = "";

        public final Builder file_name(String file_name) {
            Intrinsics.checkNotNullParameter(file_name, "file_name");
            this.file_name = file_name;
            return this;
        }

        public final Builder file_content(String file_content) {
            Intrinsics.checkNotNullParameter(file_content, "file_content");
            this.file_content = file_content;
            return this;
        }

        public final Builder file_version(int file_version) {
            this.file_version = file_version;
            return this;
        }

        public final Builder file_ctime(int file_ctime) {
            this.file_ctime = file_ctime;
            return this;
        }

        public final Builder file_mtime(int file_mtime) {
            this.file_mtime = file_mtime;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReportedConfigFile build() {
            return new ReportedConfigFile(this.file_name, this.file_content, this.file_version, this.file_ctime, this.file_mtime, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReportedConfigFile.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/ReportedConfigFile$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ReportedConfigFile;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/ReportedConfigFile$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReportedConfigFile build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReportedConfigFile.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReportedConfigFile>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.ReportedConfigFile$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReportedConfigFile value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.file_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.file_name);
                }
                if (!Intrinsics.areEqual(value.file_content, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.file_content);
                }
                if (value.file_version != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(3, Integer.valueOf(value.file_version));
                }
                if (value.file_ctime != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.file_ctime));
                }
                return value.file_mtime != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(5, Integer.valueOf(value.file_mtime)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReportedConfigFile value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.file_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.file_name);
                }
                if (!Intrinsics.areEqual(value.file_content, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.file_content);
                }
                if (value.file_version != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.file_version));
                }
                if (value.file_ctime != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.file_ctime));
                }
                if (value.file_mtime != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.file_mtime));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReportedConfigFile value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.file_mtime != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.file_mtime));
                }
                if (value.file_ctime != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.file_ctime));
                }
                if (value.file_version != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.file_version));
                }
                if (!Intrinsics.areEqual(value.file_content, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.file_content);
                }
                if (Intrinsics.areEqual(value.file_name, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.file_name);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReportedConfigFile redact(ReportedConfigFile value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ReportedConfigFile.copy$default(value, null, null, 0, 0, 0, ByteString.EMPTY, 31, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReportedConfigFile decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                int iIntValue = 0;
                int iIntValue2 = 0;
                int iIntValue3 = 0;
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReportedConfigFile(strDecode, strDecode2, iIntValue, iIntValue2, iIntValue3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 4) {
                        iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 5) {
                        iIntValue3 = ProtoAdapter.INT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
