.class public Lsafiap/framework/sdk/util/SAFConstants;
.super Ljava/lang/Object;
.source "SAFConstants.java"


# static fields
.field public static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "safiap.framework"

.field public static final FRAMEWORK_SERVICE:Ljava/lang/String;

.field public static final FRAMEWORK_SIGNATURE_MD5:Ljava/lang/String; = "8ddb342f2da5408402d7568af21e29f9"

.field public static final SAF_COMPONENT_KEY:Ljava/lang/String; = "android.intent.category.SAFIAP.COMPONENT"

.field public static final SDK_PACKAGE_NAME:Ljava/lang/String; = "safiap.framework.sdk"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "ISAFFramework"

    invoke-static {v0}, Lsafiap/framework/sdk/util/SAFConstants;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/util/SAFConstants;->FRAMEWORK_SERVICE:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "clsName"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "safiap.framework.sdk."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
