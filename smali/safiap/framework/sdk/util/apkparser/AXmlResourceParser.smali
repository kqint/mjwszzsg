.class public Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;
.super Ljava/lang/Object;
.source "AXmlResourceParser.java"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_IX_NAME:I = 0x1

.field private static final ATTRIBUTE_IX_NAMESPACE_URI:I = 0x0

.field private static final ATTRIBUTE_IX_VALUE_DATA:I = 0x4

.field private static final ATTRIBUTE_IX_VALUE_STRING:I = 0x2

.field private static final ATTRIBUTE_IX_VALUE_TYPE:I = 0x3

.field private static final ATTRIBUTE_LENGHT:I = 0x5

.field private static final CHUNK_AXML_FILE:I = 0x80003

.field private static final CHUNK_RESOURCEIDS:I = 0x80180

.field private static final CHUNK_XML_END_NAMESPACE:I = 0x100101

.field private static final CHUNK_XML_END_TAG:I = 0x100103

.field private static final CHUNK_XML_FIRST:I = 0x100100

.field private static final CHUNK_XML_LAST:I = 0x100104

.field private static final CHUNK_XML_START_NAMESPACE:I = 0x100100

.field private static final CHUNK_XML_START_TAG:I = 0x100102

.field private static final CHUNK_XML_TEXT:I = 0x100104

.field private static final E_NOT_SUPPORTED:Ljava/lang/String; = "Method is not supported."


