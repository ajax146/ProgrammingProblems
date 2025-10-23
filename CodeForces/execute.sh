#!/usr/bin/env bash
# Usage: bash execute.sh {language} {problem}
# Example: bash execute.sh rust 4A

lang="$1"
problem="$2"

if [[ -z "$lang" || -z "$problem" ]]; then
  echo "Usage: bash $0 {language} {problem}"
  exit 1
fi

# Figure out folder range
num=$(echo "$problem" | grep -oE '^[0-9]+')
start=$(( ((num - 1) / 100) * 100 + 1 ))
end=$(( start + 99 ))
if (( num >= 2001 )); then
  start=2001
  end=2101
fi
range="${start}-${end}"

# Compute base path (e.g. 901-1000/953/B)
letter=$(echo "$problem" | grep -oE '[A-Z]$')
path="${range}/${num}/${letter}"

# Verify folder exists
if [[ ! -d "$path" ]]; then
  echo "Directory not found: $path"
  exit 1
fi

# Select and run based on language
case "$lang" in
  py)
    echo "READY" && \
    python3 "./${path}/${problem}.py"
    ;;
  go)
    echo "READY" && \
    go run "./${path}/${problem}.go"
    ;;
  cs)
    mcs -out:"./${path}/${problem}.cs_c" "./${path}/${problem}.cs" && \
    echo "READY" && \
    mono "./${path}/${problem}.cs_c"
    ;;
  java)
    mv "./${path}/${problem}.java" "./${path}/Main.java" && \
    javac "./${path}/Main.java" && \
    mv "./${path}/Main.java" "./${path}/${problem}.java" && \
    echo "READY" && \
    java -cp "./${path}" Main && \
    mv "./${path}/Main.class" "./${path}/${problem}.java_c"
    ;;
  ts)
    cd "./${path}" || exit 1
    npm install --save-dev typescript @types/node >/dev/null 2>&1 && \
    npx tsc "${problem}.ts" && \
    echo "READY" && \
    node "${problem}.js" && \
    rm -rf node_modules package-lock.json package.json && \
    mv "${problem}.js" "${problem}.ts_c"
    ;;
  swift)
    echo "READY" && \
    swift "./${path}/${problem}.swift"
    ;;
  rb)
    echo "READY" && \
    ruby "./${path}/${problem}.rb"
    ;;
  cpp)
    g++ -std=c++23 "./${path}/${problem}.cpp" -o "./${path}/${problem}.cpp_c" && \
    echo "READY" && \
    "./${path}/${problem}.cpp_c"
    ;;
  rs)
    rustc "./${path}/${problem}.rs" -o "./${path}/${problem}.rs_c" && \
    echo "READY" && \
    "./${path}/${problem}.rs_c"
    ;;
  pl)
    echo "READY" && \
    perl "./${path}/${problem}.pl"
    ;;
  php)
    echo "READY" && \
    php "./${path}/${problem}.php"
    ;;
  *)
    echo "Unsupported language: $lang"
    exit 1
    ;;
esac
