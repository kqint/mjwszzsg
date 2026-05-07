.class public Lsafiap/framework/util/VerifyApk;
.super Ljava/lang/Object;
.source "VerifyApk.java"


# static fields
.field private static sTripPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "^META-INF/(.*)[.](SF|RSA|DSA)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 21
    sput-object v0, Lsafiap/framework/util/VerifyApk;->sTripPattern:Ljava/util/regex/Pattern;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDigests(Ljava/lang/String;)Z
    .locals 5
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 26
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkDigests apkPath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    new-instance v1, Ljava/util/jar/JarFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 28
    .local v1, "jarFile":Ljava/util/jar/JarFile;
    invoke-static {v1}, Lsafiap/framework/util/VerifyApk;->checkDigests(Ljava/util/jar/JarFile;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 33
    .end local v1    # "jarFile":Ljava/util/jar/JarFile;
    :goto_0
    return v2

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static checkDigests(Ljava/util/jar/JarFile;)Z
    .locals 18
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v10, 0x0

    .line 39
    .local v10, "jEntryDigest":Ljava/lang/String;
    const/4 v11, 0x0

    .line 41
    .local v11, "mEntryDigest":Ljava/lang/String;
    const-string v15, "SHA1"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    .line 42
    .local v13, "md":Ljava/security/MessageDigest;
    const/16 v15, 0x1000

    new-array v2, v15, [B

    .line 46
    .local v2, "buffer":[B
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 47
    .local v8, "entrysMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/jar/JarEntry;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-nez v15, :cond_1

    .line 53
    invoke-virtual/range {p0 .. p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v12

    .line 54
    .local v12, "manifest":Ljava/util/jar/Manifest;
    invoke-virtual {v12}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v5

    .line 55
    .local v5, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_2

    .line 78
    const/4 v15, 0x1

    :goto_1
    return v15

    .line 48
    .end local v5    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v12    # "manifest":Ljava/util/jar/Manifest;
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/JarEntry;

    .line 49
    .local v6, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v6}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    .end local v6    # "entry":Ljava/util/jar/JarEntry;
    .restart local v5    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v12    # "manifest":Ljava/util/jar/Manifest;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 59
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/jar/JarEntry;

    .line 60
    .local v9, "jEntry":Ljava/util/jar/JarEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 61
    .local v3, "data":Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .local v14, "num":I
    if-gtz v14, :cond_3

    .line 64
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    invoke-static {v15}, Lsafiap/framework/sdk/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v10

    .line 67
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/jar/Attributes;

    invoke-virtual {v15}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_4

    .line 72
    invoke-virtual {v11, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 73
    const/4 v15, 0x0

    goto :goto_1

    .line 62
    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v13, v2, v15, v14}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    .line 67
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 68
    .local v1, "att":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3
.end method
