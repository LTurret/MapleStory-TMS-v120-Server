# MapleStory-TMS-v120-Server

A server dedicated to hosting the Taiwan MapleStory version 1.20 Server.

## TODO

Future work will be tracked and documented in the issues tab.

- [x] Clean up and reconstruct project.
- [x] SQL refactors.
- [x] Build validation.
- [x] Build information.
- [x] License validation.
- [ ] Move all author mention in `/scipts/*.js` to `README.md`.

## Roadmap

### Server

- [x] Docker hosting

### Client

- [ ] Localization
- [ ] Script Patch
- [ ] Client updates

### Game Overhaul

- [ ] Cash shop remove duplicates
- [ ] Drop rates adjustment for single mob
- [ ] Party quests
- [ ] Class skills improvement

## Build

### Database

1. Create new database named `MapleStory` (case-sensitive).
2. Follow the order and run all `.sql` inside `/sql`.

Alternatively, you can hosting the database using docker:

```sh
sudo docker compose up -d
```

### Compiling

There are three approaches for compiling the server.

#### make

```sh
make
```

> You might see the same result as follow:
>
> ```sh
> $ make
> jar cvfm dist/TMS120.jar MANIFEST.MF -C out .
> ...
> Build complete: dist/TMS120.jar
> ```

#### Editor

> [!IMPORTANT]
>
> Current solution are test and documented based on a linux pc (I use arch, btw), open issue if you encounter any issue with Windows.

1. Make sure you have JDK 1.8 installed

   ```sh
   $ java -version
   openjdk version "1.8.0_452"
   OpenJDK Runtime Environment (build 1.8.0_452-b09)
   OpenJDK 64-Bit Server VM (build 25.452-b09, mixed mode)
   ```

2. Open the repository in editor

   ```sh
   $ pwd
   /home/lturret/gits/maple
   ```

3. Create `out` and `dist` directory, and your structure should look like this:

   ```plain
   .
   ├── dist  (new created)
   ├── lib
   ├── log
   ├── out   (new created)
   ├── sql
   ├── src
   ├── wz
   ├── docker-compose.yml
   ├── Launcher.bat
   ├── LICENSE-GPL
   ├── LICENSE-MIT
   ├── makefile
   ├── MANIFEST.MF
   ├── README.md
   └── Settings.ini
   ```

4. To compiling the source, run the following command:

   ```sh
   javac -cp "lib/jar/*" -d out $(find src -name "*.java")
   ```

5. To create the JAR file (replace `TMS120.jar` and `MANIFEST.MF` as needed), use following command:

   ```sh
   jar cvfm dist/TMS120.jar MANIFEST.MF -C out .
   ```

#### IntelliJ

1. Clone this repository and then open in IDE
2. Open "File" > "Propject Structure" and follow setting under this section
   1. Project
      1. Project SDK: `corretto-1.8`
      2. Language Level: `SDK default`
      3. Compiler Output: `/MapleStory TMS v120 old/out`
   2. Libraries
      1. New Module
      2. Add all .jar listed in `lib/jar`

WIP...

### Run

To run the server from command line, enter following command:

```sh
java -Xmx2048m -server -cp "dist/TMS120.jar:lib/jar/*" -Dnet.sf.odinms.wzpath=wz server.Start
```

### Distribution

When you build an Java application project that has a main class, the IDE automatically copies all of the JAR files on the projects classpath to your projects dist/lib folder. The IDE also adds each of the JAR files to the Class-Path element in the application JAR files manifest file (MANIFEST.MF).

To distribute this project, compress up the `/dist` (including the `.jar`) and distribute the `.7z` file.

> [!NOTE]
>
> - If two JAR files on the project classpath have the same name, only the first JAR file is copied to the lib folder.
> - Only JAR files are copied to the lib folder. If the classpath contains other types of files or folders, these files (folders) are not copied.
> - If a library on the projects classpath also has a Class-Path element specified in the manifest,the content of the Class-Path element has to be on the projects runtime path.
> - To set a main class in a standard Java project, right-click the project node in the Projects window and choose Properties. Then click Run and enter the class name in the Main Class field. Alternatively, you can manually type the class name in the manifest Main-Class element.

## License

This project is dual-licensed under the MIT and GPL-3.0 licenses.

- The original code and any modifications to it are licensed under the [GPL-3.0 license](./LICENSE-GPL).
- Any new code added by **LTurret** that does not modify the original GPL code is licensed under the [MIT license](./LICENSE-MIT).

You may choose to use, modify, and distribute this project under either of these licenses.
