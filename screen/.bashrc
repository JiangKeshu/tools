function lets ()
{
                arr=(${2//\-/ })
                for i in `seq ${arr[0]} ${arr[1]}`
                do
        local cmd="screen -S $STY -X at ${i}# stuff $'$1\n'"
        eval $cmd
                done
}
