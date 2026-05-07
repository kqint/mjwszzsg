.class public Lsafiap/framework/sdk/util/FileUtility;
.super Ljava/lang/Object;
.source "FileUtility.java"


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "FileUtility"

.field private static sLogger:Lsafiap/framework/util/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "FileUtility"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/util/FileUtility;->sLogger:Lsafiap/framework/util/MyLogger;

    .line 31
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/util/FileUtility;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chgrp2sd(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 462
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chown "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".sdcard_rw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    const/4 v1, 0x1

    .line 466
    :goto_0
    return v1

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static chmod(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "mod"    # I

    .prologue
    .line 452
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    const/4 v1, 0x1

    .line 456
    :goto_0
    return v1

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 456
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 105
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 106
    :cond_0
    const/4 v2, 0x0

    .line 121
    :goto_0
    return v2

    .line 109
    :cond_1
    const/4 v2, 0x0

    .line 111
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v1, p1, v3}, Lsafiap/framework/sdk/util/FileUtility;->copyFile(Ljava/io/InputStream;Ljava/io/File;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 115
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 117
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "FileUtility"

    const-string v4, "SAF-A Exception:516002"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v2, 0x0

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    .line 115
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 116
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;[B)Z
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "buffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 125
    if-nez p0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v3

    .line 128
    :cond_1
    invoke-static {p1}, Lsafiap/framework/sdk/util/FileUtility;->deleteAndCreate(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 132
    if-nez p2, :cond_2

    const/16 v4, 0x1000

    new-array p2, v4, [B

    .line 134
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .local v2, "readCount":I
    if-gez v2, :cond_3

    .line 145
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 146
    invoke-static {v1}, Lsafiap/framework/sdk/util/FileUtility;->sync(Ljava/io/FileOutputStream;)Z

    .line 147
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    const/4 v3, 0x1

    goto :goto_0

    .line 138
    :cond_3
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, p2, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 140
    .end local v2    # "readCount":I
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v4, "FileUtility"

    const-string v5, "SAF-A Exception:516002"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 146
    invoke-static {v1}, Lsafiap/framework/sdk/util/FileUtility;->sync(Ljava/io/FileOutputStream;)Z

    .line 147
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "FileUtility"

    const-string v5, "SAF-A Exception:516002"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    .line 145
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 146
    invoke-static {v1}, Lsafiap/framework/sdk/util/FileUtility;->sync(Ljava/io/FileOutputStream;)Z

    .line 147
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 148
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method public static deleteAndCreate(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 55
    if-nez p0, :cond_0

    .line 72
    .end local p0    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 59
    .restart local p0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 65
    :goto_1
    const/4 v1, 0x0

    .line 67
    .local v1, "isOK":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_2
    if-eqz v1, :cond_2

    .end local p0    # "file":Ljava/io/File;
    :goto_3
    move-object v2, p0

    goto :goto_0

    .line 62
    .end local v1    # "isOK":Z
    .restart local p0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 68
    .restart local v1    # "isOK":Z
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "FileUtility"

    const-string v4, "SAF-A Exception:516001"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v1, 0x0

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    move-object p0, v2

    .line 72
    goto :goto_3
.end method

.method public static deleteAndCreate(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    :goto_0
    return-object v3

    .line 37
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 44
    :goto_1
    const/4 v2, 0x0

    .line 46
    .local v2, "isOK":Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 51
    :goto_2
    if-eqz v2, :cond_2

    .end local v1    # "file":Ljava/io/File;
    :goto_3
    move-object v3, v1

    goto :goto_0

    .line 41
    .end local v2    # "isOK":Z
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 47
    .restart local v2    # "isOK":Z
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "FileUtility"

    const-string v5, "SAF-A Exception:516001"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v2, 0x0

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    move-object v1, v3

    .line 51
    goto :goto_3
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 166
    if-eqz p0, :cond_1

    .line 167
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    .line 161
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lsafiap/framework/sdk/util/FileUtility;->deleteFile(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    .end local p0    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 80
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "position":I
    if-gez v0, :cond_2

    .line 82
    const-string v1, "\\"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 85
    :cond_2
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static indexLastSlash(Ljava/lang/String;)I
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const/4 v0, -0x1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 95
    const-string v1, "\\"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 206
    sget-object v0, Lsafiap/framework/sdk/util/FileUtility;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath1"    # Ljava/lang/String;
    .param p1, "filePath2"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 174
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "destFile":Ljava/io/File;
    sget-object v3, Lsafiap/framework/sdk/util/FileUtility;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "src.exits:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",src.canRead:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",src.canWrite:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",dest.canWrite:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 186
    invoke-static {v2, v0}, Lsafiap/framework/sdk/util/FileUtility;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 187
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .param p2, "ellipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    .line 218
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 220
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 221
    .local v7, "size":J
    if-gtz p1, :cond_0

    cmp-long v10, v7, v11

    if-lez v10, :cond_8

    if-nez p1, :cond_8

    .line 222
    :cond_0
    cmp-long v10, v7, v11

    if-lez v10, :cond_2

    if-eqz p1, :cond_1

    int-to-long v10, p1

    cmp-long v10, v7, v10

    if-gez v10, :cond_2

    :cond_1
    long-to-int p1, v7

    .line 223
    :cond_2
    add-int/lit8 v10, p1, 0x1

    new-array v1, v10, [B

    .line 224
    .local v1, "data":[B
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 225
    .local v5, "length":I
    if-gtz v5, :cond_5

    .line 260
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 225
    :cond_3
    const-string v10, ""

    .line 260
    .end local v5    # "length":I
    :cond_4
    :goto_0
    return-object v10

    .line 226
    .restart local v5    # "length":I
    :cond_5
    if-gt v5, p1, :cond_6

    :try_start_1
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 227
    :cond_6
    if-nez p2, :cond_7

    :try_start_2
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 228
    :cond_7
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 260
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 229
    .end local v1    # "data":[B
    .end local v5    # "length":I
    :cond_8
    if-gez p1, :cond_12

    .line 231
    const/4 v6, 0x0

    .line 232
    .local v6, "rolled":Z
    const/4 v3, 0x0

    :try_start_4
    check-cast v3, [B

    .local v3, "last":[B
    const/4 v1, 0x0

    check-cast v1, [B

    .line 234
    .restart local v1    # "data":[B
    :cond_9
    if-eqz v3, :cond_a

    const/4 v6, 0x1

    .line 235
    :cond_a
    move-object v9, v3

    .local v9, "tmp":[B
    move-object v3, v1

    move-object v1, v9

    .line 236
    if-nez v1, :cond_b

    neg-int v10, p1

    new-array v1, v10, [B

    .line 237
    :cond_b
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 238
    .local v4, "len":I
    array-length v10, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v4, v10, :cond_9

    .line 240
    if-nez v3, :cond_d

    if-gtz v4, :cond_d

    .line 260
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 240
    :cond_c
    const-string v10, ""

    goto :goto_0

    .line 241
    :cond_d
    if-nez v3, :cond_e

    :try_start_5
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 242
    :cond_e
    if-lez v4, :cond_f

    .line 243
    const/4 v6, 0x1

    .line 244
    const/4 v10, 0x0

    :try_start_6
    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v3, v4, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    const/4 v10, 0x0

    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v1, v10, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    :cond_f
    if-eqz p2, :cond_10

    if-nez v6, :cond_11

    :cond_10
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 260
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 248
    :cond_11
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v10

    .line 260
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 250
    .end local v1    # "data":[B
    .end local v3    # "last":[B
    .end local v4    # "len":I
    .end local v6    # "rolled":Z
    .end local v9    # "tmp":[B
    :cond_12
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 252
    .local v0, "contents":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 254
    .restart local v1    # "data":[B
    :cond_13
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 255
    .restart local v4    # "len":I
    if-lez v4, :cond_14

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 256
    :cond_14
    array-length v10, v1

    if-eq v4, v10, :cond_13

    .line 257
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v10

    .line 260
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 259
    .end local v0    # "contents":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v4    # "len":I
    .end local v7    # "size":J
    :catchall_0
    move-exception v10

    .line 260
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 261
    :cond_15
    throw v10
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileDirectory"    # Ljava/lang/String;
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method private static sync(Ljava/io/FileOutputStream;)Z
    .locals 1
    .param p0, "fileOutputStream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 441
    if-eqz p0, :cond_0

    .line 442
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_0
    const/4 v0, 0x1

    .line 447
    :goto_0
    return v0

    .line 445
    :catch_0
    move-exception v0

    .line 447
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "destDirectory"    # Ljava/lang/String;
    .param p2, "prefixName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-object v1

    .line 409
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 412
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 413
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 415
    .local v1, "destFile":Ljava/io/File;
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 416
    .local v7, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 417
    .local v4, "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 418
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 419
    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 422
    .local v6, "zipEntryName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 425
    sget-object v8, Lsafiap/framework/sdk/util/FileUtility;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unzip().entryName:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",prefixName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 427
    new-instance v1, Ljava/io/File;

    .end local v1    # "destFile":Ljava/io/File;
    invoke-direct {v1, p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .restart local v1    # "destFile":Ljava/io/File;
    invoke-virtual {v7, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 429
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-static {v3, v1, v0}, Lsafiap/framework/sdk/util/FileUtility;->copyFile(Ljava/io/InputStream;Ljava/io/File;[B)Z

    move-result v8

    if-nez v8, :cond_0

    .line 430
    sget-object v8, Lsafiap/framework/sdk/util/FileUtility;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unzip().copy erroe:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static varargs unzip(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "destDirectory"    # Ljava/lang/String;
    .param p2, "prefixNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v6, "matchFileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 390
    :cond_0
    return-object v6

    .line 356
    :cond_1
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v12, v0

    if-eqz v12, :cond_0

    .line 360
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 363
    const/16 v12, 0x1000

    new-array v1, v12, [B

    .line 365
    .local v1, "buffer":[B
    new-instance v11, Ljava/util/zip/ZipFile;

    invoke-direct {v11, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 366
    .local v11, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .line 367
    .local v8, "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 368
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 369
    .local v9, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 371
    .local v10, "zipEntryName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 372
    .local v5, "isContained":Z
    move-object/from16 v0, p2

    array-length v13, v0

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v13, :cond_3

    .line 376
    sget-object v12, Lsafiap/framework/sdk/util/FileUtility;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "unzip().entryName:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",isContained:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 377
    if-eqz v5, :cond_2

    .line 380
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .local v2, "entryFile":Ljava/io/File;
    invoke-virtual {v11, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 382
    .local v4, "inputStream":Ljava/io/InputStream;
    invoke-static {v4, v2, v1}, Lsafiap/framework/sdk/util/FileUtility;->copyFile(Ljava/io/InputStream;Ljava/io/File;[B)Z

    move-result v12

    if-nez v12, :cond_5

    .line 383
    sget-object v12, Lsafiap/framework/sdk/util/FileUtility;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "unzip().copy erroe:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 372
    .end local v2    # "entryFile":Ljava/io/File;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_3
    aget-object v7, p2, v12

    .line 373
    .local v7, "prefixName":Ljava/lang/String;
    invoke-static {v10}, Lsafiap/framework/sdk/util/FileUtility;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 374
    const/4 v5, 0x1

    .line 372
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 386
    .end local v7    # "prefixName":Ljava/lang/String;
    .restart local v2    # "entryFile":Ljava/io/File;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :cond_5
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "destDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 333
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 335
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 336
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 339
    .local v6, "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v4, :cond_3

    .line 348
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_0

    .line 340
    :cond_3
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, "zipEntryName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .local v1, "entryFile":Ljava/io/File;
    invoke-static {v6, v1, v0}, Lsafiap/framework/sdk/util/FileUtility;->copyFile(Ljava/io/InputStream;Ljava/io/File;[B)Z

    move-result v7

    if-nez v7, :cond_2

    .line 344
    sget-object v7, Lsafiap/framework/sdk/util/FileUtility;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unzip().copy erroe:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private static zip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 10
    .param p0, "directory"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "zipOutputStream"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    if-eqz p2, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v3, "fileOrFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 303
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 304
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 305
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {p2, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 306
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 308
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "readCount":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_2

    .line 311
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    .line 309
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p2, v0, v8, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 314
    .end local v0    # "buffer":[B
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "readCount":I
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "fileList":[Ljava/lang/String;
    array-length v8, v2

    if-gtz v8, :cond_4

    .line 316
    new-instance v7, Ljava/util/zip/ZipEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 317
    .local v7, "zipentry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p2, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 318
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    .line 320
    .end local v7    # "zipentry":Ljava/util/zip/ZipEntry;
    :cond_4
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    array-length v8, v2

    if-ge v4, v8, :cond_0

    .line 321
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, p2}, Lsafiap/framework/sdk/util/FileUtility;->zip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private static varargs zip(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p0, "destZipFilePath"    # Ljava/lang/String;
    .param p1, "srcPaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    if-eqz p1, :cond_0

    array-length v6, p1

    if-eqz v6, :cond_0

    .line 272
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "destZipFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 274
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 275
    .local v5, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    array-length v7, p1

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v7, :cond_2

    .line 289
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 290
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 291
    invoke-static {v3}, Lsafiap/framework/sdk/util/FileUtility;->sync(Ljava/io/FileOutputStream;)Z

    .line 292
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_0

    .line 275
    :cond_2
    aget-object v4, p1, v6

    .line 276
    .local v4, "filePathOrFolderPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, "fileOrFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 275
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 279
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Lsafiap/framework/sdk/util/FileUtility;->zip(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 280
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 283
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :catchall_0
    move-exception v6

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 286
    throw v6
.end method
