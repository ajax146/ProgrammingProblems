#!/usr/bin/env bash
# Usage: bash execute.sh {language} {problem}
# Example: bash execute.sh rs 4A

lang="$1"
problem="$2"

# --- Define cleanup routine ---
cleanup() {
  echo "Cleaning up..."
  # Delete temporary build stuff
  rm -f "./${path}/${problem}.hi" 2>/dev/null
  rm -f "./${path}/${problem}.o" 2>/dev/null
  rm -f "./${path}/Main.java" 2>/dev/null
  rm -rf "./${path}/node_modules" "./${path}/package-lock.json" "./${path}/package.json" 2>/dev/null

  # Fix some compiled files to the lang_c standard
  mv "./${path}/Main.class" "./${path}/${problem}.java_c" 2>/dev/null
  mv "./${path}/${problem}.jar" "./${path}/${problem}.kt_c" 2>/dev/null
  mv "./${path}/${problem}.js" "./${path}/${problem}.ts_c" 2>/dev/null
}
trap cleanup EXIT SIGINT SIGTERM ERR

# --- Function to compute full cache line ---
compute_cache_line() {
    local src="$1"
    local bin="$2"
    local ext="$3"

    local hash_s
    hash_s=$(sha512sum "$src")

    # Compute compiled file hash or mark as MISSING
    local hash_c
    hash_c=$( [[ -f "$bin" ]] && sha512sum "$bin" || echo "MISSING" )

    # Full cache line
    echo "$problem.$ext $hash_s $hash_c"
}

build() {
    ext="$1"
    src="./${path}/${problem}.${ext}"
    bin="./${path}/${problem}.${ext}_c"
    cache="./cache"

    new_cache_line=$(compute_cache_line "$src" "$bin" "$ext") || return 1

    if grep -Fxq "$new_cache_line" "$cache" 2>/dev/null; then
        echo "Skipping build for ${problem}.${ext}"
        case "$ext" in
          "java")
            mv $bin "./${path}/Main.class"
          ;;
          "kt")
            mv $bin "./${path}/${problem}.jar"
          ;;
          "ts")
            mv $bin "./${path}/${problem}.js" 
          ;;
        esac
        return 0
    fi
    
    echo "Rebuilding ${problem}.${ext}"

    case "$ext" in
        "cpp")
          g++ -std=c++23 $src -o $bin
        ;;
        "cs")
          mcs -out:$bin $src
        ;;
        "hs")
          ghc $src -o $bin >/dev/null
        ;;
        "java")
          cp $src "./${path}/Main.java"
          javac "./${path}/Main.java"
        ;;
        "kt")
          kotlinc $src -include-runtime -d "./${path}/${problem}.jar"
        ;;
        "rs")
          rustc $src -o $bin
        ;;
        "ts")
          cd "./${path}" || exit 1 && \
          npm install --save-dev typescript @types/node >/dev/null 2>&1 && \
          npx tsc "${problem}.ts" && \
          cd "-" >/dev/null
        ;;
    esac

    # Remove old cache entries
    grep -vF "$problem.${ext}" "$cache" 2>/dev/null > "${cache}.tmp" || true
    mv "${cache}.tmp" "$cache"

    # Add the current source + bin cache line to the cache file
    new_cache_line=$(compute_cache_line "$src" "$bin" "$ext") || return 1
    echo "$new_cache_line" >> "$cache"
}


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
    build "cpp" && \
    echo "READY" && \
    "./${path}/${problem}.cpp_c"
    ;;
  cs)
    build "cs" && \
    echo "READY" && \
    mono "./${path}/${problem}.cs_c"
    ;;
  ex|elixir)
    echo "READY" && \
    elixir "./${path}/${problem}.ex"
    ;;
  hs|haskell)
    build "hs" && \
    echo "READY" && \
    "./${path}/${problem}.hs_c"
    ;;
  go)
    echo "READY" && \
    go run "./${path}/${problem}.go"
    ;;
  java)
    build "java" && \
    echo "READY" && \
    java -cp "./${path}" Main
    ;;
  kt|kotlin)
    build "kt" && \
    echo "READY" && \
    java -jar "./${path}/${problem}.jar"
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
    build "rs" && \
    echo "READY" && \
    "./${path}/${problem}.rs_c"
    ;;
  swift)
    echo "READY" && \
    swift "./${path}/${problem}.swift"
    ;;
  ts|typescript)
    build "ts" && \
    echo "READY" && \
    node "./${path}/${problem}.js"
    ;;  
  *)
    echo "Unsupported language: $lang"
    exit 1
    ;;
esac
