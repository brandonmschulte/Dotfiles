
aram() { cat ~/Dotfiles/.scripts/stats.txt | head -1; }
acpu() { 
    val=$(cat ~/Dotfiles/.scripts/stats.txt | tail -1)
    let "busy=100-$val"
    echo $busy
}

CM="\[$(tput setaf 159 bold)\]"
C1="\[$(tput setaf 211 bold)\]"
C2="\[$(tput setaf 230 bold)\]"

#C1="\[\033[1;34m\]"
#C2="\[\033[1;35m\]"
#CM="\[\033[1;36m\]"

echo "$C1($C2\u$C1)-($C2$(aram)B $(acpu)% busy$C1)-($C2\w$C1)$CM "
