.class public abstract Lcn/cmgame/billing/a/b;
.super Lcn/cmgame/billing/a/d;
.source "BitmapRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/cmgame/billing/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method protected a([B)V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/a/b;->a(Landroid/graphics/Bitmap;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v0, "gc_bitmap_decode_error"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/a/b;->m(Ljava/lang/String;)V

    goto :goto_0
.end method
