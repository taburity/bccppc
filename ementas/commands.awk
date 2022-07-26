# !/usr/bin/awk -f
# My first awk script
awk '/^---/{n++}{print > n}' ementas.txt

for f in *; do
  mv -- "$f" "${f%}.md"
done

sed -i '' -e '/BIBLIOGRAFIA/d' *.md 

sed -i '' -e 's/[\\]//g' 1.md



echo '---' >> *.md

sed -i '' -e 's/ CÓDIGO:/\nCÓDIGO: /g' 1.md

sed -i '' -e 's/EMENTA/EMENTA: "/g' *.md