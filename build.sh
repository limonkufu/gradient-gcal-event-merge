#!/usr/bin/env bash

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get version from manifest
VERSION=$(grep '"version"' manifest.json | sed 's/.*: "\(.*\)".*/\1/')

echo -e "${GREEN}Building Gradient Merge for Google Calendar v${VERSION}${NC}"
echo ""

# Create dist directory
rm -rf dist
mkdir -p dist/chrome dist/firefox

# Files to include in the build
FILES=(
    "manifest.json"
    "events.user.js"
    "background.js"
    "popup.html"
    "popup.js"
    "icon.png"
    "icon-disabled.png"
    "icon-large.png"
    "_locales"
)

# Copy common files to both directories
for file in "${FILES[@]}"; do
    if [ -e "$file" ]; then
        cp -r "$file" dist/chrome/
        cp -r "$file" dist/firefox/
    fi
done

echo -e "${YELLOW}Modifying manifest for Chrome...${NC}"

# Chrome manifest modifications:
# 1. Change background.scripts to background.service_worker
# 2. Remove browser_specific_settings (not needed for Chrome)

if command -v jq &> /dev/null; then
    # Use jq if available
    jq '
        .background = {"service_worker": "background.js"} |
        del(.browser_specific_settings)
    ' manifest.json > dist/chrome/manifest.json
else
    # Fallback: Use sed for simple replacements
    # This is less robust but works for this specific manifest structure
    cat manifest.json | \
        sed 's/"scripts": \["background.js"\]/"service_worker": "background.js"/' | \
        sed '/"browser_specific_settings"/,/^  }/d' \
        > dist/chrome/manifest.json
fi

echo -e "${GREEN}  - Changed background.scripts to background.service_worker${NC}"
echo -e "${GREEN}  - Removed browser_specific_settings${NC}"

echo -e "${YELLOW}Firefox manifest unchanged (using original)${NC}"

# Create ZIP packages
echo ""
echo -e "${YELLOW}Creating packages...${NC}"

# Chrome package
cd dist/chrome
zip -r "../gradient-merge-chrome-v${VERSION}.zip" . -x "*.DS_Store"
cd ../..
echo -e "${GREEN}  - Created dist/gradient-merge-chrome-v${VERSION}.zip${NC}"

# Firefox package
cd dist/firefox
zip -r "../gradient-merge-firefox-v${VERSION}.zip" . -x "*.DS_Store"
cd ../..
echo -e "${GREEN}  - Created dist/gradient-merge-firefox-v${VERSION}.zip${NC}"

echo ""
echo -e "${GREEN}Build complete!${NC}"
echo ""
echo "Output files:"
echo "  - dist/gradient-merge-chrome-v${VERSION}.zip  (Chrome Web Store)"
echo "  - dist/gradient-merge-firefox-v${VERSION}.zip (Firefox Add-ons)"
echo ""
echo "To test locally:"
echo "  Chrome:  Load unpacked extension from dist/chrome/"
echo "  Firefox: Load temporary add-on from dist/firefox/manifest.json"
