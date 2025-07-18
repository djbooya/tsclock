.class public Lcom/ts/tsclock/KeyValueStore;
.super Ljava/lang/Object;

# instance fields
.field private keyValueMap:Ljava/util/HashMap;

# constructor
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/ts/tsclock/KeyValueStore;->loadFromFile(Ljava/lang/String;)V

    return-void
.end method

# private method to load key-value pairs from file
.method private loadFromFile(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileReader;
    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :loop_start
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v1

    if-eqz v1, :loop_end

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-nez v3, :loop_start

    const-string v3, ":"
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v4
    if-eqz v4, :loop_start

    const/4 v4, 0x2
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    move-result-object v5

    array-length v6, v5
    const/4 v7, 0x2
    if-lt v6, v7, :loop_start

    const/4 v6, 0x0
    aget-object v6, v5, v6
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v6

    const/4 v7, 0x1
    aget-object v7, v5, v7
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v7

    iget-object v3, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :loop_start

    :loop_end
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

# public method to get value from key
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0

    check-cast v0, Ljava/lang/String;
    return-object v0
.end method

