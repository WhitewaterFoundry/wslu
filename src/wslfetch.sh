version=28

is_line=0
is_splash=0
help_short="wslfetch (-h|-v|-s|-l|-c)"

hostname=$(</etc/hostname)
branch=`wslsys -b -s`
build=`wslsys -B -s`
release=`wslsys -R -s`
kernel=`wslsys -K -s`
uptime=`wslsys -U -s`
packages=`wslsys -P -s`

case "$distro" in
	'ubuntu')
		t="${red}${bold}"
		full_text=(
"${red}                          ./+o+-      ${reset}"
"${reset}                  yyyyy. ${red}'yyyyyy+     ${reset}"
"${reset}              .;//+/////h ${red}yyyyyyo     ${reset}"
"${yellow}           .++ ${reset}.:/++++++/-${red}.\`sss/\`     ${reset}"
"${yellow}         .:++o: ${reset}\`\++++++++/:---:/-    ${reset}"
"${yellow}        o:+o+:++. ${reset}\`\`\`\`\`'-/ooo+++++\   ${reset}"
"${yellow}       .:+o:+o/.          ${reset}\`+sssooo+\  ${reset}"
"${reset}  .++/+ ${yellow}+oo+o:\`             ${reset}\sssooo;  ${reset}"
"${reset} /+++//+: ${yellow}oo+o                        ${reset}"
"${reset} \+/+o+++ ${yellow}o++o               ${red}ydddhh+  ${reset}"
"${reset}  .++.o+ ${yellow}+oo+:\`             ${red}/dddhhh;  ${reset}"
"${yellow}       .+.o+oo:.           ${red}oddhhhh+   ${reset}"
"${yellow}        \+.++o+o\` ${red}-,,,,.:ohdhhhhh+    ${reset}"
"${yellow}         \`:o+++  ${red}ohhhhhhhhyo++os:     ${reset}"
"${yellow}           .o: ${red}.syhhhhhhh'${yellow}.oo++o.     ${reset}"
"${red}               /osyyyyyyy${yellow}.oooo+++\    ${reset}"
"${red}                   \`\`\`\`\` ${yellow}+oo+++o:/    ${reset}"
"${yellow}                          \`oo++'\`     ${reset}");;
	'debian')
	t="${light_red}${bold}"
	full_text=(
"${white}         _,met\$\$\$\$\$gg.               ${reset}"
"${white}      ,g\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$P.            ${reset}"
"${white}    ,g\$\$P\"\"       \"\"\"Y\$\$.\".          ${reset}"
"${white}   ,\$\$P'              \`\$\$\$.          ${reset}"
"${white}  ',\$\$P       ,ggs.     \`\$\$b:        ${reset}"
"${white}  \`d\$\$'     ,\$P\"\'   ${light_red}.${white}    \$\$\$        ${reset}"
"${white}   \$\$P      d\$\'     ${light_red},${white}    \$\$P        ${reset}"
"${white}   \$\$:      \$\$.   ${light_red}-${white}    ,d\$\$'         ${reset}"
"${white}   \$\$\;      Y\$b._   _,d\$P'          ${reset}"
"${white}   Y\$\$.    ${light_red}\`.${white}\`\"Y\$\$\$\$P\"'              ${reset}"
"${white}   \`\$\$b      ${light_red}\"-.__                   ${reset}"
"${white}    \`Y\$\$                             ${reset}"
"${white}     \`Y\$\$.                           ${reset}"
"${white}       \`\$\$b.                         ${reset}"
"${white}         \`Y\$\$b.                      ${reset}"
"${white}            \`\"Y\$b._                  ${reset}"
"${white}                \`\"\"\"\"                ${reset}"
"${white}                                     ${reset}");;
	'kali')
	t="${light_blue}${bold}"
	full_text=(
"${light_blue}..............                                     "
"${light_blue}            ..,;:ccc,.                             ${reset}"
"${light_blue}          ......''';lxO.                           ${reset}"
"${light_blue}.....''''..........,:ld;                           ${reset}"
"${light_blue}           .';;;:::;,,.x,                          ${reset}"
"${light_blue}      ..'''.            0Xxoc:,.  ...              ${reset}"
"${light_blue}  ....                ,ONkc;,;cokOdc',.            ${reset}"
"${light_blue} .                   OMo           ':${black}dd${light_blue}o.          ${reset}"
"${light_blue}                    dMc               :OO;         ${reset}"
"${light_blue}                    0M.                 .:o.       ${reset}"
"${light_blue}                    ;Wd                            ${reset}"
"${light_blue}                     ;XO,                          ${reset}"
"${light_blue}                       ,d0Odlc;,..                 ${reset}"
"${light_blue}                           ..',;:cdOOd::,.         ${reset}"
"${light_blue}                                    .:d;.':;.      ${reset}"
"${light_blue}                                       'd,  .'     ${reset}"
"${light_blue}                                         ;l   ..   ${reset}"
"${light_blue}                                          .o       ${reset}"
"${light_blue}                                            c      ${reset}"
"${light_blue}                                            .'     ${reset}"
"${light_blue}                                             .     ${reset}");;
	'opensuse')
        t="${light_green}${bold}"
        full_text=(
"${light_gray}             .;ldkO0000Okdl;.                   ${reset}"
"${light_gray}         .;d00xl:^''''''^:ok00d;.               ${reset}"
"${light_gray}       .d00l'                'o00d.             ${reset}"
"${light_gray}     .d0Kd'${light_green}  Okxol:;,.          ${light_gray}:O0d.           ${reset}"
"${light_gray}    .OK${light_green}KKK0kOKKKKKKKKKKOxo:,      ${light_gray}lKO.          ${reset}"
"${light_gray}   ,0K${light_green}KKKKKKKKKKKKKKK0P^${light_gray},,,${light_green}^dx:${light_gray}    ;00,         ${reset}"
"${light_gray}  .OK${light_green}KKKKKKKKKKKKKKKk'${light_gray}.oOPPb.${light_green}'0k.${light_gray}   cKO.        ${reset}"
"${light_gray}  :KK${light_green}KKKKKKKKKKKKKKK: ${light_gray}kKx..dd ${light_green}lKd${light_gray}   'OK:        ${reset}"
"${light_gray}  dKK${light_green}KKKKKKKKKOx0KKKd ${light_gray}^0KKKO' ${light_green}kKKc${light_gray}   dKd        ${reset}"
"${light_gray}  dKK${light_green}KKKKKKKKKK;.;oOKx,..${light_gray}^${light_green}..;kKKK0.${light_gray}  dKd        ${reset}"
"${light_gray}  :KK${light_green}KKKKKKKKKK0o;...^cdxxOK0O/^^'  ${light_gray}.0K:        ${reset}"
"${light_gray}   kKK${light_green}KKKKKKKKKKKKK0x;,,......,;od  ${light_gray}lKk         ${reset}"
"${light_gray}   '0K${light_green}KKKKKKKKKKKKKKKKKKKK00KKOo^  ${light_gray}c00'         ${reset}"
"${light_gray}    'kK${light_green}KKOxddxkOO00000Okxoc;''   ${light_gray}.dKk'          ${reset}"
"${light_gray}      l0Ko.                    .c00l'           ${reset}"
"${light_gray}       'l0Kk:.              .;xK0l'             ${reset}"
"${light_gray}          'lkK0xl:;,,,,;:ldO0kl'                ${reset}"
"${light_gray}              '^:ldxkkkkxdl:^'                  ${reset}");;
    'wlinux')
        t="${light_orange}${bold}"
        full_text=(
"${light_orange}  ++++++++++++++++++++++++++++++++  ${reset}"
"${light_orange}  ++++++++++++++,,,=++++++++++++++  ${reset}"
"${light_orange}  ++++++++++++,,,,,,,+++++++++++++  ${reset}"
"${light_orange}  ++++++++++++,,,,.,,,++++++++++++  ${reset}"
"${light_orange}  +++++++++++++,,+.+,,++++++++++++  ${reset}"
"${light_orange}  ++++++++++++,++++:,,++++++++++++  ${reset}"
"${light_orange}  ++++++++++++,,,:++,,++++++++++++  ${reset}"
"${light_orange}  +++++++++++,+=,+++,,.+++++++++++  ${reset}"
"${light_orange}  ++++++++++,.+++++++,.,++++++++++  ${reset}"
"${light_orange}  +++++++++,,+++++++++,,,+++++++++  ${reset}"
"${light_orange}  ++++++++.,++++++++++,,,,++++++++  ${reset}"
"${light_orange}  +++++++=,,++++++++++,,,,++++++++  ${reset}"
"${light_orange}  +++++++,,:++++++++++.,,,++++++++  ${reset}"
"${light_orange}  ++++++=+++,++++++++++,,+,+++++++  ${reset}"
"${light_orange}  ++++=++++++,,++++++.+++++=++++++  ${reset}"
"${light_orange}  ++++++++++++++++++,,++++++,+++++  ${reset}"
"${light_orange}  ++++=,++++++.,,,,,,,+++,++++++++  ${reset}"
"${light_orange}  ++++++++++..++++++=~,,++++++++++  ${reset}");;
    'sles')
        t="${green}${bold}"
        full_text=(
"${green}             .;ldkO0000Okdl;.               ${reset}"
"${green}         .;d00xl:^''''''^:ok00d;.           ${reset}"
"${green}       .d00l'                'o00d.         ${reset}"
"${green}     .d0Kd'  Okxol:;,.          :O0d.       ${reset}"
"${green}    .OKKKK0kOKKKKKKKKKKOxo:,      lKO.      ${reset}"
"${green}   ,0KKKKKKKKKKKKKKKK0P^,,,^dx:    ;00,     ${reset}"
"${green}  .OKKKKKKKKKKKKKKKKk'.oOPPb.'0k.   cKO.    ${reset}"
"${green}  :KKKKKKKKKKKKKKKKK: kKx..dd lKd   'OK:    ${reset}"
"${green}  dKKKKKKKKKKKOx0KKKd ^0KKKO' kKKc   dKd    ${reset}"
"${green}  dKKKKKKKKKKKK;.;oOKx,..^..;kKKK0.  dKd    ${reset}"
"${green}  :KKKKKKKKKKKK0o;...^cdxxOK0O/^^'  .0K:    ${reset}"
"${green}   kKKKKKKKKKKKKKKK0x;,,......,;od  lKk     ${reset}"
"${green}   '0KKKKKKKKKKKKKKKKKKKKK00KKOo^  c00'     ${reset}"
"${green}    'kKKKOxddxkOO00000Okxoc;''   .dKk'      ${reset}"
"${green}      l0Ko.                    .c00l'       ${reset}"
"${green}       'l0Kk:.              .;xK0l'         ${reset}"
"${green}          'lkK0xl:;,,,,;:ldO0kl'            ${reset}"
"${green}              '^:ldxkkkkxdl:^'              ${reset}");;
    'alpine')
        t="${blue}${bold}"
        full_text=(
"${light_blue}        .................          ${reset}"
"${light_blue}       ∴::::::::::::::::∴         ${reset}"
"${light_blue}      ∴::::::::::::::::::∴        ${reset}"
"${light_blue}     ∴::::::::::::::::::::∴       ${reset}"
"${light_blue}    ∴:::::::. :::::':::::::∴      ${reset}"
"${light_blue}   ∴:::::::.   ;::; ::::::::∴     ${reset}"
"${light_blue}  ∴::::::;      ∵    :::::::∴    ${reset}"
"${light_blue} ∴:::::.     .         .::::::∴   ${reset}"
"${light_blue}  ::::::     :::.    .    ::::::   ${reset}"
"${light_blue} ∵::::     ::::::.  ::.   ::::∵   ${reset}"
"${light_blue}  ∵:..   .:;::::::: :::.  :::∵    ${reset}"
"${light_blue}   ∵::::::::::::::::::::::::∵     ${reset}"
"${light_blue}    ∵::::::::::::::::::::::∵      ${reset}"
"${light_blue}     ∵::::::::::::::::::::∵       ${reset}"
"${light_blue}       ::::::::::::::::::::        ${reset}"
"${light_blue}       ∵::::::::::::::::∵         ${reset}");;
    *)
        t="${cyan}${bold}"
        full_text=(
            "${cyan} /\$\$      /\$\$  /\$\$\$\$\$\$  /\$\$       "
            "${cyan}| \$\$  /\$ | \$\$ /\$\$__  \$\$| \$\$	  "
            "${cyan}| \$\$ /\$\$\$| \$\$| \$\$${reset}  ${cyan}\\__/| \$\$${reset}       "
            "${cyan}| \$\$${reset}${cyan}/\$\$${reset} ${cyan}\$\$${reset} ${cyan}\$\$${reset}${cyan}|  \$\$\$\$\$\$${reset} ${cyan}| \$\$${reset}       "
            "${cyan}| \$\$\$\$${reset}${cyan}_  \$\$\$\$${reset} ${cyan}\\____  \$\$${reset}${cyan}| \$\$${reset}	  "
            "${cyan}| \$\$\$${reset}${cyan}/ \\  \$\$\$${reset} ${cyan}/\$\$${reset}  ${cyan}\\ \$\$${reset}${cyan}| \$\$${reset}	  "
            "${cyan}| \$\$${reset}${cyan}/   \\  \$\$${reset}${cyan}|  \$\$\$\$\$\$${reset}${cyan}/| \$\$\$\$\$\$\$\$${reset} "
            "${cyan}|__/     \\__/ \\______/ |________/${reset} "
            );;
