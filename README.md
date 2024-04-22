# .dotfiles

yo, i use these. you can't have 'em.

## Instructions

these instructions aren't for you, they're for me. i have memory loss.

### Step 1. Install stow

```sh
$ sudo pacman -S stow
```

### Step 2. Activate stow

```sh
$ cd $THIS_REPO
$ stow .
```

if stow complains, shut it up:
```sh
$ stow --adopt .
```

it may change some of these files, but that's cool:
```sh
$ git restore .
```

### Step 3. Profit.
