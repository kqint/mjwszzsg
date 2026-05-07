.class public Lmm/purchasesdk/core/b/e;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/core/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/core/h/d;)I
    .locals 10

    const/16 v5, 0xf1

    const/16 v4, 0xf2

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Lmm/purchasesdk/core/g/b;

    invoke-direct {v0, p0}, Lmm/purchasesdk/core/g/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->T()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KEY--\u3009"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lmm/purchasesdk/fingerprint/c;->base64decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lmm/purchasesdk/fingerprint/IdentifyApp;->decrypt([BLjava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    const-string v6, "Base64 decrypt license file failure,auth file is null,code=241"

    invoke-static {v1, v6}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    :goto_0
    :try_start_1
    sget-object v6, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Lmm/purchasesdk/core/b/b;->a([BLjava/lang/String;)Lmm/purchasesdk/core/b/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v6, Lmm/purchasesdk/core/b/a;->E:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v6, Lmm/purchasesdk/core/b/a;->x:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lmm/purchasesdk/core/l/d;->T()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v6, Lmm/purchasesdk/core/b/a;->v:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    :goto_1
    if-nez v5, :cond_2

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/purchasesdk/core/l/d;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmm/purchasesdk/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    const-string v1, "Auth validate failed! paycode or appid or imsi error,code=242"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    :goto_2
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    const-string v1, "base64 decrypt license file failure"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    goto :goto_2

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<MM_User_Authorization>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "</MM_User_Authorization>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after ndk decode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    const-string v3, "parsed auth xml file failed!"

    invoke-static {v2, v3, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/purchasesdk/core/l/d;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmm/purchasesdk/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    goto :goto_2

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    invoke-static {v1, p2}, Lmm/purchasesdk/core/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/purchasesdk/core/l/d;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmm/purchasesdk/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    const-string v1, "Auth validate failed! verify auth failed,code=242"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_2

    :cond_3
    iget-wide v4, v6, Lmm/purchasesdk/core/b/a;->c:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v4, v5}, Lmm/purchasesdk/core/b/e;->a(J)V

    invoke-static {v7, v8}, Lmm/purchasesdk/core/b/e;->a(J)V

    cmp-long v1, v7, v4

    if-gez v1, :cond_6

    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lmm/purchasesdk/core/l/d;->T()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lmm/purchasesdk/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-wide v4, v6, Lmm/purchasesdk/core/b/a;->c:J

    iget-wide v7, v6, Lmm/purchasesdk/core/b/a;->b:J

    sub-long/2addr v4, v7

    const-wide/16 v7, 0x2710

    cmp-long v1, v4, v7

    if-lez v1, :cond_7

    move v1, v2

    :goto_4
    iget-wide v2, v6, Lmm/purchasesdk/core/b/a;->c:J

    invoke-static {v2, v3}, Lmm/purchasesdk/core/b/e;->a(J)V

    iget-wide v2, v6, Lmm/purchasesdk/core/b/a;->b:J

    invoke-static {v2, v3}, Lmm/purchasesdk/core/b/e;->a(J)V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lmm/purchasesdk/core/b/a;->b()J

    move-result-wide v4

    invoke-virtual {v6}, Lmm/purchasesdk/core/b/a;->a()J

    move-result-wide v6

    invoke-static {}, Lmm/purchasesdk/core/l/d;->T()Ljava/lang/String;

    move-result-object v9

    move-object v3, p1

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lmm/purchasesdk/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x68

    goto/16 :goto_2

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    move v0, v4

    goto/16 :goto_2
.end method

.method public static a(J)V
    .locals 5

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    sget-object v2, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verificationAuthSign certificate is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "<Signature_content>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "</Signature_content>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "</Signature_content>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verificationAuthSign signContent is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "<SignatureValue>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    const-string v3, "<SignatureValue>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "</SignatureValue>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verificationAuthSign signValue is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x103

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v3, v4, v1, v2}, Lmm/purchasesdk/fingerprint/a;->a(I[B[B[B)I
    :try_end_0
    .catch Lmm/purchasesdk/fingerprint/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    sget-object v2, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verificationAuthSign verifyWithCert result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    const-string v3, "verify failed"

    invoke-static {v2, v3, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sget-object v1, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    const-string v2, "base64 decrypt license file failure"

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "<MM_User_Authorization>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    const-string v1, "</MM_User_Authorization>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/purchasesdk/core/b/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before ndk decode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
