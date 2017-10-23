@echo off

SET android_studio_installation_dir=C:\Soft\Android Studio Preview\android-studio
SET dest_folder=%android_studio_installation_dir%\plugins\android\lib\templates\
SET templates_source_folder_name=%CD%\templates
SET templates_destination_folder=MAGDV

if not exist "%dest_folder%" GOTO NOTFOUNDSTUFF

SET target_ide_templates_dir=%dest_folder%%templates_destination_folder%

if exist "%target_ide_templates_dir%" (
  echo "Clear Installed templates… v(‘.’)v"
  rd /q /s "%target_ide_templates_dir%"
)

echo "Make templates folder />__<\"
md "%target_ide_templates_dir%"

echo "Install templates… {(>_<)}"

echo "xcopy /S %templates_source_folder_name% %target_ide_templates_dir%"

xcopy /S "%templates_source_folder_name%" "%target_ide_templates_dir%"

echo "Templates installed (^ _ ^)"
pause
exit

:NOTFOUNDSTUFF
echo "IDE Templates folder not found (x_x)"
pause
exit
