#!/usr/bin/env bash
# Usage: bash execute.sh {language} {problem}
# Example: bash execute.sh rs 4A

lang="$1"
problem="$2"

if [[ -z "$lang" || -z "$problem" ]]; then
  echo "Usage: bash $0 {language} {problem}"
  exit 1
fi

# Parse problem number and letter
num=$(echo "$problem" | grep -oE '^[0-9]+')
suffix=$(echo "$problem" | sed -E "s/^[0-9]+//")

if [[ -z "$num" || -z "$suffix" ]]; then
  echo "Invalid problem format. Example: 953B or 2164B2"
  exit 1
fi

# Determine folder range
start=$(( ((num - 1) / 100) * 100 + 1 ))
end=$(( start + 99 ))
range="${start}-${end}"

# Compute base path (e.g. 901-1000/953/B2)
path="${range}/${num}/${suffix}"

# Make sure the path exists
if [[ ! -d "$path" ]]; then
  echo "Directory not found: $path"
  exit 1
fi

# Select and run based on language
case "$lang" in
  cpp)
    g++ -std=c++23 "./${path}/${problem}.cpp" -o "./${path}/${problem}.cpp_c" && \
    echo "READY" && \
    "./${path}/${problem}.cpp_c"
    ;;
  cs)
    mcs -out:"./${path}/${problem}.cs_c" "./${path}/${problem}.cs" && \
    echo "READY" && \
    mono "./${path}/${problem}.cs_c"
    ;;
  ex|elixir)
    echo "READY" && \
    elixir "./${path}/${problem}.ex"
    ;;
  hs|haskell)
    ghc "./${path}/${problem}.hs" -o "./${path}/${problem}.hs_c" >/dev/null && \
    echo "READY" && \
    "./${path}/${problem}.hs_c" && \
    rm ./${path}/${problem}.hi && \
    rm ./${path}/${problem}.o
    ;;
  go)
    echo "READY" && \
    go run "./${path}/${problem}.go"
    ;;
  java)
    cp "./${path}/${problem}.java" "./${path}/Main.java" && \
    javac "./${path}/Main.java" && \
    rm "./${path}/Main.java" && \
    echo "READY" && \
    java -cp "./${path}" Main && \
    mv "./${path}/Main.class" "./${path}/${problem}.java_c"
    ;;
  kt|kotlin)
    kotlinc "./${path}/${problem}.kt" -include-runtime -d "./${path}/${problem}.jar" && \
    echo "READY" && \
    java -jar "./${path}/${problem}.jar" && \
    mv "./${path}/${problem}.jar" "./${path}/${problem}.kt_c"
    ;;
  lua)
    echo "READY" && \
    lua "./${path}/${problem}.lua"
    ;;
  php)
    echo "READY" && \
    php "./${path}/${problem}.php"
    ;;
  pl|perl)
    echo "READY" && \
    perl "./${path}/${problem}.pl"
    ;;
  py|python)
    echo "READY" && \
    python3 "./${path}/${problem}.py"
    ;;
  r)
    echo "READY" && \
    Rscript "./${path}/${problem}.r"
    ;;
  rb|ruby)
    echo "READY" && \
    ruby "./${path}/${problem}.rb"
    ;;
  rs|rust)
    rustc "./${path}/${problem}.rs" -o "./${path}/${problem}.rs_c" && \
    echo "READY" && \
    "./${path}/${problem}.rs_c"
    ;;
  swift)
    echo "READY" && \
    swift "./${path}/${problem}.swift"
    ;;
  ts|typescript)
    cd "./${path}" || exit 1
    npm install --save-dev typescript @types/node >/dev/null 2>&1 && \
    npx tsc "${problem}.ts" && \
    echo "READY" && \
    node "${problem}.js" && \
    rm -rf node_modules package-lock.json package.json && \
    mv "${problem}.js" "${problem}.ts_c"
    ;;  
  *)
    echo "Unsupported language: $lang"
    exit 1
    ;;
esac

# Clean up (just in case something goes wrong)
rm ./${path}/${problem}.hi 2&>/dev/null
rm ./${path}/${problem}.o 2&>/dev/null
rm "./${path}/Main.java" 2&>/dev/null
rm -rf node_modules package-lock.json package.json 2&>/dev/null

mv "./${path}/Main.class" "./${path}/${problem}.java_c" 2&>/dev/null
mv "./${path}/${problem}.jar" "./${path}/${problem}.kt_c" 2&>/dev/null
mv "${problem}.js" "${problem}.ts_c" 2&>/dev/null
