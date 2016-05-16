function build_dest_path {
   WBACKUPDEST=$STORAGE$TODAY"_"$MACHINENAME"/"
}

STORAGE="/media/willy/wbackup/"

MACHINENAME=$(cat /etc/hostname)
TODAY=$(date \+"%Y%m%d")
WFILESLIST=(.atom .aws .bash_aliases .bash_profile .bashrc .config Documents .gconf .gnupg .gitconfig .heroku .local .mozilla .Skype .ssh wallet works)


for i in "$@"
do
case $i in
    -d=*|--dest=*)
    STORAGE="${i#*=}"
    shift
    ;;
    -h|--help)
    build_dest_path
    echo "Usage: $(basename $0) [OPTION]"
    echo "Create a backup of your favorite dirs with rsync"
    echo $(build_dest_path)
    echo "  -d=PATH, --dest=PATH		Change the default destination dir ($WBACKUPDEST) to PATH"
    exit 0
    shift
    ;;
    *)
            # unknown option
    ;;
esac
done

build_dest_path

for i in ${WFILESLIST[@]};
do
	rsync -avp ~/${i} $WBACKUPDEST
done
exit 0
