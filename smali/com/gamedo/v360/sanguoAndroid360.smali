.class public Lcom/gamedo/v360/sanguoAndroid360;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "sanguoAndroid360.java"


# static fields
.field public static ARPU:I

.field public static Dshijian:I

.field public static Kwujiang:[I

.field public static Kwujiang2:I

.field public static Kwujiang3:I

.field public static Kwujiang4:I

.field public static Kwujiang5:I

.field public static Kwujiang6:I

.field public static Kwujiang7:I

.field public static Twujiang:I

.field public static Zshijian:I

.field static bid:I

.field public static denglu:I

.field public static guanka:I

.field public static instance:Lcom/gamedo/v360/sanguoAndroid360;

.field public static jifei:I

.field public static jinqian:I

.field static sid:I

.field public static zbflag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 92
    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 183
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->zbflag:I

    .line 184
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->guanka:I

    .line 185
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->jinqian:I

    .line 186
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->denglu:I

    .line 187
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->Twujiang:I

    .line 188
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang:[I

    .line 189
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang2:I

    .line 190
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang3:I

    .line 191
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang4:I

    .line 192
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang5:I

    .line 193
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang6:I

    .line 194
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang7:I

    .line 195
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->Dshijian:I

    .line 196
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->Zshijian:I

    .line 197
    sput v1, Lcom/gamedo/v360/sanguoAndroid360;->jifei:I

    .line 198
    const/4 v0, 0x0

    sput v0, Lcom/gamedo/v360/sanguoAndroid360;->ARPU:I

    .line 64
    return-void

    .line 188
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 71
    sput-object p0, Lcom/gamedo/v360/sanguoAndroid360;->instance:Lcom/gamedo/v360/sanguoAndroid360;

    .line 72
    return-void
.end method

.method public static ARPUBack(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 260
    sput p0, Lcom/gamedo/v360/sanguoAndroid360;->ARPU:I

    .line 261
    return-void
.end method

.method public static Backflag()V
    .locals 11

    .prologue
    .line 264
    invoke-static {}, Lcom/gamedo/v360/SmsSdk;->getInstance()Lcom/gamedo/v360/SmsSdk;

    move-result-object v0

    sget v1, Lcom/gamedo/v360/sanguoAndroid360;->zbflag:I

    sget v2, Lcom/gamedo/v360/sanguoAndroid360;->guanka:I

    sget v3, Lcom/gamedo/v360/sanguoAndroid360;->jinqian:I

    sget v4, Lcom/gamedo/v360/sanguoAndroid360;->denglu:I

    sget v5, Lcom/gamedo/v360/sanguoAndroid360;->Twujiang:I

    sget-object v6, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang:[I

    sget v7, Lcom/gamedo/v360/sanguoAndroid360;->Dshijian:I

    sget v8, Lcom/gamedo/v360/sanguoAndroid360;->Zshijian:I

    sget v9, Lcom/gamedo/v360/sanguoAndroid360;->jifei:I

    sget v10, Lcom/gamedo/v360/sanguoAndroid360;->ARPU:I

    invoke-virtual/range {v0 .. v10}, Lcom/gamedo/v360/SmsSdk;->sendUserData(IIIII[IIIII)V

    .line 265
    return-void
.end method

.method public static DshijianBack(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 248
    sput p0, Lcom/gamedo/v360/sanguoAndroid360;->Dshijian:I

    .line 249
    return-void
.end method

.method public static ExitGame(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 127
    sget-object v0, Lcom/gamedo/v360/sanguoAndroid360;->instance:Lcom/gamedo/v360/sanguoAndroid360;

    new-instance v1, Lcom/gamedo/v360/sanguoAndroid360$1;

    invoke-direct {v1}, Lcom/gamedo/v360/sanguoAndroid360$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/sanguoAndroid360;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public static Kwujiang2(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 222
    sget-object v0, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang:[I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 223
    return-void
.end method

.method public static Kwujiang3(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 226
    sget-object v0, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang:[I

    const/4 v1, 0x1

    aput p0, v0, v1

    .line 227
    return-void
.end method

.method public static Kwujiang4(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 230
    sget-object v0, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang:[I

    const/4 v1, 0x2

    aput p0, v0, v1

    .line 231
    return-void
.end method

.method public static Kwujiang5(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 234
    sget-object v0, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang:[I

    const/4 v1, 0x3

    aput p0, v0, v1

    .line 235
    return-void
.end method

.method public static Kwujiang6(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 238
    sget-object v0, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang:[I

    const/4 v1, 0x4

    aput p0, v0, v1

    .line 239
    return-void
.end method

.method public static Kwujiang7(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 242
    sget-object v0, Lcom/gamedo/v360/sanguoAndroid360;->Kwujiang:[I

    const/4 v1, 0x5

    aput p0, v0, v1

    .line 243
    return-void
.end method

.method public static TwujiangBack(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 217
    sput p0, Lcom/gamedo/v360/sanguoAndroid360;->Twujiang:I

    .line 218
    return-void
.end method

.method public static ZshijianBack(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 252
    sput p0, Lcom/gamedo/v360/sanguoAndroid360;->Zshijian:I

    .line 253
    return-void
.end method

.method public static checkSIM()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, -0x1

    return v0
.end method

.method public static dengluBack(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 213
    sput p0, Lcom/gamedo/v360/sanguoAndroid360;->denglu:I

    .line 214
    return-void
.end method

.method public static getActivity()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/gamedo/v360/sanguoAndroid360;->instance:Lcom/gamedo/v360/sanguoAndroid360;

    return-object v0
.end method

.method public static guankaBack(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 205
    sput p0, Lcom/gamedo/v360/sanguoAndroid360;->guanka:I

    .line 206
    return-void
.end method

.method public static jifei(I)V
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 105
    div-int/lit8 v0, p0, 0x64

    sput v0, Lcom/gamedo/v360/sanguoAndroid360;->bid:I

    .line 106
    rem-int/lit8 v0, p0, 0x64

    sput v0, Lcom/gamedo/v360/sanguoAndroid360;->sid:I

    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bid==="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/gamedo/v360/sanguoAndroid360;->bid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sid==="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/gamedo/v360/sanguoAndroid360;->sid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/gamedo/v360/SmsSdk;->getInstance()Lcom/gamedo/v360/SmsSdk;

    move-result-object v0

    sget v1, Lcom/gamedo/v360/sanguoAndroid360;->bid:I

    sget v2, Lcom/gamedo/v360/sanguoAndroid360;->sid:I

    invoke-virtual {v0, v1, v2}, Lcom/gamedo/v360/SmsSdk;->sendSms(II)V

    .line 122
    return-void
.end method

.method public static jifeiBack(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 256
    sput p0, Lcom/gamedo/v360/sanguoAndroid360;->jifei:I

    .line 257
    return-void
.end method

.method public static jinqianBack(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 209
    sput p0, Lcom/gamedo/v360/sanguoAndroid360;->jinqian:I

    .line 210
    return-void
.end method

.method public static native nativePayResult(I)V
.end method

.method public static native nativeUserBillSwitch(I)V
.end method

.method public static zbBack(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 201
    sput p0, Lcom/gamedo/v360/sanguoAndroid360;->zbflag:I

    .line 202
    return-void
.end method


# virtual methods
.method public dismissProgressDialog()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/gamedo/v360/sanguoAndroid360;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 83
    invoke-static {p0}, Lcom/gamedo/v360/SmsSdk;->InitSmsSdk(Landroid/app/Activity;)Lcom/gamedo/v360/SmsSdk;

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 98
    return-void
.end method
