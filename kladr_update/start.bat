set wget=wget\wget.exe
set zip=7zip\7za.exe
%wget% http://www.gnivc.ru/html/gnivcsoft/KLADR/base.7z

"%zip%" e "base.7z" -o./
del *.7z
move /Y *.dbf \\1c-server\1c\Kladr\