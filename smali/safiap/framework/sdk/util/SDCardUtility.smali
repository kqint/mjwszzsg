.class public Lsafiap/framework/sdk/util/SDCardUtility;
.super Ljava/lang/Object;
.source "SDCardUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAvailableSize(Ljava/lang/String;)J
    .locals 5
    .param p0, "sdcardOrSystem"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "fs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static getSdcardDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dirName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lsafiap/framework/sdk/util/SDCardUtility;->isSdcardReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    const-string v0, ""

    .line 29
    :cond_0
    :goto_0
    return-object v0

    .line 25
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "sdCardPath":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getTotalSize(Ljava/lang/String;)J
    .locals 5
    .param p0, "sdcardOrSystem"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "fs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static isSdcardReady()Z
    .locals 2

    .prologue
    .line 14
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSdcardSpaceEnough(J)Z
    .locals 5
    .param p0, "useSize"    # J

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-static {}, Lsafiap/framework/sdk/util/SDCardUtility;->isSdcardReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v3

    .line 47
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "storage":Ljava/lang/String;
    invoke-static {v2}, Lsafiap/framework/sdk/util/SDCardUtility;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 49
    .local v0, "availableSize":J
    cmp-long v4, v0, p0

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isSystemSpaceEnough(J)Z
    .locals 4
    .param p0, "useSize"    # J

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "storage":Ljava/lang/String;
    invoke-static {v2}, Lsafiap/framework/sdk/util/SDCardUtility;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 55
    .local v0, "availableSize":J
    cmp-long v3, v0, p0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
