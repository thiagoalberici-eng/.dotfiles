# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Other added PATHs
# PATH="$HOME/.cargo/bin:$PATH"
# export PATH=$PATH:./node_modules/.bin

# Theme (https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)
ZSH_THEME="af-magic"

# Plugins
plugins=(git dirhistory history k ssh-agent sudo zsh-autosuggestions zsh-syntax-highlighting)

# Language environment
export LC_NUMERIC=en_US.UTF-8

# Sources
source $ZSH/oh-my-zsh.sh
source "/etc/profile.d/rvm.sh"

# Compilation flags
CMAKE_CXX_COMPILER_LAUNCHER=ccache

# exporting environment variables
export CMAKE_CXX_COMPILER_LAUNCHER
export HXGN_TOOLCHAIN_ROOT=/opt/hxgn-x11/4.9.88/
export HXGN_IMX8_TOOLCHAIN_ROOT=/opt/fsl-imx-xwayland/5.4-zeus/
export HXGN_IMX8MP_TOOLCHAIN_ROOT=/opt/fsl-imx-xwayland/tqma8mpxl-hxgn/5.4-zeus
export DBUS_SESSION_ADDRESS="tcp:host=localhost,bind=*,port=55556"

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Pyenv environment variables
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi


#Paths
alias ..="cd .."
alias down="cd ~/Downloads"
alias docs="cd ~/Documents"
alias desk="cd ~/Desktop"
alias dev="cd /home/dev"
alias gitpath="cd /home/git/"
#build
alias bx64="./dume/build_x64.sh"
alias bimx6="./dume/build_7-imx6.sh"
alias bimx8="./dume/build_imx8.sh"
alias bimx8mp="./dume/build_imx8mp.sh"
#tests
alias tcov="./dume/coverage.sh"
alias btx64="./dume/build_tests_x64.sh"
alias rutx64="./build/test/x64/test/unit/unit_tests"
alias ritx64="./build/test/x64/test/integration/integration_tests"
alias bcuck="./dume/build_tests_behavior_x64.sh"
alias rcucksimulation="./dume/run_behavior_tests_simulation.sh"
alias brcucksimulation="./dume/build_tests_behavior_x64.sh; ./dume/run_behavior_tests_simulation.sh"
alias rcuckserial="./dume/run_behavior_tests_serial.sh"
alias brcuckserial="./dume/build_tests_behavior_x64.sh; ./dume/run_behavior_tests_serial.sh"
#applications
alias np="/mnt/c/Program\ Files/Notepad++/notepad++.exe"
alias hxgnutils="/home/dev/hxgn_utils/build/src/x64/src/hxgn_utils"
alias isobus="./build/src/x64/source/isobus-ecu ./modelica_models/models/mpagro_taurus.fmu logs/vars_fmi_logger.txt"
alias titanium="(LC_NUMERIC=en_US.UTF-8; cd /home/git/adamantium/Titanium3D; echo 1231213123 | sudo -S ../build/src/x64/Titanium3D/titanium)"
# alias titanium="(LC_NUMERIC=en_US.UTF-8; cd /home/git/adamantium/Titanium3D; ../build/src/x64/Titanium3D/titanium)"
alias kilgrave="echo 1231213123 | sudo -S ./build/src/x64/src/kilgrave"
alias coppelia="echo 1231213123 | sudo -S /opt/CoppeliaSim_Edu_V4_4_0_rev0_Ubuntu20_04/coppeliaSim.sh"
alias tcpcanbus="/home/git/tcp_can_bus/build/src/tcp_can_host"
alias autosteeringx64="/home/git/autosteeringx64/build/src/x64/X64AutoSteering"
alias vcan0="sudo ~/Documents/scripts/start_vcan.sh"
alias vcan1="sudo ~/Documents/scripts/start_vcan.sh can1"
alias rpc="sudo cutecom"
#tix screenshot
alias tixscreenshot="~/Documents/scripts/tix_screenshot.sh -t 10.42.0.162 -d ~/Downloads"
#tix ssh
alias harvester="ssh root@10.42.1.162"
alias haulout="ssh root@10.42.1.83"
alias truck="ssh root@10.42.1.143"
#others
alias ll="k -Ah"
alias fixplasma="killall plasmashell; cp ~/.config/plasma-org.kde.plasma.desktop-appletsrc.bak ~/.config/plasma-org.kde.plasma.desktop-appletsrc; plasmashell&"
# alias ll="ls -lah"
alias zshconfig="code ~/.zshrc"
alias gitconfig="code ~/.gitconfig"
alias update_ubuntu='sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean && sudo apt clean && sudo apt update'
alias sizes="du -sh * | sort -hr"
alias extract="tar -xvf"
alias compact="tar -cvf"
alias system="screenfetch"
alias cppclean="/opt/cppclean-0.13/cppclean --include-path Titanium3D/src --include-path Titanium3D/3rdparty --include-path gps/src --include-path gis_api/src --include-path serial --include-path uteis/src --include-path TSIO --include-path ATBBIOs --include-path ISOBUS/src --include-path Bootloader/src --include-path Drivers --include-path Drivers/inc --include-path TiManager/src  --include-path json_utils/src --include-path tix_client/src --include-path tix_client/plc/src --include-path can_utils/src --include-path geometry_utils/src --include-path communication_utils/src --include-path rfid_structs/src --include-path spdlog/include --include-path json/single_include --include-path file_handler/src --include-path database_manager/src --include-path isobus_tc_common/src --include-path crypto/src --include-path qt_utils/src --include-path chat_communication/ --include-path chat_communication/src/ --include-path-non-system /usr/include/ModemManager/ --include-path-non-system /usr/include/KF5/ --include-path-non-system /usr/include/KF5/ModemManagerQt/ --include-path-non-system /usr/lib/x86_64-linux-gnu/qt5/ --include-path yaml-cpp/ --include-path . "
alias get_access_code="dbus-send --dest=br.com.arvus.Wanda --print-reply --type=method_call /WandaAuthDbus br.com.arvus.Wanda.WandaAuthDbus.GetAccessCode"
