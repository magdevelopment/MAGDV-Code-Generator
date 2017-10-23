#! /bin/bash
# Templates install script

# Find script location directory
get_script_dir () {
     SOURCE="${BASH_SOURCE[0]}"
     # While $SOURCE is a symlink, resolve it
     while [ -h "$SOURCE" ]; do
          DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
          SOURCE="$( readlink "$SOURCE" )"
          # If $SOURCE was a relative symlink (so no "/" as prefix, need to resolve it relative to the symlink base directory
          [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
     done
     DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
     echo "$DIR"
}

android_studio_installation_dir="/Applications/Android Studio.app/Contents"
dest_folder=${android_studio_installation_dir}/plugins/android/lib/templates/
templates_source_folder_name="$(get_script_dir)/Templates"
templates_destination_folder=SSPKit

if [ ! -d "$dest_folder" ];
then
    echo "IDE Templates folder not found (×̯×)"
    exit
fi

target_ide_templates_dir="$dest_folder"$templates_destination_folder

if [ -d "$target_ide_templates_dir" ];
then
    echo "Clear Installed templates… v(‘.’)v"
    rm -rf "$target_ide_templates_dir"/*
else
	echo "Make templates folder 〴⋋_⋌〵"
	mkdir "$target_ide_templates_dir"
fi

echo "Install templates… {(>_<)}"

if cp -R "$templates_source_folder_name"/. "$target_ide_templates_dir"/
then
	echo "Templates installed (◠ ‿ ◠)"
else
	echo "Templates install failed (◕︵◕)"
fi
