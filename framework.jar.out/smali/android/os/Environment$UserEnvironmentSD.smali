.class public Landroid/os/Environment$UserEnvironmentSD;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironmentSD"
.end annotation


# static fields
.field private static EXTERNAL_SD_PATH:Ljava/lang/String;


# instance fields
.field private final mExternalStorage:Ljava/io/File;

.field private final mExternalStorageAndroidData:Ljava/io/File;

.field private final mExternalStorageAndroidMedia:Ljava/io/File;

.field private final mExternalStorageAndroidObb:Ljava/io/File;

.field private final mMediaStorage:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    const-string v0, "/storage/sdcard1"

    sput-object v0, Landroid/os/Environment$UserEnvironmentSD;->EXTERNAL_SD_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 12
    .parameter "userId"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const-string v6, "EXTERNAL_STORAGE"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, rawExternalStorage:Ljava/lang/String;
    const-string v6, "EMULATED_STORAGE_TARGET"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, rawEmulatedStorageTarget:Ljava/lang/String;
    const-string v6, "MEDIA_STORAGE"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, rawMediaStorage:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    const-string v4, "/data/media"

    .line 205
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, rawUserId:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, emulatedBase:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, mediaBase:Ljava/io/File;
    const-string/jumbo v6, "persist.sys.primarysd"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 214
    new-instance v6, Ljava/io/File;

    sget-object v7, Landroid/os/Environment$UserEnvironmentSD;->EXTERNAL_SD_PATH:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorage:Ljava/io/File;

    .line 219
    :goto_0
    new-array v6, v10, [Ljava/lang/String;

    aput-object v5, v6, v9

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, v6}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mMediaStorage:Ljava/io/File;

    .line 238
    .end local v0           #emulatedBase:Ljava/io/File;
    .end local v1           #mediaBase:Ljava/io/File;
    .end local v5           #rawUserId:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorage:Ljava/io/File;

    new-array v7, v11, [Ljava/lang/String;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "obb"

    aput-object v8, v7, v10

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v6, v7}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorageAndroidObb:Ljava/io/File;

    .line 239
    iget-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorage:Ljava/io/File;

    new-array v7, v11, [Ljava/lang/String;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v8, v7, v9

    const-string v8, "data"

    aput-object v8, v7, v10

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v6, v7}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorageAndroidData:Ljava/io/File;

    .line 240
    iget-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorage:Ljava/io/File;

    new-array v7, v11, [Ljava/lang/String;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "media"

    aput-object v8, v7, v10

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v6, v7}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorageAndroidMedia:Ljava/io/File;

    .line 241
    return-void

    .line 216
    .restart local v0       #emulatedBase:Ljava/io/File;
    .restart local v1       #mediaBase:Ljava/io/File;
    .restart local v5       #rawUserId:Ljava/lang/String;
    :cond_1
    new-array v6, v10, [Ljava/lang/String;

    aput-object v5, v6, v9

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, v6}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorage:Ljava/io/File;

    goto :goto_0

    .line 223
    .end local v0           #emulatedBase:Ljava/io/File;
    .end local v1           #mediaBase:Ljava/io/File;
    .end local v5           #rawUserId:Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    const-string v6, "Environment"

    const-string v7, "EXTERNAL_STORAGE undefined; falling back to default"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v3, "/storage/sdcard0"

    .line 229
    :cond_3
    const-string/jumbo v6, "persist.sys.primarysd"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 230
    new-instance v6, Ljava/io/File;

    sget-object v7, Landroid/os/Environment$UserEnvironmentSD;->EXTERNAL_SD_PATH:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorage:Ljava/io/File;

    .line 235
    :goto_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mMediaStorage:Ljava/io/File;

    goto :goto_1

    .line 232
    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorage:Ljava/io/File;

    goto :goto_2
.end method


# virtual methods
.method public getExternalStorageAndroidDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorageAndroidData:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 276
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 260
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 272
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 264
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorageAndroidMedia:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 268
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorageAndroidObb:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorage:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageObbDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorageAndroidObb:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 252
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironmentSD;->mExternalStorage:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Landroid/os/Environment$UserEnvironmentSD;->mMediaStorage:Ljava/io/File;

    return-object v0
.end method