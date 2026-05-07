.class final enum Lsafiap/framework/SafFrameworkManager$DownloaderState;
.super Ljava/lang/Enum;
.source "SafFrameworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DownloaderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsafiap/framework/SafFrameworkManager$DownloaderState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWNLOADING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

.field public static final enum DOWNLOAD_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

.field private static final synthetic ENUM$VALUES:[Lsafiap/framework/SafFrameworkManager$DownloaderState;

.field public static final enum INSTALLING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

.field public static final enum INSTALL_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

.field public static final enum PENDING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

.field public static final enum QUERYING:Lsafiap/framework/SafFrameworkManager$DownloaderState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 586
    new-instance v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lsafiap/framework/SafFrameworkManager$DownloaderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;->PENDING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    .line 587
    new-instance v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;

    const-string v1, "QUERYING"

    invoke-direct {v0, v1, v4}, Lsafiap/framework/SafFrameworkManager$DownloaderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;->QUERYING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    .line 588
    new-instance v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lsafiap/framework/SafFrameworkManager$DownloaderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;->DOWNLOADING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    .line 589
    new-instance v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;

    const-string v1, "DOWNLOAD_FINISHED"

    invoke-direct {v0, v1, v6}, Lsafiap/framework/SafFrameworkManager$DownloaderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;->DOWNLOAD_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    .line 590
    new-instance v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;

    const-string v1, "INSTALLING"

    invoke-direct {v0, v1, v7}, Lsafiap/framework/SafFrameworkManager$DownloaderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;->INSTALLING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    .line 591
    new-instance v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;

    const-string v1, "INSTALL_FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsafiap/framework/SafFrameworkManager$DownloaderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;->INSTALL_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    .line 585
    const/4 v0, 0x6

    new-array v0, v0, [Lsafiap/framework/SafFrameworkManager$DownloaderState;

    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->PENDING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    aput-object v1, v0, v3

    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->QUERYING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    aput-object v1, v0, v4

    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->DOWNLOADING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    aput-object v1, v0, v5

    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->DOWNLOAD_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    aput-object v1, v0, v6

    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->INSTALLING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lsafiap/framework/SafFrameworkManager$DownloaderState;->INSTALL_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    aput-object v2, v0, v1

    sput-object v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;->ENUM$VALUES:[Lsafiap/framework/SafFrameworkManager$DownloaderState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsafiap/framework/SafFrameworkManager$DownloaderState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;

    return-object v0
.end method

.method public static values()[Lsafiap/framework/SafFrameworkManager$DownloaderState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;->ENUM$VALUES:[Lsafiap/framework/SafFrameworkManager$DownloaderState;

    array-length v1, v0

    new-array v2, v1, [Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
