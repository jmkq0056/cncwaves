package com.arcsoft.face;

import android.content.Context;
import android.graphics.Rect;
import com.arcsoft.face.enums.CompareModel;
import com.arcsoft.face.enums.DetectFaceOrientPriority;
import com.arcsoft.face.enums.DetectMode;
import com.arcsoft.face.enums.DetectModel;
import com.arcsoft.face.enums.RuntimeABI;
import com.arcsoft.face.model.ArcSoftImageInfo;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FaceEngine {
    public static final int ASF_AGE = 8;
    public static final int ASF_FACE3DANGLE = 32;
    public static final int ASF_FACE_DETECT = 1;
    public static final int ASF_FACE_RECOGNITION = 4;
    public static final int ASF_GENDER = 16;
    public static final int ASF_IR_LIVENESS = 1024;
    public static final int ASF_LIVENESS = 128;
    public static final int ASF_NONE = 0;
    public static final int ASF_OC_0 = 1;
    public static final int ASF_OC_120 = 7;
    public static final int ASF_OC_150 = 8;
    public static final int ASF_OC_180 = 4;
    public static final int ASF_OC_210 = 9;
    public static final int ASF_OC_240 = 10;
    public static final int ASF_OC_270 = 3;
    public static final int ASF_OC_30 = 5;
    public static final int ASF_OC_300 = 11;
    public static final int ASF_OC_330 = 12;
    public static final int ASF_OC_60 = 6;
    public static final int ASF_OC_90 = 2;
    public static final int CP_PAF_BGR24 = 513;
    public static final int CP_PAF_DEPTH_U16 = 3074;
    public static final int CP_PAF_GRAY = 1793;
    public static final int CP_PAF_NV21 = 2050;
    private AgeInfo[] mAgeInfoArray;
    private Face3DAngle[] mFaceAngleArray;
    private FaceInfo[] mFaceInfoArray;
    private GenderInfo[] mGenderInfoArray;
    private LivenessInfo[] mIrLivenessInfoArray;
    private LivenessInfo[] mLivenessInfoArray;
    private long handle = 0;
    private ErrorInfo initError = new ErrorInfo();
    private ErrorInfo detectError = new ErrorInfo();
    private ErrorInfo processError = new ErrorInfo();
    private ErrorInfo processIrError = new ErrorInfo();
    private ErrorInfo frError = new ErrorInfo();

    static {
        System.loadLibrary("arcsoft_face_engine");
    }

    public static int active(Context context, String str, String str2) {
        if (context == null || str == null || str2 == null) {
            return 2;
        }
        return nativeActiveFaceEngine(context, str, str2);
    }

    public static int activeOnline(Context context, String str, String str2) {
        if (context == null || str == null || str2 == null) {
            return 2;
        }
        return nativeActiveFaceEngineOnline(context, str, str2);
    }

    public static int getActiveFileInfo(Context context, ActiveFileInfo activeFileInfo) {
        if (activeFileInfo == null) {
            return 2;
        }
        return nativeGetActiveFile(context, activeFileInfo);
    }

    public static RuntimeABI getRuntimeABI() {
        int iNativeGetRuntimeABI = nativeGetRuntimeABI();
        return iNativeGetRuntimeABI != 1 ? iNativeGetRuntimeABI != 2 ? RuntimeABI.ANDROID_ABI_UNSUPPORTED : RuntimeABI.ANDROID_ABI_ARM32 : RuntimeABI.ANDROID_ABI_ARM64;
    }

    public static int getVersion(VersionInfo versionInfo) {
        if (versionInfo == null) {
            return 2;
        }
        nativeGetVersion(versionInfo);
        return 0;
    }

    private static boolean isImageDataValid(byte[] bArr, int i4, int i5, int i6) {
        return (i6 == 2050 && (i5 & 1) == 0 && bArr.length == ((i4 * i5) * 3) / 2) || (i6 == 513 && bArr.length == (i4 * i5) * 3) || ((i6 == 1793 && bArr.length == i4 * i5) || (i6 == 3074 && bArr.length == (i4 * i5) * 2));
    }

    private static native int nativeActiveFaceEngine(Context context, String str, String str2);

    private static native int nativeActiveFaceEngineOnline(Context context, String str, String str2);

    private native int nativeDetectFaces(long j4, ArcSoftImageInfo arcSoftImageInfo, int i4, FaceInfo[] faceInfoArr, ErrorInfo errorInfo);

    private native int nativeDetectFaces(long j4, byte[] bArr, int i4, int i5, int i6, int i7, FaceInfo[] faceInfoArr, ErrorInfo errorInfo);

    private native void nativeExtractFaceFeature(long j4, ArcSoftImageInfo arcSoftImageInfo, Rect rect, int i4, byte[] bArr, ErrorInfo errorInfo);

    private native void nativeExtractFaceFeature(long j4, byte[] bArr, int i4, int i5, int i6, Rect rect, int i7, byte[] bArr2, ErrorInfo errorInfo);

    private static native int nativeGetActiveFile(Context context, ActiveFileInfo activeFileInfo);

    private native int nativeGetAge(long j4, AgeInfo[] ageInfoArr, ErrorInfo errorInfo);

    private native int nativeGetFace3DAngle(long j4, Face3DAngle[] face3DAngleArr, ErrorInfo errorInfo);

    private native int nativeGetGender(long j4, GenderInfo[] genderInfoArr, ErrorInfo errorInfo);

    private native int nativeGetIrLiveness(long j4, LivenessInfo[] livenessInfoArr, ErrorInfo errorInfo);

    private native int nativeGetLiveness(long j4, LivenessInfo[] livenessInfoArr, ErrorInfo errorInfo);

    private static native int nativeGetRuntimeABI();

    private static native void nativeGetVersion(VersionInfo versionInfo);

    private native long nativeInitFaceEngine(Context context, long j4, int i4, int i5, int i6, int i7, ErrorInfo errorInfo);

    private native float nativePairMatching(long j4, byte[] bArr, byte[] bArr2, int i4, ErrorInfo errorInfo);

    private native void nativeProcess(long j4, ArcSoftImageInfo arcSoftImageInfo, FaceInfo[] faceInfoArr, int i4, ErrorInfo errorInfo);

    private native void nativeProcess(long j4, byte[] bArr, int i4, int i5, int i6, FaceInfo[] faceInfoArr, int i7, ErrorInfo errorInfo);

    private native void nativeProcessIr(long j4, ArcSoftImageInfo arcSoftImageInfo, FaceInfo[] faceInfoArr, int i4, ErrorInfo errorInfo);

    private native void nativeProcessIr(long j4, byte[] bArr, int i4, int i5, int i6, FaceInfo[] faceInfoArr, int i7, ErrorInfo errorInfo);

    private native int nativeSetLivenessParam(long j4, LivenessParam livenessParam);

    private native int nativeUnInitFaceEngine(long j4);

    public int compareFaceFeature(FaceFeature faceFeature, FaceFeature faceFeature2, FaceSimilar faceSimilar) {
        return compareFaceFeature(faceFeature, faceFeature2, CompareModel.LIFE_PHOTO, faceSimilar);
    }

    public int detectFaces(byte[] bArr, int i4, int i5, int i6, List<FaceInfo> list) {
        return detectFaces(bArr, i4, i5, i6, DetectModel.RGB, list);
    }

    public int extractFaceFeature(byte[] bArr, int i4, int i5, int i6, FaceInfo faceInfo, FaceFeature faceFeature) {
        if (i6 != 2050 && i6 != 513 && i6 != 1793) {
            return ErrorInfo.MERR_ASF_COLOR_SPACE_NOT_SUPPORT;
        }
        if (i4 <= 0 || i5 <= 0) {
            return ErrorInfo.MERR_ASF_IMAGE_WIDTH_HEIGHT_NOT_SUPPORT;
        }
        if (faceFeature == null || faceFeature.getFeatureData() == null || faceFeature.getFeatureData().length < 1032 || faceInfo == null || bArr == null) {
            return 2;
        }
        if (!isImageDataValid(bArr, i4, i5, i6)) {
            return ErrorInfo.MERR_ASF_EX_INVALID_IMAGE_INFO;
        }
        long j4 = this.handle;
        if (j4 == 0) {
            return 5;
        }
        nativeExtractFaceFeature(j4, bArr, i4, i5, i6, faceInfo.getRect(), faceInfo.getOrient(), faceFeature.getFeatureData(), this.frError);
        return this.frError.code;
    }

    public int getAge(List<AgeInfo> list) {
        if (list == null) {
            return 2;
        }
        if (this.handle == 0) {
            return 5;
        }
        list.clear();
        int iNativeGetAge = nativeGetAge(this.handle, this.mAgeInfoArray, this.processError);
        if (iNativeGetAge > 0) {
            for (int i4 = 0; i4 < iNativeGetAge; i4++) {
                list.add(new AgeInfo(this.mAgeInfoArray[i4]));
            }
        }
        return this.processError.code;
    }

    public int getFace3DAngle(List<Face3DAngle> list) {
        if (list == null) {
            return 2;
        }
        if (this.handle == 0) {
            return 5;
        }
        list.clear();
        int iNativeGetFace3DAngle = nativeGetFace3DAngle(this.handle, this.mFaceAngleArray, this.processError);
        for (int i4 = 0; i4 < iNativeGetFace3DAngle; i4++) {
            list.add(new Face3DAngle(this.mFaceAngleArray[i4]));
        }
        return this.processError.code;
    }

    public int getGender(List<GenderInfo> list) {
        if (list == null) {
            return 2;
        }
        if (this.handle == 0) {
            return 5;
        }
        list.clear();
        int iNativeGetGender = nativeGetGender(this.handle, this.mGenderInfoArray, this.processError);
        if (iNativeGetGender > 0) {
            for (int i4 = 0; i4 < iNativeGetGender; i4++) {
                list.add(new GenderInfo(this.mGenderInfoArray[i4]));
            }
        }
        return this.processError.code;
    }

    public int getIrLiveness(List<LivenessInfo> list) {
        if (list == null) {
            return 2;
        }
        if (this.handle == 0) {
            return 5;
        }
        list.clear();
        int iNativeGetIrLiveness = nativeGetIrLiveness(this.handle, this.mIrLivenessInfoArray, this.processIrError);
        for (int i4 = 0; i4 < iNativeGetIrLiveness; i4++) {
            list.add(new LivenessInfo(this.mIrLivenessInfoArray[i4]));
        }
        return this.processIrError.code;
    }

    public int getLiveness(List<LivenessInfo> list) {
        if (list == null) {
            return 2;
        }
        if (this.handle == 0) {
            return 5;
        }
        list.clear();
        int iNativeGetLiveness = nativeGetLiveness(this.handle, this.mLivenessInfoArray, this.processError);
        for (int i4 = 0; i4 < iNativeGetLiveness; i4++) {
            list.add(new LivenessInfo(this.mLivenessInfoArray[i4]));
        }
        return this.processError.code;
    }

    public int init(Context context, DetectMode detectMode, DetectFaceOrientPriority detectFaceOrientPriority, int i4, int i5, int i6) {
        if (this.handle != 0) {
            return 5;
        }
        if (context == null || detectMode == null || detectFaceOrientPriority == null) {
            return 2;
        }
        this.handle = nativeInitFaceEngine(context, detectMode.getMode(), detectFaceOrientPriority.getPriority(), i4, i5, i6, this.initError);
        if (this.initError.getCode() == 0) {
            if ((i6 & 1) != 0) {
                this.mFaceInfoArray = new FaceInfo[i5];
                for (int i7 = 0; i7 < i5; i7++) {
                    this.mFaceInfoArray[i7] = new FaceInfo();
                }
            }
            if ((i6 & 8) != 0) {
                this.mAgeInfoArray = new AgeInfo[i5];
                for (int i8 = 0; i8 < i5; i8++) {
                    this.mAgeInfoArray[i8] = new AgeInfo();
                }
            }
            if ((i6 & 16) != 0) {
                this.mGenderInfoArray = new GenderInfo[i5];
                for (int i9 = 0; i9 < i5; i9++) {
                    this.mGenderInfoArray[i9] = new GenderInfo();
                }
            }
            if ((i6 & 32) != 0) {
                this.mFaceAngleArray = new Face3DAngle[i5];
                for (int i10 = 0; i10 < i5; i10++) {
                    this.mFaceAngleArray[i10] = new Face3DAngle();
                }
            }
            if ((i6 & 128) != 0) {
                this.mLivenessInfoArray = new LivenessInfo[i5];
                for (int i11 = 0; i11 < i5; i11++) {
                    this.mLivenessInfoArray[i11] = new LivenessInfo();
                }
            }
            if ((i6 & 1024) != 0) {
                this.mIrLivenessInfoArray = new LivenessInfo[i5];
                for (int i12 = 0; i12 < i5; i12++) {
                    this.mIrLivenessInfoArray[i12] = new LivenessInfo();
                }
            }
        }
        return this.initError.code;
    }

    public int process(byte[] bArr, int i4, int i5, int i6, List<FaceInfo> list, int i7) {
        if (i6 != 2050 && i6 != 513) {
            return ErrorInfo.MERR_ASF_COLOR_SPACE_NOT_SUPPORT;
        }
        if (i4 <= 0 || i5 <= 0) {
            return ErrorInfo.MERR_ASF_IMAGE_WIDTH_HEIGHT_NOT_SUPPORT;
        }
        if (list == null || bArr == null) {
            return 2;
        }
        if (!isImageDataValid(bArr, i4, i5, i6)) {
            return ErrorInfo.MERR_ASF_EX_INVALID_IMAGE_INFO;
        }
        long j4 = this.handle;
        if (j4 == 0) {
            return 5;
        }
        nativeProcess(j4, bArr, i4, i5, i6, (FaceInfo[]) list.toArray(new FaceInfo[0]), i7, this.processError);
        return this.processError.code;
    }

    public int processIr(byte[] bArr, int i4, int i5, int i6, List<FaceInfo> list, int i7) {
        if (i6 != 2050 && i6 != 1793 && i6 != 3074) {
            return ErrorInfo.MERR_ASF_COLOR_SPACE_NOT_SUPPORT;
        }
        if (i4 <= 0 || i5 <= 0) {
            return ErrorInfo.MERR_ASF_IMAGE_WIDTH_HEIGHT_NOT_SUPPORT;
        }
        if (list == null || bArr == null) {
            return 2;
        }
        if (!isImageDataValid(bArr, i4, i5, i6)) {
            return ErrorInfo.MERR_ASF_EX_INVALID_IMAGE_INFO;
        }
        long j4 = this.handle;
        if (j4 == 0) {
            return 5;
        }
        nativeProcessIr(j4, bArr, i4, i5, i6, (FaceInfo[]) list.toArray(new FaceInfo[0]), i7, this.processIrError);
        return this.processIrError.code;
    }

    public int setLivenessParam(LivenessParam livenessParam) {
        if (livenessParam == null || livenessParam.getIrThreshold() > 1.0f || livenessParam.getIrThreshold() < 0.0f || livenessParam.getRgbThreshold() > 1.0f || livenessParam.getRgbThreshold() < 0.0f) {
            return 2;
        }
        long j4 = this.handle;
        if (j4 == 0) {
            return 5;
        }
        return nativeSetLivenessParam(j4, livenessParam);
    }

    public int unInit() {
        long j4 = this.handle;
        if (j4 == 0) {
            return 5;
        }
        int iNativeUnInitFaceEngine = nativeUnInitFaceEngine(j4);
        if (iNativeUnInitFaceEngine == 0) {
            this.handle = 0L;
        }
        return iNativeUnInitFaceEngine;
    }

    private static boolean isImageDataValid(ArcSoftImageInfo arcSoftImageInfo) {
        byte[][] planes = arcSoftImageInfo.getPlanes();
        int[] strides = arcSoftImageInfo.getStrides();
        if (planes == null || strides == null || planes.length != strides.length) {
            return false;
        }
        for (byte[] bArr : planes) {
            if (bArr == null || bArr.length == 0) {
                return false;
            }
        }
        int imageFormat = arcSoftImageInfo.getImageFormat();
        if (imageFormat != 513 && imageFormat != 1793) {
            if (imageFormat == 2050) {
                if ((arcSoftImageInfo.getHeight() & 1) != 0 || planes.length != 2 || planes[0].length != planes[1].length * 2) {
                    return false;
                }
                if (planes[0].length == arcSoftImageInfo.getHeight() * arcSoftImageInfo.getStrides()[0]) {
                    return planes[1].length == (arcSoftImageInfo.getHeight() * arcSoftImageInfo.getStrides()[1]) / 2;
                }
                return false;
            }
            if (imageFormat != 3074) {
                return false;
            }
        }
        if (planes.length == 1) {
            return planes[0].length == arcSoftImageInfo.getHeight() * arcSoftImageInfo.getStrides()[0];
        }
        return false;
    }

    public int compareFaceFeature(FaceFeature faceFeature, FaceFeature faceFeature2, CompareModel compareModel, FaceSimilar faceSimilar) {
        if (faceFeature == null || faceFeature.getFeatureData() == null || faceFeature2 == null || faceFeature2.getFeatureData() == null || faceSimilar == null || compareModel == null) {
            return 2;
        }
        long j4 = this.handle;
        if (j4 == 0) {
            return 5;
        }
        faceSimilar.score = nativePairMatching(j4, faceFeature.getFeatureData(), faceFeature2.getFeatureData(), compareModel.getModel(), this.frError);
        return this.frError.code;
    }

    public int detectFaces(byte[] bArr, int i4, int i5, int i6, DetectModel detectModel, List<FaceInfo> list) {
        if (i6 != 2050 && i6 != 513 && i6 != 1793 && i6 != 3074) {
            return ErrorInfo.MERR_ASF_COLOR_SPACE_NOT_SUPPORT;
        }
        if (i4 <= 0 || i5 <= 0) {
            return ErrorInfo.MERR_ASF_IMAGE_WIDTH_HEIGHT_NOT_SUPPORT;
        }
        if (list == null || bArr == null || detectModel == null) {
            return 2;
        }
        if (!isImageDataValid(bArr, i4, i5, i6)) {
            return ErrorInfo.MERR_ASF_EX_INVALID_IMAGE_INFO;
        }
        if (this.handle == 0) {
            return 5;
        }
        list.clear();
        int iNativeDetectFaces = nativeDetectFaces(this.handle, bArr, i4, i5, i6, detectModel.getModel(), this.mFaceInfoArray, this.detectError);
        if (iNativeDetectFaces > 0) {
            for (int i7 = 0; i7 < iNativeDetectFaces; i7++) {
                list.add(new FaceInfo(this.mFaceInfoArray[i7]));
            }
        }
        return this.detectError.code;
    }

    public int process(ArcSoftImageInfo arcSoftImageInfo, List<FaceInfo> list, int i4) {
        if (list == null || arcSoftImageInfo == null) {
            return 2;
        }
        if (arcSoftImageInfo.getImageFormat() != 2050 && arcSoftImageInfo.getImageFormat() != 513) {
            return ErrorInfo.MERR_ASF_COLOR_SPACE_NOT_SUPPORT;
        }
        if (arcSoftImageInfo.getWidth() <= 0 || arcSoftImageInfo.getHeight() <= 0) {
            return ErrorInfo.MERR_ASF_IMAGE_WIDTH_HEIGHT_NOT_SUPPORT;
        }
        if (!isImageDataValid(arcSoftImageInfo)) {
            return ErrorInfo.MERR_ASF_EX_INVALID_IMAGE_INFO;
        }
        long j4 = this.handle;
        if (j4 == 0) {
            return 5;
        }
        nativeProcess(j4, arcSoftImageInfo, (FaceInfo[]) list.toArray(new FaceInfo[0]), i4, this.processError);
        return this.processError.code;
    }

    public int processIr(ArcSoftImageInfo arcSoftImageInfo, List<FaceInfo> list, int i4) {
        if (list == null || arcSoftImageInfo == null) {
            return 2;
        }
        if (arcSoftImageInfo.getImageFormat() != 2050 && arcSoftImageInfo.getImageFormat() != 1793 && arcSoftImageInfo.getImageFormat() != 3074) {
            return ErrorInfo.MERR_ASF_COLOR_SPACE_NOT_SUPPORT;
        }
        if (arcSoftImageInfo.getWidth() <= 0 || arcSoftImageInfo.getHeight() <= 0) {
            return ErrorInfo.MERR_ASF_IMAGE_WIDTH_HEIGHT_NOT_SUPPORT;
        }
        if (!isImageDataValid(arcSoftImageInfo)) {
            return ErrorInfo.MERR_ASF_EX_INVALID_IMAGE_INFO;
        }
        long j4 = this.handle;
        if (j4 == 0) {
            return 5;
        }
        nativeProcessIr(j4, arcSoftImageInfo, (FaceInfo[]) list.toArray(new FaceInfo[0]), i4, this.processIrError);
        return this.processIrError.code;
    }

    public int extractFaceFeature(ArcSoftImageInfo arcSoftImageInfo, FaceInfo faceInfo, FaceFeature faceFeature) {
        if (faceFeature == null || faceFeature.getFeatureData() == null || faceFeature.getFeatureData().length < 1032 || faceInfo == null || arcSoftImageInfo == null) {
            return 2;
        }
        if (arcSoftImageInfo.getImageFormat() != 2050 && arcSoftImageInfo.getImageFormat() != 513 && arcSoftImageInfo.getImageFormat() != 1793) {
            return ErrorInfo.MERR_ASF_COLOR_SPACE_NOT_SUPPORT;
        }
        if (arcSoftImageInfo.getWidth() <= 0 || arcSoftImageInfo.getHeight() <= 0) {
            return ErrorInfo.MERR_ASF_IMAGE_WIDTH_HEIGHT_NOT_SUPPORT;
        }
        if (!isImageDataValid(arcSoftImageInfo)) {
            return ErrorInfo.MERR_ASF_EX_INVALID_IMAGE_INFO;
        }
        long j4 = this.handle;
        if (j4 == 0) {
            return 5;
        }
        nativeExtractFaceFeature(j4, arcSoftImageInfo, faceInfo.getRect(), faceInfo.getOrient(), faceFeature.getFeatureData(), this.frError);
        return this.frError.code;
    }

    public int detectFaces(ArcSoftImageInfo arcSoftImageInfo, List<FaceInfo> list) {
        return detectFaces(arcSoftImageInfo, DetectModel.RGB, list);
    }

    public int detectFaces(ArcSoftImageInfo arcSoftImageInfo, DetectModel detectModel, List<FaceInfo> list) {
        if (list == null || arcSoftImageInfo == null) {
            return 2;
        }
        int imageFormat = arcSoftImageInfo.getImageFormat();
        if (imageFormat != 2050 && imageFormat != 513 && imageFormat != 1793 && imageFormat != 3074) {
            return ErrorInfo.MERR_ASF_COLOR_SPACE_NOT_SUPPORT;
        }
        if (arcSoftImageInfo.getWidth() <= 0 || arcSoftImageInfo.getHeight() <= 0) {
            return ErrorInfo.MERR_ASF_IMAGE_WIDTH_HEIGHT_NOT_SUPPORT;
        }
        if (!isImageDataValid(arcSoftImageInfo)) {
            return ErrorInfo.MERR_ASF_EX_INVALID_IMAGE_INFO;
        }
        if (this.handle == 0) {
            return 5;
        }
        list.clear();
        int iNativeDetectFaces = nativeDetectFaces(this.handle, arcSoftImageInfo, detectModel.getModel(), this.mFaceInfoArray, this.detectError);
        if (iNativeDetectFaces > 0) {
            for (int i4 = 0; i4 < iNativeDetectFaces; i4++) {
                list.add(new FaceInfo(this.mFaceInfoArray[i4]));
            }
        }
        return this.detectError.code;
    }
}
