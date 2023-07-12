for i in $(seq 1 2); do
    echo "Generating parser for CFloor$i.g4"
    antlr4 -Dlanguage=Dart -o lib/generated/cfloor$i grammars/CFloor$i.g4
done