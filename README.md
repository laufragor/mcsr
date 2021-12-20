# mcsr
Minecraft speedrunning risorse utili
 
1. **MultiMC**  
launcher 10000 volte migliore https://multimc.org/#Download
3. **Performance & mods**  
Usa l'ultima versione di Java (ad es. https://www.linuxuprising.com/2021/09/how-to-install-oracle-java-17-lts-on.html)  
Allocazione massima memoria = 3gb (da 2 a 3), Java args: `-XX:+UseZGC`  
Performance mods https://www.youtube.com/watch?v=GboL7G8Q79o  
other mods: https://github.com/modmuss50/Voyager, https://www.curseforge.com/minecraft/mc-mods/motiono  
Starlight (way faster world loading): https://github.com/Spottedleaf/Starlight
4. **OBS**  
Per registrare https://obsproject.com/download
5. **Timer**  
https://github.com/NinjaSnail1080/mc-universal-in-game-timer/releases/latest
6. **MAPPE**  
Bastioni      https://www.dropbox.com/s/9e103bjzroi85aa/Llama%27s%20Bastion%20Practice%20v2.6.1.zip?dl=0  
End fight     https://github.com/jojoe77777/PerchPractice/releases/latest  
Portali        https://www.mediafire.com/file/1oanxrh14db4u7g/Portal_Practice.zip/file  
One Cycle https://sites.google.com/view/emma-practice-map/home  
SSG taiga seed https://drive.google.com/file/d/1m7M5q6TECeMsEyiJs8qzl-S62cjev1gh/view?usp=sharing  
6. Other cool shit  
RSG Reset Tracker https://www.youtube.com/watch?v=TdnQpkOyrJo (per multi instance, https://www.mediafire.com/file/j3cv53lmyp610ni/multiinstances.zip/file)
Rayoh's grass overlay: https://www.mediafire.com/file/buoixjsalyjdti7/rayoh%2527s_grass_overlay.zip/file
Custom capes without mods: https://www.youtube.com/watch?v=vRYAqOaxviU


Fov: 95 w/ dynamic fov off, quake pro in the end  
Keybinds: Q234RVXCF, drop=caps, offhand=mouse4, f5=mouse5, f3=dpi button

- Puntatore a croce: (devi aver selezionato DMZ-Black come puntatore in start > temi)
```
cd /usr/share/icons/DMZ-Black/cursors/
sudo cp left_ptr left_ptr_BACKUP
sudo cp cross left_ptr
```
- Sensibilità mouse linux = 800dpi ~45% (0.22748699 in .minecraft > options.txt)  
usa il doppio dei DPI che useresti su windows (in win sarebbe 400dpi 75%), e disabilita completamente l'accelerazione del mouse: metti come comando da eseguire all'avvio del sistema `xinput set-prop "Logitech Gaming Mouse G402" "libinput Accel Speed" -1`  
(se fa storie, `xinput list-props "Logitech Gaming Mouse G402"` e trova la proprietà relativa all'accelerazione`)
~9.2cm da sx a dx del desktop in 1920x1080
