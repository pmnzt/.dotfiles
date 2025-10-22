#!/bin/bash
# This script can be used to automatically create a bunch of web apps (omarchy-webapp-install) at once.

# Define your apps: name | url | icon
# check out https://dashboardicons.com/ for app icons
apps=(
  "Monkeytype|https://monkeytype.com/|https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/monkeytype.png"
  "Supabase|https://supabase.com/dashboard/|https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/supabase.png"
  "Neon|https://console.neon.tech/app|https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/postgres.png"
  "Gmail|http://gmail.com/|https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/gmail.png"
  "Reddit|https://www.reddit.com/|https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/reddit.png"
)

# Loop through and call your create script
for entry in "${apps[@]}"; do
  IFS='|' read -r name url icon <<< "$entry"
  echo "Creating web app: $name"
  bash omarchy-webapp-install "$name" "$url" "$icon"
done

echo "✅ All web apps created successfully."

