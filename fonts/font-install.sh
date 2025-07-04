#!/bin/sh

# Function to install a font from URL
install_font() {
    local font_name=$1
    local download_url=$2
    local file_pattern=$3

    echo "Installing $font_name..."

    # Create temporary directory
    TEMP_DIR=$(mktemp -d)
    cd "$TEMP_DIR"

    # Download font
    echo "  Downloading from $download_url..."
    if ! curl -L "$download_url" -o font.zip; then
        echo "  ERROR: Failed to download $font_name"
        cd ~
        rm -rf "$TEMP_DIR"
        return 1
    fi

    # Extract zip file
    echo "  Extracting font files..."
    if ! unzip -q font.zip; then
        echo "  ERROR: Failed to extract $font_name"
        cd ~
        rm -rf "$TEMP_DIR"
        return 1
    fi

    # Install fonts to user font directory
    echo "  Installing to ~/Library/Fonts/..."
    mkdir -p ~/Library/Fonts

    # Use eval to expand the file pattern
    eval "cp $file_pattern ~/Library/Fonts/" 2>/dev/null
    if [ $? -ne 0 ]; then
        echo "  WARNING: No font files found matching pattern: $file_pattern"
    else
        echo "  $font_name installation complete!"
    fi

    # Clean up
    cd ~
    rm -rf "$TEMP_DIR"
}

# Main installation process
echo "Starting font installation..."

# Get the directory where this script is located
SCRIPT_DIR=$(cd $(dirname $0); pwd)
FONTS_JSON="$SCRIPT_DIR/fonts.json"

# Check if fonts.json exists
if [ ! -f "$FONTS_JSON" ]; then
    echo "ERROR: fonts.json not found at $FONTS_JSON"
    exit 1
fi

# Check if jq is installed
if ! command -v jq >/dev/null 2>&1; then
    echo "ERROR: jq is required but not installed. Please run: brew install jq"
    exit 1
fi

# Get the number of fonts
font_count=$(jq -r '.fonts | length' "$FONTS_JSON")

# Install each font
for i in $(seq 0 $((font_count - 1))); do
    name=$(jq -r ".fonts[$i].name" "$FONTS_JSON")
    url=$(jq -r ".fonts[$i].url" "$FONTS_JSON")
    file_pattern=$(jq -r ".fonts[$i].file_pattern" "$FONTS_JSON")

    # Install the font (continue on error)
    install_font "$name" "$url" "$file_pattern" || true
    echo ""
done

echo "Font installation process complete!"
