.class public Lcom/ts/tsclock/TsClockApplication;
.super Landroid/app/Application;
.source "TsClockApplication.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/ts/tsclock/TsClockApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 12
    sput-object p0, Lcom/ts/tsclock/TsClockApplication;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {}, Lcom/ts/tsclock/CrashHandler;->getInstance()Lcom/ts/tsclock/CrashHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/tsclock/CrashHandler;->init(Landroid/content/Context;)V

    .line 14
    return-void
.end method
