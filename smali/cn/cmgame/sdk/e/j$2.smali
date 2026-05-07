.class Lcn/cmgame/sdk/e/j$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/sdk/e/j;->a(Landroid/content/Context;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic kN:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/sdk/e/j$2;->kN:Landroid/view/View$OnClickListener;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcn/cmgame/sdk/e/j$2;->kN:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcn/cmgame/sdk/e/j$2;->kN:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 324
    :cond_0
    return-void
.end method
