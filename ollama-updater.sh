#!/bin/bash
# SPDX-License-Identifier: MIT

echo "Updating Ollama..."
curl -fsSL https://ollama.com/install.sh | sh

echo "Updating models..."
ollama list | awk 'NR>1{print $1}' | xargs -I {} sh -c 'echo "Updating model: {}"; ollama pull {}'

echo "Done."