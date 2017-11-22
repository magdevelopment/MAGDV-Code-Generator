@echo off

SET settings_file="%CD%\settings.ini"

if not exist "%settings_file%" GOTO settingsNotFound

SET /p android_studio_installation_dir=< "%settings_file%"
SET dest_folder=%android_studio_installation_dir%\plugins\android\lib\templates\
SET templates_source_folder_name=%CD%\templates
SET templates_destination_folder=MAGDV

if not exist "%dest_folder%" GOTO destinationNotFound

SET target_ide_templates_dir=%dest_folder%%templates_destination_folder%

if exist "%target_ide_templates_dir%" (
  echo "Clear Installed templates... v(o.o)v"
  rd /q /s "%target_ide_templates_dir%"
)

echo "Make templates folder />__<\"
md "%target_ide_templates_dir%"

echo "Install templates... {(>_<)}"

xcopy /S "%templates_source_folder_name%" "%target_ide_templates_dir%"

echo "Templates installed (^ _ ^)"
pause
exit

:settingsNotFound
echo "put android studio directory here" >> "%settings_file%"
echo "Please fill settings.ini file and run again :3"
pause
exit

:destinationNotFound
echo "IDE Templates folder not found (x_x)"
pause
exit
