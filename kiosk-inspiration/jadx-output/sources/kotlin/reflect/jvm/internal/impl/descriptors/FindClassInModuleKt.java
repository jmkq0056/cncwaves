package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.ResolutionAnchorProviderKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: findClassInModule.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FindClassInModuleKt {
    public static final ClassDescriptor findClassAcrossModuleDependencies(ModuleDescriptor moduleDescriptor, ClassId classId) {
        Intrinsics.checkNotNullParameter(moduleDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(classId, "classId");
        ClassifierDescriptor classifierDescriptorFindClassifierAcrossModuleDependencies = findClassifierAcrossModuleDependencies(moduleDescriptor, classId);
        if (classifierDescriptorFindClassifierAcrossModuleDependencies instanceof ClassDescriptor) {
            return (ClassDescriptor) classifierDescriptorFindClassifierAcrossModuleDependencies;
        }
        return null;
    }

    public static final ClassDescriptor findNonGenericClassAcrossDependencies(ModuleDescriptor moduleDescriptor, ClassId classId, NotFoundClasses notFoundClasses) {
        Intrinsics.checkNotNullParameter(moduleDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(classId, "classId");
        Intrinsics.checkNotNullParameter(notFoundClasses, "notFoundClasses");
        ClassDescriptor classDescriptorFindClassAcrossModuleDependencies = findClassAcrossModuleDependencies(moduleDescriptor, classId);
        return classDescriptorFindClassAcrossModuleDependencies != null ? classDescriptorFindClassAcrossModuleDependencies : notFoundClasses.getClass(classId, SequencesKt.toList(SequencesKt.map(SequencesKt.generateSequence(classId, FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1.INSTANCE), new Function1<ClassId, Integer>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$2
            @Override // kotlin.jvm.functions.Function1
            public final Integer invoke(ClassId it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return 0;
            }
        })));
    }

    public static final TypeAliasDescriptor findTypeAliasAcrossModuleDependencies(ModuleDescriptor moduleDescriptor, ClassId classId) {
        Intrinsics.checkNotNullParameter(moduleDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(classId, "classId");
        ClassifierDescriptor classifierDescriptorFindClassifierAcrossModuleDependencies = findClassifierAcrossModuleDependencies(moduleDescriptor, classId);
        if (classifierDescriptorFindClassifierAcrossModuleDependencies instanceof TypeAliasDescriptor) {
            return (TypeAliasDescriptor) classifierDescriptorFindClassifierAcrossModuleDependencies;
        }
        return null;
    }

    public static final ClassifierDescriptor findClassifierAcrossModuleDependencies(ModuleDescriptor moduleDescriptor, ClassId classId) {
        Intrinsics.checkNotNullParameter(moduleDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(classId, "classId");
        ModuleDescriptor resolutionAnchorIfAny = ResolutionAnchorProviderKt.getResolutionAnchorIfAny(moduleDescriptor);
        if (resolutionAnchorIfAny == null) {
            FqName packageFqName = classId.getPackageFqName();
            Intrinsics.checkNotNullExpressionValue(packageFqName, "getPackageFqName(...)");
            PackageViewDescriptor packageViewDescriptor = moduleDescriptor.getPackage(packageFqName);
            List<Name> listPathSegments = classId.getRelativeClassName().pathSegments();
            Intrinsics.checkNotNullExpressionValue(listPathSegments, "pathSegments(...)");
            MemberScope memberScope = packageViewDescriptor.getMemberScope();
            Object objFirst = CollectionsKt.first((List<? extends Object>) listPathSegments);
            Intrinsics.checkNotNullExpressionValue(objFirst, "first(...)");
            ClassDescriptor contributedClassifier = memberScope.mo2106getContributedClassifier((Name) objFirst, NoLookupLocation.FROM_DESERIALIZATION);
            if (contributedClassifier == null) {
                return null;
            }
            for (Name name : listPathSegments.subList(1, listPathSegments.size())) {
                if (!(contributedClassifier instanceof ClassDescriptor)) {
                    return null;
                }
                MemberScope unsubstitutedInnerClassesScope = ((ClassDescriptor) contributedClassifier).getUnsubstitutedInnerClassesScope();
                Intrinsics.checkNotNull(name);
                ClassifierDescriptor contributedClassifier2 = unsubstitutedInnerClassesScope.mo2106getContributedClassifier(name, NoLookupLocation.FROM_DESERIALIZATION);
                ClassDescriptor classDescriptor = contributedClassifier2 instanceof ClassDescriptor ? (ClassDescriptor) contributedClassifier2 : null;
                if (classDescriptor == null) {
                    return null;
                }
                contributedClassifier = classDescriptor;
            }
            return contributedClassifier;
        }
        FqName packageFqName2 = classId.getPackageFqName();
        Intrinsics.checkNotNullExpressionValue(packageFqName2, "getPackageFqName(...)");
        PackageViewDescriptor packageViewDescriptor2 = resolutionAnchorIfAny.getPackage(packageFqName2);
        List<Name> listPathSegments2 = classId.getRelativeClassName().pathSegments();
        Intrinsics.checkNotNullExpressionValue(listPathSegments2, "pathSegments(...)");
        MemberScope memberScope2 = packageViewDescriptor2.getMemberScope();
        Object objFirst2 = CollectionsKt.first((List<? extends Object>) listPathSegments2);
        Intrinsics.checkNotNullExpressionValue(objFirst2, "first(...)");
        ClassDescriptor contributedClassifier3 = memberScope2.mo2106getContributedClassifier((Name) objFirst2, NoLookupLocation.FROM_DESERIALIZATION);
        if (contributedClassifier3 == null) {
            contributedClassifier3 = null;
            break;
        }
        for (Name name2 : listPathSegments2.subList(1, listPathSegments2.size())) {
            if (contributedClassifier3 instanceof ClassDescriptor) {
                MemberScope unsubstitutedInnerClassesScope2 = ((ClassDescriptor) contributedClassifier3).getUnsubstitutedInnerClassesScope();
                Intrinsics.checkNotNull(name2);
                ClassifierDescriptor contributedClassifier4 = unsubstitutedInnerClassesScope2.mo2106getContributedClassifier(name2, NoLookupLocation.FROM_DESERIALIZATION);
                ClassDescriptor classDescriptor2 = contributedClassifier4 instanceof ClassDescriptor ? (ClassDescriptor) contributedClassifier4 : null;
                if (classDescriptor2 != null) {
                    contributedClassifier3 = classDescriptor2;
                }
            }
            contributedClassifier3 = null;
        }
        if (contributedClassifier3 != null) {
            return contributedClassifier3;
        }
        FqName packageFqName3 = classId.getPackageFqName();
        Intrinsics.checkNotNullExpressionValue(packageFqName3, "getPackageFqName(...)");
        PackageViewDescriptor packageViewDescriptor3 = moduleDescriptor.getPackage(packageFqName3);
        List<Name> listPathSegments3 = classId.getRelativeClassName().pathSegments();
        Intrinsics.checkNotNullExpressionValue(listPathSegments3, "pathSegments(...)");
        MemberScope memberScope3 = packageViewDescriptor3.getMemberScope();
        Object objFirst3 = CollectionsKt.first((List<? extends Object>) listPathSegments3);
        Intrinsics.checkNotNullExpressionValue(objFirst3, "first(...)");
        ClassDescriptor contributedClassifier5 = memberScope3.mo2106getContributedClassifier((Name) objFirst3, NoLookupLocation.FROM_DESERIALIZATION);
        if (contributedClassifier5 == null) {
            return null;
        }
        for (Name name3 : listPathSegments3.subList(1, listPathSegments3.size())) {
            if (!(contributedClassifier5 instanceof ClassDescriptor)) {
                return null;
            }
            MemberScope unsubstitutedInnerClassesScope3 = ((ClassDescriptor) contributedClassifier5).getUnsubstitutedInnerClassesScope();
            Intrinsics.checkNotNull(name3);
            ClassifierDescriptor contributedClassifier6 = unsubstitutedInnerClassesScope3.mo2106getContributedClassifier(name3, NoLookupLocation.FROM_DESERIALIZATION);
            ClassDescriptor classDescriptor3 = contributedClassifier6 instanceof ClassDescriptor ? (ClassDescriptor) contributedClassifier6 : null;
            if (classDescriptor3 == null) {
                return null;
            }
            contributedClassifier5 = classDescriptor3;
        }
        return contributedClassifier5;
    }
}
