.class public Lsafiap/framework/jni/SAF_Jni;
.super Ljava/lang/Object;
.source "SAF_Jni.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SAF_Jni"

.field private static mJniReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const/4 v1, 0x0

    sput-boolean v1, Lsafiap/framework/jni/SAF_Jni;->mJniReady:Z

    .line 17
    :try_start_0
    sget-boolean v1, Lsafiap/framework/util/Constants;->sIsIAPtestVersion:Z

    if-nez v1, :cond_0

    .line 18
    const-string v1, "SAF"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    const/4 v1, 0x1

    sput-boolean v1, Lsafiap/framework/jni/SAF_Jni;->mJniReady:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_0
    return-void

    .line 21
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 22
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "SAF_Jni"

    const-string v2, "SAF-A Exception:515001"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static native checkPidWithPort(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static native getVersion()I
.end method

.method public static native keyVerify(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
