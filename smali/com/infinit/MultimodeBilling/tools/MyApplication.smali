.class public Lcom/infinit/MultimodeBilling/tools/MyApplication;
.super Landroid/app/Application;


# static fields
.field public static final ALI_PAY:Ljava/lang/String; = "\u652f\u4ed8\u5b9d\u652f\u4ed8"

.field public static final CANCEL_PAY:Ljava/lang/String; = "isCancel"

.field public static final INTEGRATION_PAY:Ljava/lang/String; = "\u79ef\u5206\u652f\u4ed8"

.field public static final PAY_CANCEL_ACTION:Ljava/lang/String; = "com.infinit.multimodebilling.paycancel"

.field public static final PAY_TITLE:Ljava/lang/String; = "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

.field public static final REQUEST_CHECK_ERROR:Ljava/lang/String; = "com.infinit.multimodebilling.checkerror"

.field public static final REQUEST_ERRORMSG:Ljava/lang/String; = "errorMsg"

.field public static final RESULT_FAILED:Ljava/lang/String; = "failed"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "success"

.field public static final RESULT_UPBRANCES:Ljava/lang/String; = "com.infinit.multimodebilling.upbrances"

.field public static final SHARED_KEY:Ljava/lang/String; = "isBuyed"

.field public static final SHARED_NAME:Ljava/lang/String; = "MultiMode"

.field public static final SMS_ACTION:Ljava/lang/String; = "com.infinit.multimodebilling.sms"

.field public static final SMS_PHONE:Ljava/lang/String; = "10655198000"

.field public static final SMS_RECEIVE_ACTION:Ljava/lang/String; = "com.infinit.multimodebilling.smsreceive"

.field public static final UPBRACES_MSG:Ljava/lang/String; = "upbrances"

.field public static final VAC_PAY:Ljava/lang/String; = "VAC\u652f\u4ed8"

.field public static final WO_PAY:Ljava/lang/String; = "\u6c83\u652f\u4ed8\u652f\u4ed8"

.field private static _$1:Lcom/infinit/MultimodeBilling/tools/MyApplication; = null

.field public static final debug:Z = true

.field public static final version:Ljava/lang/String; = "1.0.5"

.field public static final versionCode:Ljava/lang/String; = "105"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.5"

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/infinit/MultimodeBilling/tools/MyApplication;->_$1:Lcom/infinit/MultimodeBilling/tools/MyApplication;

    return-void
.end method
