.class public Lcom/ts/tsclock/KeyValueStore;
.super Ljava/lang/Object;

# instance fields
.field private keyValueMap:Ljava/util/HashMap;

# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ts/tsclock/KeyValueStore;->loadFromFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
:catch_0
    move-exception v0

    # btn1pkg -> com.ts.MainUI
    iget-object v1, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    const-string v2, "btn1pkg"
    const-string v3, "com.ts.MainUI"
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # btn1class -> com.ts.main.navi.NaviMainActivity
    iget-object v4, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    const-string v5, "btn1class"
    const-string v6, "com.ts.main.navi.NaviMainActivity"
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # btn2pkg -> com.ts.dvdplayer
    iget-object v1, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    const-string v2, "btn2pkg"
    const-string v3, "com.ts.dvdplayer"
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # btn2class -> com.ts.dvdplayer.SDActivity
    iget-object v4, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    const-string v5, "btn2class"
    const-string v6, "com.ts.dvdplayer.SDActivity"
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # btn3pkg -> com.ts.dvdplayer
    iget-object v1, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    const-string v2, "btn3pkg"
    const-string v3, "com.ts.dvdplayer"
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # btn3class -> com.ts.dvdplayer.USBActivity
    iget-object v4, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    const-string v5, "btn3class"
    const-string v6, "com.ts.dvdplayer.USBActivity"
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

.end method

.method private loadFromFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;
    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, "reader":Ljava/io/BufferedReader;

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-nez v4, :goto_0

    const-string v4, ":"
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v4
    if-eqz v4, :goto_0

    const-string v4, ":"
    const/4 v5, 0x2
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    move-result-object v6

    array-length v4, v6
    const/4 v5, 0x2
    if-lt v4, v5, :goto_0

    const/4 v5, 0x0
    aget-object v1, v6, v5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2

    const/4 v5, 0x1
    aget-object v3, v6, v5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v4

    iget-object v5, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    iget-object v0, p0, Lcom/ts/tsclock/KeyValueStore;->keyValueMap:Ljava/util/HashMap;
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0

    check-cast v0, Ljava/lang/String;
    return-object v0
.end method