esac


info_text=("${t}Windows 10 Linux Subsystem${reset}"
"${t}${USER}${reset}@${t}${hostname}${reset}"
"${t}BUILD:${reset}	${build}"
"${t}BRANCH:${reset}	${branch}"
"${t}RELEASE:${reset}	${release}"
"${t}KERNEL:${reset}	${kernel}"
"${t}UPTIME:${reset}	${uptime}"
"${t}PACKAGES:${reset}	${packages}"
""
"   \e[40m   \e[41m   \e[42m   \e[43m   \e[44m   \e[45m   \e[46m   \e[47m   ${reset}")

line(){
    if [[ "$is_line" == "1" ]]; then
        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
    else
        echo ""
    fi
}

info_length=${#info_text[@]}
full_length=${#full_text[@]}

for args; do
	case $args in
        -h|--help) help $0 "$help_short"; exit;;
		-v|--version) echo "wslpath v$wslu_version.$version"; exit;;
        -s|--splash) is_splash=1;;
        -l|--line) is_line=1;;
    esac
done

line
# use for loop to read all values and indexes
for (( i=0; i<${full_length}; i++ ));
do
    tmp=""
    if [[ $i -le ${info_length} ]]; then
        tmp="${info_text[$i]}"
    fi
    echo -e "${full_text[$i]}${tmp}"
done
line

if [[ "$is_splash" == "1" ]]; then
    sleep 2
    clear
fi
