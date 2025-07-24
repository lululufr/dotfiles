#!/usr/bin/env bash

DIR="$HOME/.config/polybar/forest"

# Kill polybar s'il tourne déjà
killall -q polybar

# Attendre la fermeture complète
while pgrep -u "$UID" -x polybar >/dev/null; do sleep 1; done

# Trouver l'écran principal
PRIMARY=$(xrandr | grep " connected primary" | cut -d" " -f1)

if [ -n "$PRIMARY" ]; then
  echo "📺 Lancement de Polybar sur $PRIMARY"
  MONITOR="$PRIMARY" polybar -q main -c "$DIR"/config.ini &
else
  echo "⚠️ Aucun écran principal trouvé. Tu dois définir un écran principal avec xrandr."
  polybar -q main -c "$DIR"/config.ini &

fi
