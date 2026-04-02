package org.eclipse.jetty.util;

import androidx.appcompat.view.b;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class IntrospectionUtil {
    public static boolean checkParams(Class<?>[] clsArr, Class<?>[] clsArr2, boolean z3) {
        int i4;
        if (clsArr == null) {
            return clsArr2 == null;
        }
        if (clsArr2 == null || clsArr.length != clsArr2.length) {
            return false;
        }
        if (clsArr.length == 0) {
            return true;
        }
        if (z3) {
            i4 = 0;
            while (i4 < clsArr.length && clsArr[i4].equals(clsArr2[i4])) {
                i4++;
            }
        } else {
            i4 = 0;
            while (i4 < clsArr.length && clsArr[i4].isAssignableFrom(clsArr2[i4])) {
                i4++;
            }
        }
        return i4 == clsArr.length;
    }

    public static boolean containsSameFieldName(Field field, Class<?> cls, boolean z3) {
        if (z3 && !cls.getPackage().equals(field.getDeclaringClass().getPackage())) {
            return false;
        }
        Field[] declaredFields = cls.getDeclaredFields();
        boolean z4 = false;
        for (int i4 = 0; i4 < declaredFields.length && !z4; i4++) {
            if (declaredFields[i4].getName().equals(field.getName())) {
                z4 = true;
            }
        }
        return z4;
    }

    public static boolean containsSameMethodSignature(Method method, Class<?> cls, boolean z3) {
        if (z3 && !cls.getPackage().equals(method.getDeclaringClass().getPackage())) {
            return false;
        }
        Method[] declaredMethods = cls.getDeclaredMethods();
        boolean z4 = false;
        for (int i4 = 0; i4 < declaredMethods.length && !z4; i4++) {
            if (isSameSignature(method, declaredMethods[i4])) {
                z4 = true;
            }
        }
        return z4;
    }

    public static Field findField(Class<?> cls, String str, Class<?> cls2, boolean z3, boolean z4) throws NoSuchFieldException {
        if (cls == null) {
            throw new NoSuchFieldException("No class");
        }
        if (str == null) {
            throw new NoSuchFieldException("No field name");
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (z4) {
                if (declaredField.getType().equals(cls2)) {
                    return declaredField;
                }
            } else if (declaredField.getType().isAssignableFrom(cls2)) {
                return declaredField;
            }
            if (z3) {
                return findInheritedField(cls.getPackage(), cls.getSuperclass(), str, cls2, z4);
            }
            throw new NoSuchFieldException("No field with name " + str + " in class " + cls.getName() + " of type " + cls2);
        } catch (NoSuchFieldException unused) {
            return findInheritedField(cls.getPackage(), cls.getSuperclass(), str, cls2, z4);
        }
    }

    public static Field findInheritedField(Package r12, Class<?> cls, String str, Class<?> cls2, boolean z3) throws NoSuchFieldException {
        if (cls == null) {
            throw new NoSuchFieldException("No class");
        }
        if (str == null) {
            throw new NoSuchFieldException("No field name");
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            return (isInheritable(r12, declaredField) && isTypeCompatible(cls2, declaredField.getType(), z3)) ? declaredField : findInheritedField(cls.getPackage(), cls.getSuperclass(), str, cls2, z3);
        } catch (NoSuchFieldException unused) {
            return findInheritedField(cls.getPackage(), cls.getSuperclass(), str, cls2, z3);
        }
    }

    public static Method findInheritedMethod(Package r4, Class<?> cls, String str, Class<?>[] clsArr, boolean z3) throws NoSuchMethodException {
        if (cls == null) {
            throw new NoSuchMethodException("No class");
        }
        if (str == null) {
            throw new NoSuchMethodException("No method name");
        }
        Method method = null;
        Method[] declaredMethods = cls.getDeclaredMethods();
        for (int i4 = 0; i4 < declaredMethods.length && method == null; i4++) {
            if (declaredMethods[i4].getName().equals(str) && isInheritable(r4, declaredMethods[i4]) && checkParams(declaredMethods[i4].getParameterTypes(), clsArr, z3)) {
                method = declaredMethods[i4];
            }
        }
        return method != null ? method : findInheritedMethod(cls.getPackage(), cls.getSuperclass(), str, clsArr, z3);
    }

    public static Method findMethod(Class<?> cls, String str, Class<?>[] clsArr, boolean z3, boolean z4) throws NoSuchMethodException {
        if (cls == null) {
            throw new NoSuchMethodException("No class");
        }
        if (str == null || str.trim().equals("")) {
            throw new NoSuchMethodException("No method name");
        }
        Method method = null;
        Method[] declaredMethods = cls.getDeclaredMethods();
        for (int i4 = 0; i4 < declaredMethods.length && method == null; i4++) {
            if (declaredMethods[i4].getName().equals(str)) {
                if (checkParams(declaredMethods[i4].getParameterTypes(), clsArr == null ? new Class[0] : clsArr, z4)) {
                    method = declaredMethods[i4];
                }
            }
        }
        if (method != null) {
            return method;
        }
        if (z3) {
            return findInheritedMethod(cls.getPackage(), cls.getSuperclass(), str, clsArr, z4);
        }
        StringBuilder sbA = b.a("No such method ", str, " on class ");
        sbA.append(cls.getName());
        throw new NoSuchMethodException(sbA.toString());
    }

    public static boolean isInheritable(Package r4, Member member) {
        if (r4 == null || member == null) {
            return false;
        }
        int modifiers = member.getModifiers();
        if (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
            return true;
        }
        return !Modifier.isPrivate(modifiers) && r4.equals(member.getDeclaringClass().getPackage());
    }

    public static boolean isJavaBeanCompliantSetter(Method method) {
        return method != null && method.getReturnType() == Void.TYPE && method.getName().startsWith("set") && method.getParameterTypes().length == 1;
    }

    public static boolean isSameSignature(Method method, Method method2) {
        if (method == null || method2 == null) {
            return false;
        }
        return method.getName().equals(method2.getName()) && Arrays.asList(method.getParameterTypes()).containsAll(Arrays.asList(method2.getParameterTypes()));
    }

    public static boolean isTypeCompatible(Class<?> cls, Class<?> cls2, boolean z3) {
        if (cls == null) {
            return cls2 == null;
        }
        if (cls2 == null) {
            return false;
        }
        return z3 ? cls.equals(cls2) : cls.isAssignableFrom(cls2);
    }
}
