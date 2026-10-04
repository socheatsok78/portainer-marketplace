#!/usr/bin/env bash

set -e

# Generate the README.md file for the Portainer Marketplace templates.

cp README.tmpl.md README.md

# - Loop through each template directory and get the title and description from the template.json file.
# - Generate the README.md content dynamically based on the templates.
# Example
# | Name | Description |
# | ---- | ----------- |
# | {title} | {description} |

# Generate the README.md content
{
    echo ""
    echo "### Portainer Marketplace Templates"
    echo ""
    echo "| Name | Description |"
    echo "| ---- | ----------- |"
    for template_dir in templates/*; do
        if [ -d "$template_dir" ]; then
            title=$(jq -r '.title' "$template_dir/template.json")
            description=$(jq -r '.description' "$template_dir/template.json")
            echo "| $title | $description |"
        fi
    done
    echo ""
} >> README.md
