.class public interface abstract Lsafiap/framework/sdk/SAFInstallListener;
.super Ljava/lang/Object;
.source "SAFInstallListener.java"


# static fields
.field public static final RESULT_ALREADY_INSTALLED:I = 0x18

.field public static final RESULT_DOWNLOAD_FAILED:I = 0xb

.field public static final RESULT_DOWNLOAD_OK:I = 0xa

.field public static final RESULT_DOWNLOAD_ONGOING:I = 0xc

.field public static final RESULT_INSTALL_FAILED:I = 0x15

.field public static final RESULT_INSTALL_OK:I = 0x14

.field public static final RESULT_INSTALL_POSTPONED:I = 0x17

.field public static final RESULT_SIGNATURE_MISMATCH:I = 0x16

.field public static final RESULT_USER_CANCELED:I = 0xd


# virtual methods
.method public abstract onDownloadProgress(II)V
.end method

.method public abstract onFinishDownload(I)V
.end method

.method public abstract onFinishInstall(I)V
.end method

.method public abstract onInstallTimeout()V
.end method

.method public abstract onPrepareDownload()V
.end method

.method public abstract onStartInstall()J
.end method
