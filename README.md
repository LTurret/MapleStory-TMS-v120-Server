# MapleStory-TMS-v120-Server

A server dedicated to hosting the Taiwan MapleStory version 1.20 Server.

## TODO

Future work will be tracked and documented in the issues tab.

- [x] Clean up and reconstruct project.
- [x] SQL refactors.
- [x] Build validation.
- [ ] Build information.
- [x] License validation.
- [ ] Move all author mention in `/scipts/*.js` to `README.md`.

## Roadmap

### Client

- [ ] Cash shop remove duplicates.
- [ ] Localization.
- [ ] Script Patch.
- [ ] Client updates.

### Game Features

- [ ] Party quests.

## Build

### Database

> [!IMPORTANT]
> Run `maplestory.sql` first.

1. Create new database named `maplestory`.
2. Run all `.sql` script inside `/sql`.

### Run

To run the project from the command line, go to the dist folder and type the following command:

```shell
java -jar "TMS120.jar"
```

## Distribution

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
