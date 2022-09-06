# MAC Setup

## Tools
- iterm2
- vscode

## Steps
### Install `Homebrew`

```zsh
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
 ```

### Setup `Iterm2`
```zsh
$ brew install --cask iterm2
```

1. Setup `ohmyzsh`
    1. Install `ohmyzsh`

    ```zsh
    $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
    2. Install zsh-autosuggestions & zsh-syntax-highlighting
    ```zsh
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
    ```
    3. Copy `./Scritp` into `~/Script`
    4. Replace `~/.zshrc` with `./iterm2/zshrc`

2. Import Profile
    1. Go to `Preferences > Profiles`
    2. On the sidebar menu, click `Other Actions` > `Import Json Profiles`
    3. Import `./iterm2/iterm2-profile.json`
    4. Remove old default

3. Setup Preferences
    1. Go to `Preferences > Appearance > General`
        > **Theme:** Minimal  
        > **Tab bar localtion:** Top  
        > **Status bar location:** Bottom
    2. Go to `Preferences > Appearance > Tabs`
        > [x] Show tab bar even when there is only one tab
    3. Go to `Preferences > Keys > Hotkey`
        > [x] Show/hide all windows with a system-wide hotkey
        >> **Hotkey:** `⌥Space`

### Setup `VSCode`
```zsh
$ brew install --cask visual-studio-code
```
1. Install [Setting Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) plugin
    > 1. **Upload Key:** Shift + Option + U
    > 2. **Download Key:** Shift + Option + D

## Setup `Git` SSH
1. Start the ssh-agent in the background.
    ```zsh
    $ eval "$(ssh-agent -s)"
    > Agent pid 59566
    ```

2. Check to see if your ~/.ssh/config file exists in the default location.
    ```zsh
    $ open ~/.ssh
    > The file /Users/you/.ssh does not exist.
    ```
    - If the file doesn't exist, create the file.
    ```zsh
    $ mkdir ~/.ssh
    ```
3. Generate a new SSH key
    ```zsh
    $ ssh-keygen -t ed25519 -C "nt.salisat@gmail.com"
    > Enter a file in which to save the key (/Users/you/.ssh/id_algorithm): (/Users/salisa-cct/.ssh/id_ed25519_cikareto)
    ```
4. Add your SSH private key to the ssh-agent and store your passphrase in the keychain.
    ```zsh
    $ ssh-add -K ~/.ssh/id_ed25519_cikareto
    ```
5. Copy the SSH public key to your clipboard.
    ```zsh
    $ pbcopy < ~/.ssh/id_ed25519_cikareto.pub
    # Copies the contents of the id_ed25519_cikareto.pub file to your clipboard
    ```
4. Add SSH key to GitHub at https://github.com/settings/keys

## Install other tools
```zsh
$ brew install --cask rectangle
$ brew install --cask docker
$ brew install node
```
