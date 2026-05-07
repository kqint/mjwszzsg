.class public Lsafiap/framework/sdk/util/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# static fields
.field public static final EXTERNAL_CACHE_DIR:Ljava/lang/String; = "/.SAF/update/"

.field private static final PACKAGEINFO_FLAG:I = 0x1140

.field private static final PACKAGE_PREFIX:Ljava/lang/String; = "package:"

.field private static final TAG:Ljava/lang/String; = "PackageUtil"

.field private static final URL_FRAMEWORK_ACTION:Ljava/lang/String; = "http://221.179.35.113/SAFUpgradeServer/find?action=%s"

.field public static final VERSION_UNDEFINED:I

.field private static sLogger:Lsafiap/framework/util/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "PackageUtil"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAuthorization(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 593
    const/4 v0, 0x1

    return v0
.end method

.method private static checkSignature(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 12
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "signatureDigest"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 740
    if-eqz p0, :cond_0

    iget-object v7, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 768
    :cond_0
    :goto_0
    return v6

    .line 744
    :cond_1
    iget-object v7, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v7

    .line 745
    .local v4, "length":I
    new-array v1, v4, [Ljava/lang/String;

    .line 747
    .local v1, "digests":[Ljava/lang/String;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 748
    .local v5, "md5Digest":Ljava/security/MessageDigest;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-lt v3, v4, :cond_2

    .line 757
    .end local v3    # "index":I
    .end local v5    # "md5Digest":Ljava/security/MessageDigest;
    :goto_2
    if-eqz v1, :cond_0

    .line 758
    array-length v8, v1

    move v7, v6

    :goto_3
    if-ge v7, v8, :cond_0

    aget-object v0, v1, v7

    .line 759
    .local v0, "digest":Ljava/lang/String;
    sget-object v9, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Signature digest:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", genuine:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 761
    const/4 v6, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "digest":Ljava/lang/String;
    .restart local v3    # "index":I
    .restart local v5    # "md5Digest":Ljava/security/MessageDigest;
    :cond_2
    :try_start_1
    iget-object v7, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 750
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lsafiap/framework/sdk/util/PackageUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 748
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 752
    .end local v3    # "index":I
    .end local v5    # "md5Digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 753
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "PackageUtil"

    const-string v8, "SAF-A Exception:512005"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 755
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    goto :goto_2

    .line 758
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "digest":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method public static copyFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetResName"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 938
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 939
    :cond_0
    const/4 v3, 0x0

    .line 964
    :goto_0
    return v3

    .line 942
    :cond_1
    const/4 v3, 0x0

    .line 943
    .local v3, "result":Z
    const/4 v2, 0x0

    .line 945
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 946
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 947
    .local v1, "file":Ljava/io/File;
    if-eqz v2, :cond_2

    .line 948
    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Lsafiap/framework/sdk/util/FileUtility;->copyFile(Ljava/io/InputStream;Ljava/io/File;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 956
    :cond_2
    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 963
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    const-string v4, "PackageUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copyFileFromAssets().result:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 952
    :try_start_2
    const-string v4, "PackageUtil"

    const-string v5, "SAF-A Exception:512007"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 956
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 957
    :catch_1
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 959
    const-string v4, "PackageUtil"

    const-string v5, "SAF-A Exception:512008"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 954
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 956
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 962
    :cond_4
    :goto_2
    throw v4

    .line 957
    :catch_2
    move-exception v0

    .line 958
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 959
    const-string v5, "PackageUtil"

    const-string v6, "SAF-A Exception:512008"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 957
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    :catch_3
    move-exception v0

    .line 958
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 959
    const-string v4, "PackageUtil"

    const-string v5, "SAF-A Exception:512008"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 910
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 911
    :cond_0
    const/4 v3, 0x0

    .line 934
    :cond_1
    :goto_0
    return v3

    .line 913
    :cond_2
    const/4 v3, 0x0

    .line 914
    .local v3, "result":Z
    const/4 v2, 0x0

    .line 916
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 917
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 918
    .local v1, "file":Ljava/io/File;
    if-eqz v2, :cond_3

    .line 919
    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Lsafiap/framework/sdk/util/FileUtility;->copyFile(Ljava/io/InputStream;Ljava/io/File;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 927
    :cond_3
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 930
    const-string v4, "PackageUtil"

    const-string v5, "SAF-A Exception:512010"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 921
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 922
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 923
    :try_start_2
    const-string v4, "PackageUtil"

    const-string v5, "SAF-A Exception:512009"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 927
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 928
    :catch_2
    move-exception v0

    .line 929
    const/4 v3, 0x0

    .line 930
    const-string v4, "PackageUtil"

    const-string v5, "SAF-A Exception:512010"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 925
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 927
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 933
    :cond_4
    :goto_1
    throw v4

    .line 928
    :catch_3
    move-exception v0

    .line 929
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 930
    const-string v5, "PackageUtil"

    const-string v6, "SAF-A Exception:512010"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static copyPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "destDir"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1044
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-object v3

    .line 1048
    :cond_1
    invoke-static {p0, p1}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageSourceDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, "sourceDir":Ljava/lang/String;
    sget-object v4, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copyPackage().sourceDir:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1050
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/system/app/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1054
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v2, "srcFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1057
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v0, "destFile":Ljava/io/File;
    invoke-static {v2, v0}, Lsafiap/framework/sdk/util/FileUtility;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1059
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static deleteDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "onExternal"    # Z

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lsafiap/framework/sdk/util/PackageUtil;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/sdk/util/FileUtility;->deleteFile(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getAbsolutePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    .end local p0    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 223
    .restart local p0    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v0, "package:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "package:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getApkFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 880
    const-string v0, "apk"

    invoke-static {p0, v0}, Lsafiap/framework/sdk/util/PackageUtil;->getFileNameWithExt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getApkPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilePath"    # Ljava/lang/String;

    .prologue
    .line 786
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    :cond_0
    const/4 v1, 0x0

    .line 791
    :goto_0
    return-object v1

    .line 790
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 791
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x1140

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private static getBaseDirectory(Landroid/content/Context;Z)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onExternal"    # Z

    .prologue
    .line 83
    if-eqz p1, :cond_1

    invoke-static {}, Lsafiap/framework/sdk/util/SDCardUtility;->isSdcardReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/.SAF/update/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 90
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p0, :cond_2

    const/4 v1, 0x0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    goto :goto_1
.end method

.method public static getComponentCnName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 344
    sget-object v9, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getComponentCnName().actionName:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 345
    const-string v1, "unknown"

    .line 346
    .local v1, "cnname":Ljava/lang/String;
    const/4 v7, -0x1

    .line 348
    .local v7, "maxPriorityValue":I
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v6, "mainIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 350
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 351
    .local v0, "appsInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    move-object v2, v1

    .line 376
    .end local v1    # "cnname":Ljava/lang/String;
    .local v2, "cnname":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 355
    .end local v2    # "cnname":Ljava/lang/String;
    .restart local v1    # "cnname":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v3, v9, :cond_1

    move-object v2, v1

    .line 376
    .end local v1    # "cnname":Ljava/lang/String;
    .restart local v2    # "cnname":Ljava/lang/String;
    goto :goto_0

    .line 356
    .end local v2    # "cnname":Ljava/lang/String;
    .restart local v1    # "cnname":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 358
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {p0}, Lsafiap/framework/sdk/util/PackageUtil;->checkAuthorization(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 360
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 359
    invoke-static {p0, v9}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 361
    .local v5, "mPackageVersionCode":I
    iget v9, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v9, :cond_3

    .line 362
    iget v9, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v7, v9, :cond_2

    .line 363
    iget v7, v4, Landroid/content/pm/ResolveInfo;->priority:I

    .line 364
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 373
    .end local v5    # "mPackageVersionCode":I
    :cond_2
    :goto_2
    sget-object v9, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getComponentCnName().cnname:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",maxPriorityValue:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 367
    .restart local v5    # "mPackageVersionCode":I
    :cond_3
    if-ge v7, v5, :cond_2

    .line 368
    move v7, v5

    .line 369
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    goto :goto_2
.end method

.method public static getComponentPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 380
    const-string v5, "unKnown"

    .line 381
    .local v5, "packageName":Ljava/lang/String;
    const/4 v8, -0x1

    .line 383
    .local v8, "priorityValue":I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v4, "mainIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 385
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 386
    .local v0, "appsInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    move-object v6, v5

    .line 412
    .end local v5    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 390
    .end local v6    # "packageName":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_1

    .line 411
    sget-object v9, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getComponentPackageName().actionName:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",packageName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",priorityValue:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move-object v6, v5

    .line 412
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 391
    .end local v6    # "packageName":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 393
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {p0}, Lsafiap/framework/sdk/util/PackageUtil;->checkAuthorization(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 395
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 394
    invoke-static {p0, v9}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 396
    .local v3, "mPackageVersionCode":I
    iget v9, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v9, :cond_3

    .line 397
    iget v9, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v8, v9, :cond_2

    .line 398
    iget v8, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 399
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 390
    .end local v3    # "mPackageVersionCode":I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    .restart local v3    # "mPackageVersionCode":I
    :cond_3
    if-ge v8, v3, :cond_2

    .line 403
    move v8, v3

    .line 404
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_2
.end method

.method public static getComponentsVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 551
    sget-object v8, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getComponentsVersion().actionName:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 553
    const/4 v6, -0x1

    .line 555
    .local v6, "priorityValue":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v3, "mainIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 557
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 558
    .local v0, "appsInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v7, v6

    .line 581
    .end local v6    # "priorityValue":I
    .local v7, "priorityValue":I
    :goto_0
    return v7

    .line 562
    .end local v7    # "priorityValue":I
    .restart local v6    # "priorityValue":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_2

    move v7, v6

    .line 581
    .end local v6    # "priorityValue":I
    .restart local v7    # "priorityValue":I
    goto :goto_0

    .line 563
    .end local v7    # "priorityValue":I
    .restart local v6    # "priorityValue":I
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 565
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {p0}, Lsafiap/framework/sdk/util/PackageUtil;->checkAuthorization(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 567
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 566
    invoke-static {p0, v8}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 568
    .local v4, "packageVersionCode":I
    iget v8, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v8, :cond_4

    .line 569
    iget v8, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v6, v8, :cond_3

    .line 570
    iget v6, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 578
    .end local v4    # "packageVersionCode":I
    :cond_3
    :goto_2
    sget-object v8, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getComponentsVersion and MaxPV:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    .restart local v4    # "packageVersionCode":I
    :cond_4
    if-ge v6, v4, :cond_3

    .line 574
    move v6, v4

    goto :goto_2
.end method

.method public static getDirectoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 968
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 969
    :cond_0
    const-string v1, ""

    .line 972
    :goto_0
    return-object v1

    .line 971
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 972
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "onExternal"    # Z

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p2}, Lsafiap/framework/sdk/util/PackageUtil;->getBaseDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 850
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 858
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 854
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 855
    .local v0, "index1":I
    if-ltz v0, :cond_0

    .line 858
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getFileNameWithExt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 863
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 871
    :cond_0
    :goto_0
    return-object v1

    .line 866
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, "trimedName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFrameworkAVPJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 655
    sget-object v0, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    .line 656
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 657
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lsafiap/framework/sdk/util/PackageUtil;->getFrameworkVersion(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "safiap.framework"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 658
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 656
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFrameworkAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {p0, v0}, Lsafiap/framework/sdk/util/PackageUtil;->getPluginAppInfoList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFrameworkVersion(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 603
    const/4 v6, 0x0

    .line 604
    .local v6, "priorityValue":I
    new-instance v0, Landroid/content/Intent;

    sget-object v8, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, "checkIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 607
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 608
    .local v1, "frameworkInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    move v7, v6

    .line 627
    .end local v6    # "priorityValue":I
    .local v7, "priorityValue":I
    :goto_0
    return v7

    .line 612
    .end local v7    # "priorityValue":I
    .restart local v6    # "priorityValue":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_1

    move v7, v6

    .line 627
    .end local v6    # "priorityValue":I
    .restart local v7    # "priorityValue":I
    goto :goto_0

    .line 613
    .end local v7    # "priorityValue":I
    .restart local v6    # "priorityValue":I
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 615
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {p0}, Lsafiap/framework/sdk/util/PackageUtil;->checkAuthorization(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 617
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 616
    invoke-static {p0, v8}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 618
    .local v4, "packageVersionCode":I
    iget v8, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v8, :cond_2

    .line 619
    iget v6, v3, Landroid/content/pm/ResolveInfo;->priority:I

    move v7, v6

    .line 620
    .end local v6    # "priorityValue":I
    .restart local v7    # "priorityValue":I
    goto :goto_0

    .line 622
    .end local v7    # "priorityValue":I
    .restart local v6    # "priorityValue":I
    :cond_2
    move v6, v4

    .line 612
    .end local v4    # "packageVersionCode":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getMyFrameworkVersion(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 632
    const/4 v5, -0x1

    .line 633
    .local v5, "priorityValue":I
    new-instance v0, Landroid/content/Intent;

    sget-object v7, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 634
    .local v0, "checkIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 636
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 637
    .local v1, "frameworkInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    move v6, v5

    .line 651
    .end local v5    # "priorityValue":I
    .local v6, "priorityValue":I
    :goto_0
    return v6

    .line 640
    .end local v6    # "priorityValue":I
    .restart local v5    # "priorityValue":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v2, v7, :cond_1

    move v6, v5

    .line 651
    .end local v5    # "priorityValue":I
    .restart local v6    # "priorityValue":I
    goto :goto_0

    .line 641
    .end local v6    # "priorityValue":I
    .restart local v5    # "priorityValue":I
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 643
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 644
    iget v7, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v7, :cond_2

    .line 645
    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    move v6, v5

    .line 646
    .end local v5    # "priorityValue":I
    .restart local v6    # "priorityValue":I
    goto :goto_0

    .line 640
    .end local v6    # "priorityValue":I
    .restart local v5    # "priorityValue":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getMyFrameworkVersionCode(Landroid/content/Context;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    sget-object v8, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v9, "getMyFrameworkVersionCode...."

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 111
    const/4 v6, 0x0

    .line 112
    .local v6, "priorityValue":I
    new-instance v0, Landroid/content/Intent;

    sget-object v8, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "checkIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 115
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, "frameworkInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_0

    .line 131
    sget-object v8, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "priorityValue:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move v7, v6

    .line 132
    .end local v6    # "priorityValue":I
    .local v7, "priorityValue":I
    :goto_1
    return v7

    .line 117
    .end local v7    # "priorityValue":I
    .restart local v6    # "priorityValue":I
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 119
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 120
    invoke-static {p0, v8}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 122
    .local v4, "packageVersionCode":I
    iget v8, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v8, :cond_1

    .line 123
    iget v6, v3, Landroid/content/pm/ResolveInfo;->priority:I

    .line 124
    sget-object v8, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MyFV:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move v7, v6

    .line 125
    .end local v6    # "priorityValue":I
    .restart local v7    # "priorityValue":I
    goto :goto_1

    .line 127
    .end local v7    # "priorityValue":I
    .restart local v6    # "priorityValue":I
    :cond_1
    move v6, v4

    .line 116
    .end local v4    # "packageVersionCode":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1221
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1222
    :cond_0
    const-string v0, ""

    .line 1224
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPackageCnName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 457
    const-string v0, ""

    .line 458
    .local v0, "cnname":Ljava/lang/String;
    invoke-static {p1}, Lsafiap/framework/sdk/util/PackageUtil;->getAbsolutePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 462
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 463
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 464
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 471
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 466
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageUtil"

    const-string v6, "SAF-A Exception:512002"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 710
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 711
    :cond_0
    const/4 v1, 0x0

    .line 721
    :goto_0
    return-object v1

    .line 713
    :cond_1
    const/4 v1, 0x0

    .line 714
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 716
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x1140

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 719
    const-string v3, "PackageUtil"

    const-string v4, "SAF-A Exception:512004"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPackageNameByAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 422
    sget-object v9, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "in getPackageNameByAction actionName:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 423
    const-string v5, "unKnown"

    .line 424
    .local v5, "packageName":Ljava/lang/String;
    const/4 v8, -0x1

    .line 426
    .local v8, "priorityValue":I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v4, "mainIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 428
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 429
    .local v0, "appsInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    move-object v6, v5

    .line 452
    .end local v5    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 433
    .end local v6    # "packageName":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_1

    move-object v6, v5

    .line 452
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 434
    .end local v6    # "packageName":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 437
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 436
    invoke-static {p0, v9}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 438
    .local v3, "mPackageVersionCode":I
    iget v9, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v9, :cond_3

    .line 439
    iget v9, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v8, v9, :cond_2

    .line 440
    iget v8, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 441
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 433
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    :cond_3
    if-ge v8, v3, :cond_2

    .line 445
    move v8, v3

    .line 446
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_2
.end method

.method public static getPackageSourceDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1016
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPackageSourceDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1020
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1021
    :cond_0
    const-string v3, ""

    .line 1040
    :goto_0
    return-object v3

    .line 1024
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1025
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0

    .line 1028
    :cond_2
    const/4 v1, 0x0

    .line 1029
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1031
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1036
    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 1037
    :cond_3
    const-string v3, ""

    goto :goto_0

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_1

    .line 1040
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-static {p1}, Lsafiap/framework/sdk/util/PackageUtil;->getAbsolutePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 485
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 488
    .local v4, "version":I
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 489
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 490
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageUtil"

    const-string v6, "SAF-A Exception:512003"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPatchFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 893
    const-string v0, "patch"

    invoke-static {p0, v0}, Lsafiap/framework/sdk/util/PackageUtil;->getFileNameWithExt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginAppInfoList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v7, "pluginList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "checkIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 154
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 156
    .local v6, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_0

    .line 172
    return-object v7

    .line 157
    :cond_0
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 158
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 159
    .local v5, "packagename":Ljava/lang/String;
    invoke-static {p0, v5}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 161
    .local v4, "packageVersionCode":I
    new-instance v3, Lsafiap/framework/data/PluginInfo;

    invoke-direct {v3}, Lsafiap/framework/data/PluginInfo;-><init>()V

    .line 162
    .local v3, "pInfo":Lsafiap/framework/data/PluginInfo;
    invoke-virtual {v3, v5}, Lsafiap/framework/data/PluginInfo;->setPackageName(Ljava/lang/String;)V

    .line 164
    iget v9, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v9, :cond_1

    .line 165
    iget v9, v2, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v3, v9}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 170
    :goto_1
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v3, v4}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    goto :goto_1
.end method

.method public static getPluginVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 509
    sget-object v10, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "in getPluginVersion: packageName:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 510
    const/4 v7, 0x0

    .line 511
    .local v7, "priorityValue":I
    invoke-static {p1}, Lsafiap/framework/sdk/util/PackageUtil;->getAbsolutePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "name":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 513
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v10, "android.intent.category.SAFIAP.COMPONENT"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 515
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v6, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 516
    .local v0, "appsInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    move v8, v7

    .line 540
    .end local v7    # "priorityValue":I
    .local v8, "priorityValue":I
    :goto_0
    return v8

    .line 519
    .end local v8    # "priorityValue":I
    .restart local v7    # "priorityValue":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lt v1, v10, :cond_1

    move v8, v7

    .line 540
    .end local v7    # "priorityValue":I
    .restart local v8    # "priorityValue":I
    goto :goto_0

    .line 520
    .end local v8    # "priorityValue":I
    .restart local v7    # "priorityValue":I
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 521
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    sget-object v10, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "appsInfos:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 522
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 524
    .local v9, "targetPackageName":Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 527
    invoke-static {p0}, Lsafiap/framework/sdk/util/PackageUtil;->checkAuthorization(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 528
    invoke-static {p0, v9}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 529
    .local v5, "packageVersionCode":I
    iget v10, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v10, :cond_2

    .line 530
    iget v7, v2, Landroid/content/pm/ResolveInfo;->priority:I

    move v8, v7

    .line 531
    .end local v7    # "priorityValue":I
    .restart local v8    # "priorityValue":I
    goto :goto_0

    .line 533
    .end local v8    # "priorityValue":I
    .restart local v7    # "priorityValue":I
    :cond_2
    move v7, v5

    .line 519
    .end local v5    # "packageVersionCode":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getQueryUrl(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 813
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 824
    .end local p1    # "actionName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 816
    .restart local p1    # "actionName":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 817
    .local v0, "f":Ljava/util/Formatter;
    const-string v3, "http://221.179.35.113/SAFUpgradeServer/find?action=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 821
    invoke-static {p0, p1}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageNameByAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object p1, v2

    .line 824
    goto :goto_0
.end method

.method public static getTempFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 889
    const-string v0, "tmp"

    invoke-static {p0, v0}, Lsafiap/framework/sdk/util/PackageUtil;->getFileNameWithExt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnauthPluginAppInfoList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v10, "unauthList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "checkIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 186
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v9, v0, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 188
    .local v8, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v1

    .line 190
    .local v1, "db":Lsafiap/framework/data/SafFrameworkDB;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lt v3, v11, :cond_0

    .line 210
    return-object v10

    .line 191
    :cond_0
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 192
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 193
    .local v7, "packagename":Ljava/lang/String;
    invoke-static {p0, v7}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 195
    .local v6, "packageVersionCode":I
    invoke-virtual {v1, v7}, Lsafiap/framework/data/SafFrameworkDB;->getAppDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "digest":Ljava/lang/String;
    invoke-static {p0, v7, v2}, Lsafiap/framework/sdk/util/PackageUtil;->isSignatureMatched(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 198
    new-instance v5, Lsafiap/framework/data/PluginInfo;

    invoke-direct {v5}, Lsafiap/framework/data/PluginInfo;-><init>()V

    .line 199
    .local v5, "pInfo":Lsafiap/framework/data/PluginInfo;
    invoke-virtual {v5, v7}, Lsafiap/framework/data/PluginInfo;->setPackageName(Ljava/lang/String;)V

    .line 200
    iget v11, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v11, :cond_2

    .line 201
    iget v11, v4, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v5, v11}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 205
    :goto_1
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v5    # "pInfo":Lsafiap/framework/data/PluginInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .restart local v5    # "pInfo":Lsafiap/framework/data/PluginInfo;
    :cond_2
    invoke-virtual {v5, v6}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    goto :goto_1
.end method

.method public static installAssetBin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "assetResName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 976
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, v5

    .line 998
    :cond_1
    :goto_0
    return-object v2

    .line 979
    :cond_2
    sget-object v6, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "installAssetBin().codePath:"

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, Landroid/content/ContextWrapper;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",resourcePath:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v4, p0

    check-cast v4, Landroid/content/ContextWrapper;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 980
    invoke-static {p0, p1}, Lsafiap/framework/sdk/util/PackageUtil;->getDirectoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, "dirPath":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object p2, p3

    .line 982
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 983
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 984
    .local v1, "file":Ljava/io/File;
    sget-object v4, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "installAssetBin().file.exists:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",filePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 987
    invoke-static {p0, p3, v2}, Lsafiap/framework/sdk/util/PackageUtil;->copyFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 988
    .local v3, "isCopyOK":Z
    sget-object v4, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "installAssetBin().isCopyOK:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 989
    if-nez v3, :cond_4

    .line 990
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object v2, v5

    .line 991
    goto/16 :goto_0

    .line 994
    :cond_4
    const/16 v4, 0x309

    invoke-static {v2, v4}, Lsafiap/framework/sdk/util/FileUtility;->chmod(Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public static isApkServiceRunning(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 1244
    const/4 v4, 0x0

    .line 1245
    .local v4, "result":Z
    invoke-static {p0, p1, p2}, Lsafiap/framework/sdk/util/PackageUtil;->queryIntentServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1247
    .local v3, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    .line 1249
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1266
    :cond_1
    return v4

    .line 1249
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1250
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1251
    .local v1, "packageName":Ljava/lang/String;
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 1253
    .local v6, "serviceName":Ljava/lang/String;
    sget-object v8, Lsafiap/framework/util/Constants;->IAP_COMPONENT_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    .line 1254
    sget-object v8, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1255
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1256
    .local v0, "manager":Landroid/app/ActivityManager;
    const v8, 0x7fffffff

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1257
    .local v5, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v9, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1258
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isApkSignatureMatched(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilePath"    # Ljava/lang/String;
    .param p2, "signatureDigest"    # Ljava/lang/String;

    .prologue
    .line 802
    invoke-static {p0, p1}, Lsafiap/framework/sdk/util/PackageUtil;->getApkPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 803
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v0, p2}, Lsafiap/framework/sdk/util/PackageUtil;->checkSignature(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isComponentsInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v3, 0x0

    .line 244
    .local v3, "result":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "checkIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 248
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 249
    .local v1, "componentsInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    const/4 v3, 0x1

    .line 254
    :cond_0
    return v3
.end method

.method public static isComponentsInstalled(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 258
    const/4 v7, 0x0

    .line 259
    .local v7, "result":Z
    const/4 v4, -0x1

    .line 260
    .local v4, "maxPriorityValue":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "checkIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 264
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 265
    .local v1, "componentsInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 267
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 291
    .end local v2    # "i":I
    :cond_0
    return v7

    .line 268
    .restart local v2    # "i":I
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 270
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {p0}, Lsafiap/framework/sdk/util/PackageUtil;->checkAuthorization(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 272
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 271
    invoke-static {p0, v8}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 273
    .local v5, "packageVersionCode":I
    iget v8, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v8, :cond_4

    .line 274
    iget v8, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v4, v8, :cond_2

    .line 275
    iget v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    .line 283
    .end local v5    # "packageVersionCode":I
    :cond_2
    :goto_1
    sget-object v8, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isComponentsInstalled().actionName:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",maxPriorityValue:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",version:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 284
    if-ne p2, v4, :cond_3

    .line 285
    const/4 v7, 0x1

    .line 267
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .restart local v5    # "packageVersionCode":I
    :cond_4
    if-ge v4, v5, :cond_2

    .line 279
    move v4, v5

    goto :goto_1
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lsafiap/framework/sdk/util/PackageUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 326
    invoke-static {p1}, Lsafiap/framework/sdk/util/PackageUtil;->getAbsolutePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 328
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 331
    .local v1, "isInstalled":Z
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 332
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 333
    if-eqz p2, :cond_0

    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, p2, :cond_1

    .line 334
    :cond_0
    const/4 v1, 0x1

    .line 340
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageUtil"

    const-string v6, "SAF-A Exception:512001"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lsafiap/framework/sdk/util/PackageUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isSignatureMatched(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "signatureDigest"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-static {p0, p1}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 782
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v0, p2}, Lsafiap/framework/sdk/util/PackageUtil;->checkSignature(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isValidFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 903
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, ".apk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".patch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static notify(Landroid/content/Context;IILandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancelId"    # I
    .param p2, "notifyId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "iconId"    # I
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "message"    # Ljava/lang/String;

    .prologue
    .line 1272
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1273
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1275
    if-lez p2, :cond_0

    .line 1276
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p4, p6, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1277
    .local v1, "notification":Landroid/app/Notification;
    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p0, v3, p3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1278
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, p0, p5, p7, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1279
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 1280
    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1282
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public static parseDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 833
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    .end local p0    # "url":Ljava/lang/String;
    .local v0, "parsedUrl":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 836
    .end local v0    # "parsedUrl":Ljava/lang/String;
    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 837
    .restart local v0    # "parsedUrl":Ljava/lang/String;
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object p0, v0

    .line 838
    goto :goto_0

    .line 840
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parsePriority(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1087
    sget-object v25, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "parsePriority...start, path: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", action: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1089
    const-string v10, "AndroidManifest.xml"

    .line 1090
    .local v10, "entryName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v2, "apkFile":Ljava/io/File;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1092
    .local v16, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v4, "desFile":Ljava/io/File;
    const/16 v17, -0x1

    .line 1097
    .local v17, "priority":I
    new-instance v20, Ljava/util/Stack;

    invoke-direct/range {v20 .. v20}, Ljava/util/Stack;-><init>()V

    .line 1099
    .local v20, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1101
    :try_start_0
    new-instance v24, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 1102
    .local v24, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .local v8, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-nez v25, :cond_1

    .line 1127
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_4

    .line 1128
    const/16 v25, -0x1

    .line 1217
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v24    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_1
    return v25

    .line 1103
    .restart local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v24    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 1104
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    sget-object v25, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "entry: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", targetName: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1110
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    .line 1112
    .local v12, "in":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 1115
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1116
    .local v14, "out":Ljava/io/OutputStream;
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v3, v0, [B

    .line 1118
    .local v3, "buffer":[B
    :goto_2
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v18

    .local v18, "realLength":I
    if-gtz v18, :cond_3

    .line 1121
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 1122
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1207
    .end local v3    # "buffer":[B
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v14    # "out":Ljava/io/OutputStream;
    .end local v18    # "realLength":I
    .end local v24    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v5

    .line 1208
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1216
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    invoke-static {v4}, Lsafiap/framework/sdk/util/FileUtility;->deleteFile(Ljava/io/File;)Z

    .line 1217
    const/16 v25, -0x1

    goto :goto_1

    .line 1119
    .restart local v3    # "buffer":[B
    .restart local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v14    # "out":Ljava/io/OutputStream;
    .restart local v18    # "realLength":I
    .restart local v24    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_3
    const/16 v25, 0x0

    :try_start_1
    move/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v14, v3, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 1209
    .end local v3    # "buffer":[B
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v14    # "out":Ljava/io/OutputStream;
    .end local v18    # "realLength":I
    .end local v24    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v6

    .line 1210
    .local v6, "e2":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1132
    .end local v6    # "e2":Ljava/io/IOException;
    .restart local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v24    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_4
    :try_start_2
    new-instance v15, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;

    invoke-direct {v15}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;-><init>()V

    .line 1133
    .local v15, "parser":Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;
    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->open(Ljava/io/InputStream;)V

    .line 1136
    :cond_5
    :goto_4
    invoke-virtual {v15}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->next()I

    move-result v22

    .line 1137
    .local v22, "type":I
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 1140
    packed-switch v22, :pswitch_data_0

    goto :goto_4

    .line 1151
    :pswitch_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->size()I

    move-result v25

    if-nez v25, :cond_6

    .line 1152
    invoke-virtual {v15}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "service"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1153
    invoke-virtual {v15}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 1211
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v15    # "parser":Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;
    .end local v22    # "type":I
    .end local v24    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v7

    .line 1212
    .local v7, "e3":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    .line 1142
    .end local v7    # "e3":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v15    # "parser":Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;
    .restart local v22    # "type":I
    .restart local v24    # "zipFile":Ljava/util/zip/ZipFile;
    :pswitch_1
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->size()I

    move-result v25

    if-lez v25, :cond_5

    .line 1143
    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1144
    .local v21, "temp":Ljava/lang/String;
    invoke-virtual {v15}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 1145
    invoke-virtual/range {v20 .. v21}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1158
    .end local v21    # "temp":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 1159
    invoke-virtual {v15}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 1160
    const-string v26, "intent-filter"

    .line 1159
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1161
    invoke-virtual {v15}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    invoke-virtual {v15}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeCount()I

    move-result v25

    move/from16 v0, v25

    if-eq v11, v0, :cond_5

    .line 1164
    new-instance v25, Ljava/lang/StringBuilder;

    .line 1165
    invoke-virtual {v15, v11}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lsafiap/framework/sdk/util/PackageUtil;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v15, v11}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1164
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1167
    .local v13, "key":Ljava/lang/String;
    const-string v25, "android:priority"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 1168
    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v15, v11, v0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeIntValue(II)I

    move-result v17

    .line 1169
    const-string v25, "LinkLog"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "priority: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1163
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1178
    .end local v11    # "i":I
    .end local v13    # "key":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->size()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 1179
    invoke-virtual {v15}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "action"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1180
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    invoke-virtual {v15}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeCount()I

    move-result v25

    move/from16 v0, v25

    if-eq v11, v0, :cond_5

    .line 1181
    new-instance v25, Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {v15, v11}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lsafiap/framework/sdk/util/PackageUtil;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {v15, v11}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1181
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1184
    .restart local v13    # "key":Ljava/lang/String;
    const-string v25, "android:name"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 1185
    invoke-virtual {v15, v11}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v23

    .line 1186
    .local v23, "value":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    .line 1189
    .local v19, "result":Z
    if-eqz v19, :cond_9

    .line 1190
    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->clear()V

    .line 1191
    invoke-virtual {v15}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->close()V

    .line 1193
    invoke-static {v4}, Lsafiap/framework/sdk/util/FileUtility;->deleteFile(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v25, v17

    .line 1194
    goto/16 :goto_1

    .line 1180
    .end local v19    # "result":Z
    .end local v23    # "value":Ljava/lang/String;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1140
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static patch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "bspatchPath"    # Ljava/lang/String;
    .param p1, "oldFilePath"    # Ljava/lang/String;
    .param p2, "newFilePath"    # Ljava/lang/String;
    .param p3, "patchFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1002
    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v2, v5

    aput-object p1, v2, v8

    const/4 v5, 0x2

    aput-object p2, v2, v5

    const/4 v5, 0x3

    aput-object p3, v2, v5

    .line 1003
    .local v2, "param":[Ljava/lang/String;
    sget-object v5, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "patch().exec param:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1005
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1006
    .local v3, "result":Ljava/lang/StringBuffer;
    new-instance v4, Lsafiap/framework/sdk/util/ShellExecutor;

    invoke-direct {v4}, Lsafiap/framework/sdk/util/ShellExecutor;-><init>()V

    .line 1007
    .local v4, "shellExecutor":Lsafiap/framework/sdk/util/ShellExecutor;
    const-string v5, ""

    invoke-virtual {v4, v2, v5, v3, v8}, Lsafiap/framework/sdk/util/ShellExecutor;->execute([Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)I

    move-result v0

    .line 1008
    .local v0, "exitValue":I
    sget-object v5, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "patch().exitValue:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1010
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v1, "newFile":Ljava/io/File;
    sget-object v5, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "patch().newFile exist:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1013
    return v0
.end method

.method private static prefixPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    .end local p0    # "packageName":Ljava/lang/String;
    .local v0, "parsedName":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 234
    .end local v0    # "parsedName":Ljava/lang/String;
    .restart local p0    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0    # "parsedName":Ljava/lang/String;
    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 236
    goto :goto_0

    .line 238
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static queryIntentServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 1229
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    :goto_0
    return-object v1

    .line 1231
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1232
    .local v0, "checkIntent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1233
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1235
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1236
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0
.end method

.method public static releaseAssetPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefixFileName"    # Ljava/lang/String;

    .prologue
    .line 1065
    invoke-static {p0}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageSourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1066
    .local v3, "zipFilePath":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lsafiap/framework/sdk/util/PackageUtil;->getBaseDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1067
    .local v1, "destDirectory":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "assets"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "assetResName":Ljava/lang/String;
    sget-object v4, Lsafiap/framework/sdk/util/PackageUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "releaseAssetPackage().destDirectory:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",assetResName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1070
    :try_start_0
    invoke-static {v3, v1, v0}, Lsafiap/framework/sdk/util/FileUtility;->unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1073
    :goto_0
    return-object v4

    .line 1071
    :catch_0
    move-exception v2

    .line 1072
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1073
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static requestInstallation(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 682
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static requestInstallation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 668
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 673
    .local v0, "file":Ljava/io/File;
    invoke-static {p0, v0}, Lsafiap/framework/sdk/util/PackageUtil;->requestInstallation(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method

.method public static requestUninstallation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 699
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 700
    invoke-static {p1}, Lsafiap/framework/sdk/util/PackageUtil;->prefixPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 701
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 702
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 703
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 705
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 725
    if-nez p0, :cond_0

    .line 726
    const-string v3, ""

    .line 736
    :goto_0
    return-object v3

    .line 728
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 729
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_1

    .line 736
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 730
    :cond_1
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
