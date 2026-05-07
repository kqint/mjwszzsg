.class public Lsafiap/framework/SafFrameworkApplication;
.super Landroid/app/Application;
.source "SafFrameworkApplication.java"


# static fields
.field public static FRAMEWORK_PACKAGE:Ljava/lang/String;

.field public static FRAMEWORK_VERSION:I


# instance fields
.field private logger:Lsafiap/framework/util/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lsafiap/framework/SafFrameworkApplication;->FRAMEWORK_PACKAGE:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    sput v0, Lsafiap/framework/SafFrameworkApplication;->FRAMEWORK_VERSION:I

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkApplication;->logger:Lsafiap/framework/util/MyLogger;

    .line 9
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 17
    iget-object v0, p0, Lsafiap/framework/SafFrameworkApplication;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "onCreate...start"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    const-string v0, "safiap.framework"

    sput-object v0, Lsafiap/framework/SafFrameworkApplication;->FRAMEWORK_PACKAGE:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lsafiap/framework/SafFrameworkApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/sdk/util/PackageUtil;->getMyFrameworkVersionCode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lsafiap/framework/SafFrameworkApplication;->FRAMEWORK_VERSION:I

    .line 23
    iget-object v0, p0, Lsafiap/framework/SafFrameworkApplication;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FRAMEWORK_PACKAGE:("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lsafiap/framework/SafFrameworkApplication;->FRAMEWORK_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and FRAMEWORK_VERSION:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lsafiap/framework/SafFrameworkApplication;->FRAMEWORK_VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 27
    return-void
.end method
