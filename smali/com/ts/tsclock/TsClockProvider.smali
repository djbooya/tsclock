.class public Lcom/ts/tsclock/TsClockProvider;
.super Landroid/content/ContentProvider;
.source "TsClockProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.ts.tsclock.provider"

.field public static AUTHORITY_URI:Landroid/net/Uri; = null

.field private static MULTI_SCREEN_CONTROL:Ljava/lang/String; = null

.field public static final MULTI_SCREEN_CONTROL_DIR:I = 0x0

.field public static final MULTI_SCREEN_CONTROL_ITEM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TsClockProvider"

.field private static mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private dbHelper:Lcom/ts/tsclock/TsClockHelper;

.field private mIsInTransaction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    const-string v0, "content://com.ts.tsclock.provider/multi_screen_control"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ts/tsclock/TsClockProvider;->AUTHORITY_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "multi_screen_control"

    sput-object v0, Lcom/ts/tsclock/TsClockProvider;->MULTI_SCREEN_CONTROL:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/ts/tsclock/TsClockProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 31
    sget-object v0, Lcom/ts/tsclock/TsClockProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.ts.tsclock.provider"

    const-string v2, "multi_screen_control"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    sget-object v0, Lcom/ts/tsclock/TsClockProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.ts.tsclock.provider"

    const-string v2, "multi_screen_control/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/tsclock/TsClockProvider;->mIsInTransaction:Z

    .line 15
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x0

    .line 139
    iget-object v2, p0, Lcom/ts/tsclock/TsClockProvider;->dbHelper:Lcom/ts/tsclock/TsClockHelper;

    if-nez v2, :cond_0

    .line 140
    const-string v2, "TsClockProvider"

    const-string v3, "dbHelper is null"

    invoke-static {v2, v3}, Lcom/ts/tsclock/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x0

    .line 149
    :goto_0
    return-object v1

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/ts/tsclock/TsClockProvider;->dbHelper:Lcom/ts/tsclock/TsClockHelper;

    invoke-virtual {v2}, Lcom/ts/tsclock/TsClockHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 144
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/tsclock/TsClockProvider;->mIsInTransaction:Z

    .line 147
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 148
    .local v1, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iput-boolean v3, p0, Lcom/ts/tsclock/TsClockProvider;->mIsInTransaction:Z

    .line 152
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 153
    invoke-virtual {p0}, Lcom/ts/tsclock/TsClockProvider;->notifyChange()V

    goto :goto_0

    .line 150
    .end local v1    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v2

    .line 151
    iput-boolean v3, p0, Lcom/ts/tsclock/TsClockProvider;->mIsInTransaction:Z

    .line 152
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 153
    invoke-virtual {p0}, Lcom/ts/tsclock/TsClockProvider;->notifyChange()V

    .line 154
    throw v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 43
    const-string v3, "TsClockProvider"

    const-string v4, "delete"

    invoke-static {v3, v4}, Lcom/ts/tsclock/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v3, p0, Lcom/ts/tsclock/TsClockProvider;->dbHelper:Lcom/ts/tsclock/TsClockHelper;

    invoke-virtual {v3}, Lcom/ts/tsclock/TsClockHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 45
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 46
    .local v2, "deleteMultiScreenControl":I
    sget-object v3, Lcom/ts/tsclock/TsClockProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 59
    :goto_0
    return v2

    .line 48
    :pswitch_0
    sget-object v3, Lcom/ts/tsclock/TsClockProvider;->MULTI_SCREEN_CONTROL:Ljava/lang/String;

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 49
    goto :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    .local v0, "MultiScreenControlId":Ljava/lang/String;
    sget-object v3, Lcom/ts/tsclock/TsClockProvider;->MULTI_SCREEN_CONTROL:Ljava/lang/String;

    const-string v4, "id = ?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 54
    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 64
    sget-object v0, Lcom/ts/tsclock/TsClockProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.com.ts.tsclock.provider.multi_screen_control"

    goto :goto_0

    .line 69
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.com.ts.tsclock.provider.multi_screen_control"

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 79
    const-string v4, "TsClockProvider"

    const-string v5, "insert"

    invoke-static {v4, v5}, Lcom/ts/tsclock/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lcom/ts/tsclock/TsClockProvider;->dbHelper:Lcom/ts/tsclock/TsClockHelper;

    invoke-virtual {v4}, Lcom/ts/tsclock/TsClockHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 82
    .local v1, "uriReturn":Landroid/net/Uri;
    sget-object v4, Lcom/ts/tsclock/TsClockProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 92
    :goto_0
    return-object v1

    .line 85
    :pswitch_0
    sget-object v4, Lcom/ts/tsclock/TsClockProvider;->MULTI_SCREEN_CONTROL:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 86
    .local v2, "newMultiScreenControlId":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://com.ts.tsclock.provider/multi_screen_control/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyChange()V
    .locals 4

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/ts/tsclock/TsClockProvider;->mIsInTransaction:Z

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/ts/tsclock/TsClockProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ts/tsclock/TsClockProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 37
    new-instance v0, Lcom/ts/tsclock/TsClockHelper;

    invoke-virtual {p0}, Lcom/ts/tsclock/TsClockProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "TsClock.db"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ts/tsclock/TsClockHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/ts/tsclock/TsClockProvider;->dbHelper:Lcom/ts/tsclock/TsClockHelper;

    .line 38
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 97
    iget-object v1, p0, Lcom/ts/tsclock/TsClockProvider;->dbHelper:Lcom/ts/tsclock/TsClockHelper;

    invoke-virtual {v1}, Lcom/ts/tsclock/TsClockHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 99
    .local v8, "cursor":Landroid/database/Cursor;
    sget-object v1, Lcom/ts/tsclock/TsClockProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 112
    :goto_0
    return-object v8

    .line 101
    :pswitch_0
    sget-object v1, Lcom/ts/tsclock/TsClockProvider;->MULTI_SCREEN_CONTROL:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 102
    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 106
    .local v9, "id":Ljava/lang/String;
    sget-object v1, Lcom/ts/tsclock/TsClockProvider;->MULTI_SCREEN_CONTROL:Ljava/lang/String;

    const-string v3, "id = ?"

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v9, v4, v2

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 107
    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 117
    iget-object v2, p0, Lcom/ts/tsclock/TsClockProvider;->dbHelper:Lcom/ts/tsclock/TsClockHelper;

    invoke-virtual {v2}, Lcom/ts/tsclock/TsClockHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 118
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 119
    .local v1, "update":I
    sget-object v2, Lcom/ts/tsclock/TsClockProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 131
    :goto_0
    return v1

    .line 121
    :pswitch_0
    sget-object v2, Lcom/ts/tsclock/TsClockProvider;->MULTI_SCREEN_CONTROL:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 122
    goto :goto_0

    .line 125
    :pswitch_1
    sget-object v2, Lcom/ts/tsclock/TsClockProvider;->MULTI_SCREEN_CONTROL:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 126
    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
