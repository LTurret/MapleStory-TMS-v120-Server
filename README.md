# MapleStory-v120-Server-Eimulator

A server dedicated to hosting the Taiwan MapleStory version 1.20.

## TODO

Future work will be tracked and documented in the Issues tab.

### Project

> [!CAUTION]  
> **To all potential contributors**: This source code was originally derived from the **OdinMS Maple Story Server**. While the initial license was GPL, this repository is now under the MIT license. Please note that some copyright claims may require further review.

- [ ] Clean up former ass shit.
- [ ] Compile validation.
- [ ] Compile information.
- [ ] License validation.

### Game

- [ ] Localization.
- [ ] Script Patch.
- [ ] Client updates.

## Build

### Database

> [!IMPORTANT]
> Run `maplestory.sql` first.

1. Create new database named `maplestory`.
2. Run all `.sql` script inside `/sql`.

### Run

When you build an Java application project that has a main class, the IDE
automatically copies all of the JAR
files on the projects classpath to your projects dist/lib folder. The IDE
also adds each of the JAR files to the Class-Path element in the application
JAR files manifest file (MANIFEST.MF).

To run the project from the command line, go to the dist folder and
type the following:

```shell
java -jar "TMS120.jar"
```

## Distribution

To distribute this project, zip up the dist folder (including the lib folder)
and distribute the ZIP file.

> [!NOTE]
>
> - If two JAR files on the project classpath have the same name, only the first
>   JAR file is copied to the lib folder.
> - Only JAR files are copied to the lib folder.
>   If the classpath contains other types of files or folders, these files (folders)
>   are not copied.
> - If a library on the projects classpath also has a Class-Path element
>   specified in the manifest,the content of the Class-Path element has to be on
>   the projects runtime path.
> - To set a main class in a standard Java project, right-click the project node
>   in the Projects window and choose Properties. Then click Run and enter the
>   class name in the Main Class field. Alternatively, you can manually type the
>   class name in the manifest Main-Class element.
