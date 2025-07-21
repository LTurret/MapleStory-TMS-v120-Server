# MapleStory-TMS-v120-Server

這是一個專門用來架設臺灣新楓之谷 1.20 版本的伺服器專案。

[English](./README.md)｜繁體中文

## 開始使用

### 資料庫

1. 建立 `MapleStory` 的資料庫（區分大小寫）。
2. 按照順序執行 `/sql` 資料夾內所有 `.sql` 檔案。

你也可以使用 Docker 來啟動資料庫：

```sh
docker compose up db -d
```

### 伺服器

你可以用三種方式來編譯伺服器：

#### docker

```sh
docker compose up server -d
```

#### make

```sh
make
```

#### 手動編譯

1. 確保已安裝 JDK 1.8

   ```sh
   $ java -version
   openjdk version "1.8.0_452"
   OpenJDK Runtime Environment (build 1.8.0_452-b09)
   OpenJDK 64-Bit Server VM (build 25.452-b09, mixed mode)
   ```

2. 用編輯器打開此專案。

   ```sh
   $ pwd
   /MapleStory-TMS-v120-Server
   ```

3. 建立 `out` 和 `dist` 目錄，資料夾結構應如下所示：

   ```plain
   .
   ├── dist （新建）
   ├── lib
   ├── log
   ├── out  （新建）
   ├── sql
   ├── src
   ├── wz
   ├── docker-compose.yml
   ├── launcher.bat
   ├── launch.sh
   ├── LICENSE-GPL
   ├── LICENSE-MIT
   ├── makefile
   ├── MANIFEST.MF
   ├── README.md
   └── Settings.ini
   ```

4. 執行下列指令來編譯原始碼：

   ```sh
   javac -cp "lib/jar/*" -d out $(find src -name "*.java")
   ```

5. 建立 JAR 檔案（可依需求替換 `TMS120.jar` 和 `MANIFEST.MF`）：

   ```sh
   jar cvfm dist/TMS120.jar MANIFEST.MF -C out .
   ```

## 執行伺服器

使用以下指令啟動伺服器：

```sh
java -Xmx2048m -server -cp "dist/TMS120.jar:lib/jar/*" -Dnet.sf.odinms.wzpath=wz server.Start
```

## 發行

當你建立一個具有主類別的 Java 專案時，IDE 會自動將所有 classpath 上的 JAR 檔案複製到 `/dist/lib` 資料夾，並把它們加入 JAR 檔案的 `MANIFEST.MF` 中的 `Class-Path` 欄位。

若要發佈此專案，請將 `/dist` 資料夾（包含 `.jar`）壓縮為 `.7z` 檔案進行分發。

> [!NOTE]
>
> - 如果 classpath 上有兩個同名的 JAR 檔，只有第一個會被複製到 lib 資料夾。
> - 僅會複製 JAR 檔案；若 classpath 中有其他類型的檔案或資料夾，它們將不會被複製。
> - 如果某個函式庫的 `MANIFEST.MF` 中有設定 `Class-Path` 欄位，其路徑也必須存在於執行時的 classpath 中。
> - 若要在標準 Java 專案中設定主類別，可在 IDE 的專案中右鍵選擇「內容」，然後在「執行」選項中指定主類別。也可以手動在 `MANIFEST.MF` 的 `Main-Class` 欄位中指定。

## 授權條款

本專案採 [GPL 授權](./LICENSE-GPL) 授權釋出。
