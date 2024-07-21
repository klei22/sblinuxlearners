# BASH and making your own commands

Bash is a shell, (the sh in bash stand for shell)

Scripting allows you to piece together anything you usually type into a shell,
but into a program (top to bottom).

You've been learning how to use scripts, now you'll learn how to make your own.

## Bash Scripting and VIM

In order to create your first bash script, you need to create a new file.

To do this use an editor called `vim`

`vim` allows you to edit files, but has different modes:


### VIM insert mode - Allows for Typing

The `INSERT` mode shows "INSERT" in the bottom left corner.

TODO: Add image with red arrow and gif via GitHub

Enter this mode by pressing lower case "i"


### VIM Normal mode - Speedy Editing

The `NORMAL` mode will have a "NORMAL" in the bottom left.

TODO: Add image via GitHub

This is the default mode, pressing `ESC` will bring you here.

`NORMAL` mode allows blazingly fast edits.

TODO: Add gif via GitHub with someone really quickly editing in Normal mode.


### Creating new file with VIM

Create a new file with:

`vim my_first_script`

Which starts `vim` loading the file for edits (with blank if this is something you want to make).

### Editing and Saving

```sh
cowsay "This is my"
sleep 5
cowsay "first script!"
```

Then save with `:wq`

TODO: image of the `:wq`

The colon key requires you to press these keys
TODO: image of the two keys to press for `:`

### Running script

To run the script do:

```sh
bash my_first_script
```

### Making the script callable from command line
We can also make this script a regular command by moving it to the same place as
cowsay and other files.


To do this:

First make the file executable:
```sh
chmod +x my_first_script
```
Then move with the `mv` command to /usr/bin (where most commands live)

```sh
sudo mv my_first_script /usr/bin
```

Now you can type in my_first_script and run anytime you want, same way as cowsay
and other commands:

```
my_first_script
```

Since the file now lives in `/usr/bin` (a secure place), you can modify it with sudo:

```sh
sudo vim /usr/bin/my_first_script
```

## Woot! : )

Congratulations! Now you can add as many scripts as you like : )

### Parameters Customizability

You're script is cool, but lacks customizability.

how does the "hi" get entered into cowsay?
```
cowsay "hi"
```

We'll show how to add this.
Let's make a different script called "koalasay"

`vim koalasay`

```sh
cowsay -n -f koala "$1"
```

The `$1` is whatever the first thing you enter into the command line

NOTE: include the `-n` so that it will be compatible with figlet : )

```sh
chmod +x koalasay
sudo mv koalasay /usr/bin
```

```
koalasay "hello world"
```

### locating a CLI program

To find the location for any cli program, just type in the `which` command and
find the location:
```sh
which koalasay
```
result:
```
/usr/bin/koalasay
```


