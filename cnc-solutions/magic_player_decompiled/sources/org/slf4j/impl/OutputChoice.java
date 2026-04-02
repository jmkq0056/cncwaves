package org.slf4j.impl;

import java.io.PrintStream;

/* JADX INFO: loaded from: classes2.dex */
class OutputChoice {
    public final OutputChoiceType outputChoiceType;
    public final PrintStream targetPrintStream;

    /* JADX INFO: renamed from: org.slf4j.impl.OutputChoice$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType;

        static {
            int[] iArr = new int[OutputChoiceType.values().length];
            $SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType = iArr;
            try {
                iArr[OutputChoiceType.SYS_OUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType[OutputChoiceType.SYS_ERR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType[OutputChoiceType.CACHED_SYS_ERR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType[OutputChoiceType.CACHED_SYS_OUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType[OutputChoiceType.FILE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum OutputChoiceType {
        SYS_OUT,
        CACHED_SYS_OUT,
        SYS_ERR,
        CACHED_SYS_ERR,
        FILE
    }

    public OutputChoice(OutputChoiceType outputChoiceType) {
        if (outputChoiceType == OutputChoiceType.FILE) {
            throw new IllegalArgumentException();
        }
        this.outputChoiceType = outputChoiceType;
        if (outputChoiceType == OutputChoiceType.CACHED_SYS_OUT) {
            this.targetPrintStream = System.out;
        } else if (outputChoiceType == OutputChoiceType.CACHED_SYS_ERR) {
            this.targetPrintStream = System.err;
        } else {
            this.targetPrintStream = null;
        }
    }

    public PrintStream getTargetPrintStream() {
        int i4 = AnonymousClass1.$SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType[this.outputChoiceType.ordinal()];
        if (i4 == 1) {
            return System.out;
        }
        if (i4 == 2) {
            return System.err;
        }
        if (i4 == 3 || i4 == 4 || i4 == 5) {
            return this.targetPrintStream;
        }
        throw new IllegalArgumentException();
    }

    public OutputChoice(PrintStream printStream) {
        this.outputChoiceType = OutputChoiceType.FILE;
        this.targetPrintStream = printStream;
    }
}
