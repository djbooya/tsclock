.class public Lcom/ts/tsclock/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final DEBUG_MEDIA:Z = true

.field public static final DEBUG_TO_FILE:Z = false

.field public static final MEDIAVERSION:Ljava/lang/String; = "TSv1.0.1_190412_1135"

.field public static OUTPUT_DEBUG:Z = false

.field public static OUTPUT_ERROR:Z = false

.field public static OUTPUT_WARNING:Z = false

.field private static final TAG:Ljava/lang/String; = "TsClock"

.field public static UPDATE_INFO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/ts/tsclock/Debug;->UPDATE_INFO:Ljava/lang/String;

    .line 14
    sput-boolean v1, Lcom/ts/tsclock/Debug;->OUTPUT_DEBUG:Z

    .line 15
    sput-boolean v1, Lcom/ts/tsclock/Debug;->OUTPUT_ERROR:Z

    .line 16
    sput-boolean v1, Lcom/ts/tsclock/Debug;->OUTPUT_WARNING:Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-boolean v0, Lcom/ts/tsclock/Debug;->OUTPUT_DEBUG:Z

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "TsClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-boolean v0, Lcom/ts/tsclock/Debug;->OUTPUT_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/ts/tsclock/Debug;->OUTPUT_ERROR:Z

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    const-string v0, "TsClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-boolean v0, Lcom/ts/tsclock/Debug;->OUTPUT_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/ts/tsclock/Debug;->OUTPUT_ERROR:Z

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    const-string v0, "TsClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-boolean v0, Lcom/ts/tsclock/Debug;->OUTPUT_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/ts/tsclock/Debug;->OUTPUT_WARNING:Z

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    const-string v0, "TsClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    return-void
.end method

.method private static write2LogFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v10, "/debuglog.txt"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v9
    new-instance v4, Ljava/io/File;
    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x1
    new-instance v1, Ljava/io/FileOutputStream;
    invoke-direct {v1, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 34
    .local v1, "out":Ljava/io/FileOutputStream;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 35
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 36
    const-string v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Landroid/text/format/Time;->hour:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Landroid/text/format/Time;->minute:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v2, Landroid/text/format/Time;->second:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "tmp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    const-string v4, "  "

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 40
    const-string v4, "  "

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 42
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 43
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 44
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "time":Landroid/text/format/Time;
    .end local v3    # "tmp":Ljava/lang/String;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

