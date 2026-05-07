.class final Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;
.super Ljava/lang/Object;
.source "AXmlResourceParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NamespaceStack"
.end annotation


# instance fields
.field private m_data:[I

.field private m_dataLength:I

.field private m_depth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    .line 473
    return-void
.end method

.method private ensureDataCapacity(I)V
    .locals 6
    .param p1, "capacity"    # I

    .prologue
    const/4 v5, 0x0

    .line 586
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    array-length v3, v3

    iget v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    sub-int v0, v3, v4

    .line 587
    .local v0, "available":I
    if-le v0, p1, :cond_0

    .line 594
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    array-length v3, v3

    add-int/2addr v3, v0

    mul-int/lit8 v2, v3, 0x2

    .line 591
    .local v2, "newLength":I
    new-array v1, v2, [I

    .line 592
    .local v1, "newData":[I
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    iget v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    iput-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    goto :goto_0
.end method

.method private final find(IZ)I
    .locals 6
    .param p1, "prefixOrUri"    # I
    .param p2, "prefix"    # Z

    .prologue
    const/4 v3, -0x1

    .line 597
    iget v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-nez v4, :cond_1

    .line 617
    :cond_0
    :goto_0
    return v3

    .line 600
    :cond_1
    iget v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v2, v4, -0x1

    .line 601
    .local v2, "offset":I
    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_depth:I

    .local v1, "i":I
    :goto_1
    if-eqz v1, :cond_0

    .line 602
    iget-object v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v0, v4, v2

    .line 603
    .local v0, "count":I
    add-int/lit8 v2, v2, -0x2

    .line 604
    :goto_2
    if-nez v0, :cond_2

    .line 601
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 605
    :cond_2
    if-eqz p2, :cond_3

    .line 606
    iget-object v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_4

    .line 607
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    goto :goto_0

    .line 610
    :cond_3
    iget-object v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_4

    .line 611
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v3, v3, v2

    goto :goto_0

    .line 614
    :cond_4
    add-int/lit8 v2, v2, -0x2

    .line 604
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private final get(IZ)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "prefix"    # Z

    .prologue
    const/4 v3, -0x1

    .line 621
    iget v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-eqz v4, :cond_0

    if-gez p1, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v3

    .line 624
    :cond_1
    const/4 v2, 0x0

    .line 625
    .local v2, "offset":I
    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_depth:I

    .local v1, "i":I
    :goto_1
    if-eqz v1, :cond_0

    .line 626
    iget-object v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v0, v4, v2

    .line 627
    .local v0, "count":I
    if-lt p1, v0, :cond_2

    .line 628
    sub-int/2addr p1, v0

    .line 629
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 625
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 632
    :cond_2
    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 633
    if-nez p2, :cond_3

    .line 634
    add-int/lit8 v2, v2, 0x1

    .line 636
    :cond_3
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v3, v3, v2

    goto :goto_0
.end method


# virtual methods
.method public final decreaseDepth()V
    .locals 4

    .prologue
    .line 572
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-nez v2, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v1, v2, -0x1

    .line 576
    .local v1, "offset":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v0, v2, v1

    .line 577
    .local v0, "count":I
    add-int/lit8 v2, v1, -0x1

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 580
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    .line 582
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_depth:I

    goto :goto_0
.end method

.method public final findPrefix(I)I
    .locals 1
    .param p1, "uri"    # I

    .prologue
    .line 552
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->find(IZ)I

    move-result v0

    return v0
.end method

.method public final getAccumulatedCount(I)I
    .locals 4
    .param p1, "depth"    # I

    .prologue
    .line 494
    iget v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-eqz v3, :cond_0

    if-gez p1, :cond_2

    .line 495
    :cond_0
    const/4 v0, 0x0

    .line 507
    :cond_1
    return v0

    .line 497
    :cond_2
    iget v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_depth:I

    if-le p1, v3, :cond_3

    .line 498
    iget p1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_depth:I

    .line 500
    :cond_3
    const/4 v0, 0x0

    .line 501
    .local v0, "accumulatedCount":I
    const/4 v2, 0x0

    .line 502
    .local v2, "offset":I
    :goto_0
    if-eqz p1, :cond_1

    .line 503
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v1, v3, v2

    .line 504
    .local v1, "count":I
    add-int/2addr v0, v1

    .line 505
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 502
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public final getCurrentCount()I
    .locals 2

    .prologue
    .line 486
    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-nez v1, :cond_0

    .line 487
    const/4 v1, 0x0

    .line 490
    :goto_0
    return v1

    .line 489
    :cond_0
    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v0, v1, -0x1

    .line 490
    .local v0, "offset":I
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public final getDepth()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_depth:I

    return v0
.end method

.method public final getPrefix(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 544
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->get(IZ)I

    move-result v0

    return v0
.end method

.method public final getUri(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->get(IZ)I

    move-result v0

    return v0
.end method

.method public final increaseDepth()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 564
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->ensureDataCapacity(I)V

    .line 565
    iget v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    .line 566
    .local v0, "offset":I
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput v3, v1, v0

    .line 567
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v2, v0, 0x1

    aput v3, v1, v2

    .line 568
    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    .line 569
    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_depth:I

    .line 570
    return-void
.end method

.method public final pop()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 525
    iget v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-nez v3, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v2

    .line 528
    :cond_1
    iget v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v1, v3, -0x1

    .line 529
    .local v1, "offset":I
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v0, v3, v1

    .line 530
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 533
    add-int/lit8 v0, v0, -0x1

    .line 534
    add-int/lit8 v1, v1, -0x2

    .line 535
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput v0, v2, v1

    .line 536
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    .line 537
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput v0, v2, v1

    .line 538
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    .line 540
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final push(II)V
    .locals 5
    .param p1, "prefix"    # I
    .param p2, "uri"    # I

    .prologue
    .line 511
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_depth:I

    if-nez v2, :cond_0

    .line 512
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->increaseDepth()V

    .line 514
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->ensureDataCapacity(I)V

    .line 515
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v1, v2, -0x1

    .line 516
    .local v1, "offset":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v0, v2, v1

    .line 517
    .local v0, "count":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x1

    aput v4, v2, v3

    .line 518
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput p1, v2, v1

    .line 519
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v3, v1, 0x1

    aput p2, v2, v3

    .line 520
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v0, 0x1

    aput v4, v2, v3

    .line 521
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    .line 522
    return-void
.end method

.method public final reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 476
    iput v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    .line 478
    iput v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->m_depth:I

    .line 479
    return-void
.end method