# instance fields
.field private m_attributes:[I

.field private m_classAttribute:I

.field private m_decreaseDepth:Z

.field private m_event:I

.field private m_idAttribute:I

.field private m_lineNumber:I

.field private m_name:I

.field private m_namespaceUri:I

.field private m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

.field private m_operational:Z

.field private m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

.field private m_resourceIDs:[I

.field private m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

.field private m_styleAttribute:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_operational:Z

    .line 863
    new-instance v0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-direct {v0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;-><init>()V

    iput-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    .line 45
    invoke-direct {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->resetEventInfo()V

    .line 46
    return-void
.end method

.method private final doNext()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v14, 0xffff

    const/4 v13, 0x3

    const/4 v12, 0x0

    const v11, 0x100100

    const/4 v10, 0x1

    .line 734
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    if-nez v8, :cond_0

    .line 735
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    const v9, 0x80003

    invoke-static {v8, v9}, Lsafiap/framework/sdk/util/apkparser/ChunkUtil;->readCheckType(Lsafiap/framework/sdk/util/apkparser/IntReader;I)V

    .line 736
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->skipInt()V

    .line 737
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-static {v8}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->read(Lsafiap/framework/sdk/util/apkparser/IntReader;)Lsafiap/framework/sdk/util/apkparser/StringBlock;

    move-result-object v8

    iput-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    .line 738
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->increaseDepth()V

    .line 739
    iput-boolean v10, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_operational:Z

    .line 742
    :cond_0
    iget v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    if-ne v8, v10, :cond_1

    .line 849
    :goto_0
    return-void

    .line 746
    :cond_1
    iget v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    .line 747
    .local v3, "event":I
    invoke-direct {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->resetEventInfo()V

    .line 750
    :cond_2
    :goto_1
    iget-boolean v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_decreaseDepth:Z

    if-eqz v8, :cond_3

    .line 751
    iput-boolean v12, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_decreaseDepth:Z

    .line 752
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->decreaseDepth()V

    .line 756
    :cond_3
    if-ne v3, v13, :cond_4

    .line 757
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->getDepth()I

    move-result v8

    if-ne v8, v10, :cond_4

    .line 758
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->getCurrentCount()I

    move-result v8

    if-nez v8, :cond_4

    .line 760
    iput v10, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    goto :goto_0

    .line 765
    :cond_4
    if-nez v3, :cond_6

    .line 767
    const v2, 0x100102

    .line 772
    .local v2, "chunkType":I
    :goto_2
    const v8, 0x80180

    if-ne v2, v8, :cond_8

    .line 773
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v1

    .line 774
    .local v1, "chunkSize":I
    const/16 v8, 0x8

    if-lt v1, v8, :cond_5

    rem-int/lit8 v8, v1, 0x4

    if-eqz v8, :cond_7

    .line 775
    :cond_5
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid resource ids size ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 769
    .end local v1    # "chunkSize":I
    .end local v2    # "chunkType":I
    :cond_6
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v2

    .restart local v2    # "chunkType":I
    goto :goto_2

    .line 777
    .restart local v1    # "chunkSize":I
    :cond_7
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    div-int/lit8 v9, v1, 0x4

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v8, v9}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_resourceIDs:[I

    goto :goto_1

    .line 781
    .end local v1    # "chunkSize":I
    :cond_8
    if-lt v2, v11, :cond_9

    const v8, 0x100104

    if-le v2, v8, :cond_a

    .line 782
    :cond_9
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid chunk type ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 786
    :cond_a
    const v8, 0x100102

    if-ne v2, v8, :cond_b

    const/4 v8, -0x1

    if-ne v3, v8, :cond_b

    .line 787
    iput v12, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    goto/16 :goto_0

    .line 792
    :cond_b
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->skipInt()V

    .line 793
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v5

    .line 794
    .local v5, "lineNumber":I
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->skipInt()V

    .line 796
    if-eq v2, v11, :cond_c

    .line 797
    const v8, 0x100101

    if-ne v2, v8, :cond_e

    .line 799
    :cond_c
    if-ne v2, v11, :cond_d

    .line 800
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v6

    .line 801
    .local v6, "prefix":I
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v7

    .line 802
    .local v7, "uri":I
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v8, v6, v7}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->push(II)V

    goto/16 :goto_1

    .line 804
    .end local v6    # "prefix":I
    .end local v7    # "uri":I
    :cond_d
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->skipInt()V

    .line 805
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->skipInt()V

    .line 806
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->pop()Z

    goto/16 :goto_1

    .line 811
    :cond_e
    iput v5, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_lineNumber:I

    .line 813
    const v8, 0x100102

    if-ne v2, v8, :cond_10

    .line 814
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v8

    iput v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaceUri:I

    .line 815
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v8

    iput v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_name:I

    .line 816
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->skipInt()V

    .line 817
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v0

    .line 818
    .local v0, "attributeCount":I
    ushr-int/lit8 v8, v0, 0x10

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_idAttribute:I

    .line 819
    and-int/2addr v0, v14

    .line 820
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v8

    iput v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_classAttribute:I

    .line 821
    iget v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_classAttribute:I

    ushr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_styleAttribute:I

    .line 822
    iget v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_classAttribute:I

    and-int/2addr v8, v14

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_classAttribute:I

    .line 823
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    mul-int/lit8 v9, v0, 0x5

    invoke-virtual {v8, v9}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    .line 824
    const/4 v4, 0x3

    .local v4, "i":I
    :goto_3
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    array-length v8, v8

    if-lt v4, v8, :cond_f

    .line 828
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->increaseDepth()V

    .line 829
    const/4 v8, 0x2

    iput v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    goto/16 :goto_0

    .line 825
    :cond_f
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    iget-object v9, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    aget v9, v9, v4

    ushr-int/lit8 v9, v9, 0x18

    aput v9, v8, v4

    .line 826
    add-int/lit8 v4, v4, 0x5

    goto :goto_3

    .line 833
    .end local v0    # "attributeCount":I
    .end local v4    # "i":I
    :cond_10
    const v8, 0x100103

    if-ne v2, v8, :cond_11

    .line 834
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v8

    iput v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaceUri:I

    .line 835
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v8

    iput v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_name:I

    .line 836
    iput v13, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    .line 837
    iput-boolean v10, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_decreaseDepth:Z

    goto/16 :goto_0

    .line 841
    :cond_11
    const v8, 0x100104

    if-ne v2, v8, :cond_2

    .line 842
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v8

    iput v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_name:I

    .line 843
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->skipInt()V

    .line 844
    iget-object v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v8}, Lsafiap/framework/sdk/util/apkparser/IntReader;->skipInt()V

    .line 845
    const/4 v8, 0x4

    iput v8, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    goto/16 :goto_0
.end method

.method private final findAttribute(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 701
    iget-object v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 718
    :cond_0
    :goto_0
    return v3

    .line 704
    :cond_1
    iget-object v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-virtual {v4, p2}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->find(Ljava/lang/String;)I

    move-result v0

    .line 705
    .local v0, "name":I
    if-eq v0, v3, :cond_0

    .line 708
    if-eqz p1, :cond_3

    .line 709
    iget-object v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-virtual {v4, p1}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->find(Ljava/lang/String;)I

    move-result v2

    .line 711
    .local v2, "uri":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "o":I
    :goto_2
    iget-object v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    array-length v4, v4

    if-eq v1, v4, :cond_0

    .line 712
    iget-object v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    if-ne v0, v4, :cond_4

    .line 713
    if-eq v2, v3, :cond_2

    iget-object v4, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v5, v1, 0x0

    aget v4, v4, v5

    if-ne v2, v4, :cond_4

    .line 715
    :cond_2
    div-int/lit8 v3, v1, 0x5

    goto :goto_0

    .end local v1    # "o":I
    .end local v2    # "uri":I
    :cond_3
    move v2, v3

    .line 710
    goto :goto_1

    .line 711
    .restart local v1    # "o":I
    .restart local v2    # "uri":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private final getAttributeOffset(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 690
    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 691
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Current event is not START_TAG."

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_0
    mul-int/lit8 v0, p1, 0x5

    .line 694
    .local v0, "offset":I
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 695
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid attribute index ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 697
    :cond_1
    return v0
.end method

.method private final resetEventInfo()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 722
    iput v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    .line 723
    iput v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_lineNumber:I

    .line 724
    iput v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_name:I

    .line 725
    iput v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaceUri:I

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    .line 727
    iput v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_idAttribute:I

    .line 728
    iput v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_classAttribute:I

    .line 729
    iput v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_styleAttribute:I

    .line 730
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-boolean v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_operational:Z

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_operational:Z

    .line 60
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    invoke-virtual {v0}, Lsafiap/framework/sdk/util/apkparser/IntReader;->close()V

    .line 61
    iput-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    .line 62
    iput-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    .line 63
    iput-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_resourceIDs:[I

    .line 64
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->reset()V

    .line 65
    invoke-direct {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->resetEventInfo()V

    goto :goto_0
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeBooleanValue(IZ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeIntValue(II)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 349
    .end local p3    # "defaultValue":Z
    :goto_0
    return p3

    .restart local p3    # "defaultValue":Z
    :cond_0
    invoke-virtual {p0, v0, p3}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result p3

    goto :goto_0
.end method

.method public getAttributeCount()I
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 234
    const/4 v0, -0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 5
    .param p1, "index"    # I
    .param p2, "defaultValue"    # F

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    .line 304
    .local v0, "offset":I
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v4, v0, 0x3

    aget v2, v3, v4

    .line 305
    .local v2, "valueType":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 306
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v4, v0, 0x4

    aget v1, v3, v4

    .line 307
    .local v1, "valueData":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 309
    .end local v1    # "valueData":I
    .end local p2    # "defaultValue":F
    :cond_0
    return p2
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 354
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 357
    .end local p3    # "defaultValue":F
    :goto_0
    return p3

    .restart local p3    # "defaultValue":F
    :cond_0
    invoke-virtual {p0, v0, p3}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeFloatValue(IF)F

    move-result p3

    goto :goto_0
.end method

.method public getAttributeIntValue(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    .line 314
    .local v0, "offset":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v0, 0x3

    aget v1, v2, v3

    .line 315
    .local v1, "valueType":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 316
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 318
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v0, 0x4

    aget p2, v2, v3

    .line 320
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 361
    invoke-direct {p0, p1, p2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 362
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 365
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_0
    invoke-virtual {p0, v0, p3}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeIntValue(II)I

    move-result p3

    goto :goto_0
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v1

    .line 260
    .local v1, "offset":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v1, 0x1

    aget v0, v2, v3

    .line 261
    .local v0, "name":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 262
    const-string v2, ""

    .line 264
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-virtual {v2, v0}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getAttributeNameResource(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v1

    .line 269
    .local v1, "offset":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v1, 0x1

    aget v0, v2, v3

    .line 270
    .local v0, "name":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_resourceIDs:[I

    if-eqz v2, :cond_0

    .line 271
    if-ltz v0, :cond_0

    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_resourceIDs:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 273
    :cond_0
    const/4 v2, 0x0

    .line 275
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_resourceIDs:[I

    aget v2, v2, v0

    goto :goto_0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v1

    .line 241
    .local v1, "offset":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v1, 0x0

    aget v0, v2, v3

    .line 242
    .local v0, "namespace":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 243
    const-string v2, ""

    .line 245
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-virtual {v2, v0}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    .line 250
    .local v0, "offset":I
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v4, v0, 0x0

    aget v2, v3, v4

    .line 251
    .local v2, "uri":I
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v3, v2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->findPrefix(I)I

    move-result v1

    .line 252
    .local v1, "prefix":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 253
    const-string v3, ""

    .line 255
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-virtual {v3, v1}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getAttributeResourceValue(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    .line 329
    .local v0, "offset":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v0, 0x3

    aget v1, v2, v3

    .line 330
    .local v1, "valueType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 331
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v0, 0x4

    aget p2, v2, v3

    .line 333
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 377
    invoke-direct {p0, p1, p2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 378
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 381
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_0
    invoke-virtual {p0, v0, p3}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeResourceValue(II)I

    move-result p3

    goto :goto_0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 395
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 324
    invoke-virtual {p0, p1, p2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeIntValue(II)I

    move-result v0

    return v0
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 370
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 373
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_0
    invoke-virtual {p0, v0, p3}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result p3

    goto :goto_0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    .line 290
    .local v0, "offset":I
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v4, v0, 0x3

    aget v2, v3, v4

    .line 291
    .local v2, "valueType":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 292
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v4, v0, 0x2

    aget v1, v3, v4

    .line 293
    .local v1, "valueString":I
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-virtual {v3, v1}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 295
    .end local v1    # "valueString":I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 339
    const/4 v1, 0x0

    .line 341
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributeValueData(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    .line 285
    .local v0, "offset":I
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v2, v0, 0x4

    aget v1, v1, v2

    return v1
.end method

.method public getAttributeValueType(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    .line 280
    .local v0, "offset":I
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    return v1
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_classAttribute:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 196
    const/4 v2, 0x0

    .line 200
    :goto_0
    return-object v2

    .line 198
    :cond_0
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_classAttribute:I

    invoke-direct {p0, v2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    .line 199
    .local v0, "offset":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v0, 0x2

    aget v1, v2, v3

    .line 200
    .local v1, "value":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-virtual {v2, v1}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 416
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 132
    iget v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 4

    .prologue
    .line 204
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_idAttribute:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 205
    const/4 v2, 0x0

    .line 209
    :goto_0
    return-object v2

    .line 207
    :cond_0
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_idAttribute:I

    invoke-direct {p0, v2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    .line 208
    .local v0, "offset":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v0, 0x2

    aget v1, v2, v3

    .line 209
    .local v1, "value":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-virtual {v2, v1}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 4
    .param p1, "defaultValue"    # I

    .prologue
    .line 213
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_idAttribute:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 221
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .line 216
    .restart local p1    # "defaultValue":I
    :cond_1
    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_idAttribute:I

    invoke-direct {p0, v2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    .line 217
    .local v0, "offset":I
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v0, 0x3

    aget v1, v2, v3

    .line 218
    .local v1, "valueType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 221
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v0, 0x4

    aget p1, v2, v3

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_lineNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_name:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_name:I

    invoke-virtual {v0, v1}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaceUri:I

    invoke-virtual {v0, v1}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 432
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v0, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->getAccumulatedCount(I)I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v1, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->getPrefix(I)I

    move-result v0

    .line 184
    .local v0, "prefix":I
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-virtual {v1, v0}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v1, p1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->getUri(I)I

    move-result v0

    .line 189
    .local v0, "uri":I
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-virtual {v1, v0}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XML line #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaces:Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;

    iget v2, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_namespaceUri:I

    invoke-virtual {v1, v2}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser$NamespaceStack;->findPrefix(I)I

    move-result v0

    .line 171
    .local v0, "prefix":I
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-virtual {v1, v0}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method final getStrings()Lsafiap/framework/sdk/util/apkparser/StringBlock;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 3

    .prologue
    .line 225
    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_styleAttribute:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 226
    const/4 v1, 0x0

    .line 229
    :goto_0
    return v1

    .line 228
    :cond_0
    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_styleAttribute:I

    invoke-direct {p0, v1}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    .line 229
    .local v0, "offset":I
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v2, v0, 0x4

    aget v1, v1, v2

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_name:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_strings:Lsafiap/framework/sdk/util/apkparser/StringBlock;

    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_name:I

    invoke-virtual {v0, v1}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextCharacters([I)[C
    .locals 5
    .param p1, "holderForStartAndLength"    # [I

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    .line 158
    :cond_0
    aput v4, p1, v4

    .line 159
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    aput v3, p1, v2

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [C

    .line 161
    .local v0, "chars":[C
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Parser is not opened."

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 75
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->doNext()V

    .line 76
    iget v1, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_event:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->close()V

    .line 80
    throw v0
.end method

.method public nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->next()I

    move-result v0

    .line 90
    .local v0, "eventType":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->next()I

    move-result v0

    .line 93
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 94
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Expected start or end tag."

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :cond_1
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 100
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 101
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Parser must be on START_TAG to read next text."

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 103
    :cond_0
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->next()I

    move-result v0

    .line 104
    .local v0, "eventType":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->next()I

    move-result v0

    .line 107
    if-eq v0, v5, :cond_2

    .line 108
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Event TEXT must be immediately followed by END_TAG."

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 111
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    if-ne v0, v5, :cond_3

    .line 112
    const-string v1, ""

    :cond_2
    return-object v1

    .line 114
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Parser must be on START_TAG or TEXT to read text."

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->next()I

    move-result v0

    return v0
.end method

.method public open(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 49
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->close()V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Lsafiap/framework/sdk/util/apkparser/IntReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsafiap/framework/sdk/util/apkparser/IntReader;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->m_reader:Lsafiap/framework/sdk/util/apkparser/IntReader;

    .line 53
    :cond_0
    return-void
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 120
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lsafiap/framework/sdk/util/apkparser/AXmlResourceParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 125
    :cond_2
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 439
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
