export DISPLAY=:0

website=liveuamap.com
size=1920x1080
dir=~/Pictures/wallpapers

if [ ! -d $dir ]; then
    mkdir -p $dir
    echo "Created directory $dir"
else
    rm $dir/$website*.png
    echo "Removed old files"
fi

cd $dir
pageres https://$website/ $size

feh --xinerama-index 0 --bg-fill $dir/$website-$size.png --image-bg black


