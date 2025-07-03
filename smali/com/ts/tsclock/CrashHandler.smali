.class public Lcom/ts/tsclock/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final ACTION_ERROR:Ljava/lang/String; = "com.launcher.error"

.field static final Crash_PATH:Ljava/lang/String; = "/mnt/sdcard/TsRearControl/TsCrash/"

.field private static INSTANCE:Lcom/ts/tsclock/CrashHandler;


# instance fields
.field private formatter:Ljava/text/DateFormat;

.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ts/tsclock/CrashHandler;->formatter:Ljava/text/DateFormat;

    .line 31
    return-void
.end method

.method private getCrashReport(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/ts/tsclock/CrashHandler;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 157
    .local v3, "pinfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v1, "exceptionStr":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "packageName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " Exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 162
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_0

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 163
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getErrorStr(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/ts/tsclock/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    if-nez p1, :cond_0

    .line 108
    const-string v4, "Throwable == null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 113
    .local v3, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 115
    .local v2, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 118
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_1
    if-nez v1, :cond_1

    .line 122
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 120
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1
.end method

.method public static getInstance()Lcom/ts/tsclock/CrashHandler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/ts/tsclock/CrashHandler;->INSTANCE:Lcom/ts/tsclock/CrashHandler;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/ts/tsclock/CrashHandler;

    invoke-direct {v0}, Lcom/ts/tsclock/CrashHandler;-><init>()V

    sput-object v0, Lcom/ts/tsclock/CrashHandler;->INSTANCE:Lcom/ts/tsclock/CrashHandler;

    .line 37
    :cond_0
    sget-object v0, Lcom/ts/tsclock/CrashHandler;->INSTANCE:Lcom/ts/tsclock/CrashHandler;

    return-object v0
.end method

.method private getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :goto_0
    if-nez v1, :cond_0

    .line 176
    new-instance v1, Landroid/content/pm/PackageInfo;

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 177
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method private sendAppCrashReport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "crashReport"    # Ljava/lang/String;

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 79
    .local v6, "timestamp":J
    iget-object v5, p0, Lcom/ts/tsclock/CrashHandler;->formatter:Ljava/text/DateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "time":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "crash-"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".Debug"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v5, "/mnt/sdcard/TsRearControl/TsCrash/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 86
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "/mnt/sdcard/TsRearControl/TsCrash/"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 89
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    const-string v5, "CrashHandler"

    invoke-static {v5, p2}, Lcom/ts/tsclock/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private sendErrCrash(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/ts/tsclock/CrashHandler;->getErrorStr(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "errorStr":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.launcher.error"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v2, "com.forfan.xfapp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v2, p0, Lcom/ts/tsclock/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    iget-object v2, p0, Lcom/ts/tsclock/CrashHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/ts/tsclock/CrashHandler;->sendAppCrashReport(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 139
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/tsclock/CrashHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 140
    :cond_0
    const/4 v1, 0x0

    .line 151
    :goto_0
    return v1

    .line 144
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ts/tsclock/CrashHandler;->sendErrCrash(Ljava/lang/Throwable;)V

    .line 146
    const-wide/16 v2, 0x5dc

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string v0, "CrashHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ts/tsclock/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/ts/tsclock/CrashHandler;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/tsclock/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 47
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 48
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    const-string v1, "CrashHandler"

    const-string v2, "uncaughtException"

    invoke-static {v1, v2}, Lcom/ts/tsclock/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/ts/tsclock/CrashHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ts/tsclock/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/ts/tsclock/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 70
    :goto_0
    return-void

    .line 62
    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
