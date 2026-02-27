#!/bin/bash
# Create the config directory if it doesn't exist
mkdir -p ~/.config/musikcube

# Inject the workspace directory into the settings file
# This assumes you want to index the entire repository
cat <<EOF > ~/.config/musikcube/settings.json
{
    "indexedPaths": [
        "/workspaces/${GITHUB_REPOSITORY#*/}"
    ]
}
EOF

# Trigger an initial background scan (optional)
# musikcubed --scan
