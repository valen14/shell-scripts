#!/bin/sh

DOCKERFILE="docker/Dockerfile.php docker/Dockerfile.nginx"
APP="test-php test-nginx"
TARGET="base laravel_nginx"

# FUNCIONES

# Obtener el elemento en la posición i (0-indexado)
get_element() {
  local list="$1"
  local index="$2"
  local i=0

  for element in $list; do
    if [ "$i" -eq "$index" ]; then
      echo "$element"
      return
    fi
    i=$((i + 1))
  done
}


# MAIN

long=0
for i in $APP; do
    long=$((long + 1))
done

i=0
while [ "$i" -lt "$long" ]; 
do
    app=$(get_element "$APP" "$i")
    echo $app
    echo $(get_element "$DOCKERFILE" "$i")
    echo $(get_element "$TARGET" "$i")
    i=$((i + 1))
done

