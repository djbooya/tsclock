.class public final Lcom/ts/tsclock/TsPrefrence;
.super Ljava/lang/Object;
.source "TsPrefrence.java"


# static fields
.field private static final LOGO_IMG:Ljava/lang/String; = "LOGO_IMG"

.field private static final PREFERENCES:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/ts/tsclock/TsClockApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15
    sput-object v0, Lcom/ts/tsclock/TsPrefrence;->PREFERENCES:Landroid/content/SharedPreferences;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppPreference()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/ts/tsclock/TsPrefrence;->PREFERENCES:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getLogoImg()I
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcom/ts/tsclock/TsPrefrence;->getAppPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LOGO_IMG"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setLogoImg(I)V
    .locals 2
    .param p0, "logoImg"    # I

    .prologue
    .line 24
    invoke-static {}, Lcom/ts/tsclock/TsPrefrence;->getAppPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOGO_IMG"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
.end method
