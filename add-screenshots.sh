#!/bin/bash
# Helper script to add screenshots to the portfolio repo

SCREENSHOTS_DIR="$HOME/Desktop/homebuilderblinds-portfolio/screenshots"

echo "📸 Adding screenshots to portfolio repository..."
echo ""

# Check if screenshots directory exists
if [ ! -d "$SCREENSHOTS_DIR" ]; then
    mkdir -p "$SCREENSHOTS_DIR"
fi

# List of required screenshots
declare -A screenshots=(
    ["homepage.png"]="Customer-facing homepage"
    ["operations-dashboard.png"]="Operations dashboard"
    ["measurement-scheduling.png"]="Measurement scheduling calendar"
    ["accounting-dashboard.png"]="Accounting/financial dashboard"
    ["github-activity.png"]="GitHub profile showing commit history"
)

echo "Required screenshots:"
for file in "${!screenshots[@]}"; do
    if [ -f "$SCREENSHOTS_DIR/$file" ]; then
        echo "  ✅ $file - ${screenshots[$file]}"
    else
        echo "  ❌ $file - ${screenshots[$file]} (MISSING)"
    fi
done

echo ""
echo "To add screenshots:"
echo "1. Save your screenshots with the exact filenames listed above"
echo "2. Place them in: $SCREENSHOTS_DIR"
echo "3. Run this script again to verify, or run:"
echo "   cd ~/Desktop/homebuilderblinds-portfolio"
echo "   git add screenshots/*.png"
echo "   git commit -m 'Add application screenshots'"
echo "   git push"

