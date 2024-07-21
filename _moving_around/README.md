# Moving around

## Be one with the flow cd ls cat

In each folder there will be some fun examples.

### `cd` change directories

This is a universal command moving folders.

Use this to move aound.

### `ls` to show everything where you are at

After changing directories, most hackers by default want to see the files there:

do this with `ls` to list the file:

`ls`

For example:

```
❯ ls
Activate_Terminal_Explorations_with_Cowsay          install_deps.sh  _moving_around  _setting_up_desktop
Bash_Adventure_with_Bash_Scripting_Vim_and_Aliases  LICENSE          README.md       Styles
```

Protip: Use `tab` to autocomplete long file and directory names.

### `pwd` Print working directory

Use the above to print the location you're currently at, which is often helpful.

```sh
❯ pwd
/home/chromebook/sblinuxworkshop
```

### `cat` to show the contents of files

To show the contents of a file (e.g. a `README.md` with instructions), use the
following:

```sh
cd _setting_up_desktop/
cat README.md
```

This will show in the terminal all of the contents of the file.


### Bonus: `less` is more

The following will also show contents and make it easier to scroll with arrows:

```sh
less README.md
```

Press `q` to exit once done (again no mouse in the terminal).

## tree

One reall useful tool is the tree software, which allows visualization of the
current directory:


```sh
sudo apt install tree
```

Using it will be like ls but show everything in the folder:

```sh
❯ tree
.
├── Activate_Terminal_Explorations_with_Cowsay
│   └── README.md
├── Bash_Adventure_with_Bash_Scripting_Vim_and_Aliases
│   └── README.md
├── install_deps.sh
├── LICENSE
├── _moving_around
│   └── README.md
├── README.md
├── _setting_up_desktop
│   └── README.md
└── Styles
    └── README.md

5 directories, 8 files
```


