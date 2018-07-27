# Шаблоны MAGDV Android

#### Установка

Скопируйте содержимое папки **templates** в **ANDROID_STUDIO_DIR\plugins\android\lib\templates\other\**

или:
* для MacOS:
  * запустите **install_templates.sh**
* для Windows:
  * создайте файл **settings.ini**
  * запишите в файл **settings.ini** полный путь до папки с AS _(например, **C:\Soft\Android Studio 3.2\android-studio**)_
  * сохраните и запустите **intall.bat**

#### Использование
##### Viper Module
1. Нажмите правой кнопкой мыши на пакет, в котором будет создан модуль _(например, **presentation**)_
1. Далее выберите **New ➡️ MAGDV ➡️ Viper**
1. Появится форма, в которой необходимо заполнить параметры:
  * Module Name - Название модуля в CamelCase
  * Package Name - показывает в какой папке будет создан модуль
  * Sub package - в какой подпапке будет создан модуль
  * View - можно выбрать какого класса будет View компонент
  * Create interactor - флаг для создания класса интерактора
  * Source Language - в какой директории лежат исходники _(srcDir)_, **java или kotlin**

##### RecyclerView's Adapter
1. Нажмите правой кнопкой мыши на пакет, в котором будет создан adapter _(например, **presentation/localitylist**)_
1. Далее выберите **New ➡️ MAGDV ➡️ RecyclerView's Adapter**
1. Появится форма, в которой необходимо заполнить параметры:
  * Module Name - Название модуля в CamelCase _(например, **LocalityList**)_
  * Model Class - Название класса отображаемой модели _(например, **Locality**)_
