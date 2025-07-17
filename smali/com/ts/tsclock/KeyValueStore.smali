.class public Lcom/ts/tsclock/KeyValueStore;
.super Ljava/lang/Object;

# instance fields
.field private keyValueMap:Ljava/util/HashMap;

# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/ts/tsclock/KeyValueStore;->loadFromFile(Ljava/lang/String;)V

    return-void
.end method

# private method to load from file
.method private loadFromFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    const/4 v6, 0x2
    const/4 v7, 0x0

    :try_start
    new-instance v0, Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileReader;
    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :goto_1

    const-string v3, ":"
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4

    array-length v5, v4
    if-lt v5, v6, :goto_0

    aget-object v1, v4, v6
    aget-object v3, v4, v7

    iget-object v5, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end
    .catch Ljava/io/IOException; {:try_start .. :try_end} :catch_0

    return-void

    :catch_0
    move-exception v0
    return-void
.end method

# public method to get value
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    iget-object v0, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    return-object v0
.end method

