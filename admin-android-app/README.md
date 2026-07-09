# ZPlayer TV - App Android WebView

## Como compilar e instalar

### Pré-requisitos
1. Instale o **Android Studio** (gratuito): https://developer.android.com/studio
2. Abra o Android Studio
3. Clique em **"Open"** e selecione esta pasta: `android-tv-app`
4. Aguarde o Gradle sincronizar (pode demorar alguns minutos na primeira vez)

### Compilar o APK
1. No Android Studio, clique em **Build → Build Bundle(s) / APK(s) → Build APK(s)**
2. O APK será gerado em: `app/build/outputs/apk/debug/app-debug.apk`
3. Clique em **"locate"** para abrir a pasta com o APK

### Instalar na TV
#### Opção 1 - Via ADB (recomendado para TV)
```bash
adb connect IP_DA_TV:5555
adb install app-debug.apk
```

#### Opção 2 - Copiar o APK para um pendrive
1. Copie o `app-debug.apk` para um pendrive
2. Na TV, abra um gerenciador de arquivos
3. Navegue até o pendrive e instale o APK
4. Ative "Fontes desconhecidas" nas configurações se necessário

#### Opção 3 - Enviar por rede local
Use apps como **Send Files to TV** para transferir o APK sem fio

## Funcionalidades do App
- ✅ Abre direto na tela de login do player IPTV
- ✅ Compatível com Android TV (aparece no launcher da TV)
- ✅ Controle remoto D-pad funciona (navegação, OK, voltar)
- ✅ Tela cheia imersiva (sem barra de status)
- ✅ Foco laranja visível ao navegar com o controle
- ✅ LocalStorage funcionando (salva login e banners)
- ✅ Reprodução de vídeo sem precisar de clique manual
- ✅ Compatível com Android 5.0+ (TVs antigas)

## Controle Remoto
| Tecla | Ação |
|-------|------|
| ↑↓←→ D-pad | Navega entre elementos |
| OK / Center | Clica no elemento |
| Voltar | Volta na tela anterior |
| Play/Pause | Controla o vídeo |

## URL do Player
`https://zplyartiij55.vercel.app/player`
