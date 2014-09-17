# About

Maven plugin that creates an Application Bundle for OS X containing all your project dependencies and the necessary metadata.

As you may know, Apple has dropped Java development from OS X excluding security patches.
mojo's [osxappbundle-maven-plugin](http://mojo.codehaus.org/osxappbundle-maven-plugin/) depends on Apple's Java launcher, so it does not support Java version 7 and future.

Oracle's [Java Application Bundler](https://java.net/projects/appbundler) supports other Java runtime (including Java 7, 8 and more), but it does not support maven.

I merged both and fix to work as a maven plugin that supports latest Mac OS X.

# How to build

To build native application launcher, run

```
sh build.sh
```

and install

```
mvn install
```

# How to use

A example configuration for pom.xml is followings,


```
<build>
    ...
    <plugins>
        ...
        <plugin>
            <groupId>com.bsdroot.github.appbundler</groupId>
            <artifactId>appbundle-maven-plugin</artifactId>
            <version>1.0-SNAPSHOT</version>
            <configuration>
                <mainClass>your.app.MainClass</mainClass>
            </configuration>
            <executions>
                <execution>
                    <phase>package</phase>
                    <goals>
                        <goal>bundle</goal>
                    </goals>
                </execution>
            </executions>
        </plugin>
        ...
    </plugins>
    ...
</build>
```

Package with following command,

```
mvn package appbundle:bundle
```
