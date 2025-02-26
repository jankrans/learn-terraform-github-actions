echo '################################'
echo '# Install Pre-commit hooks'
echo '################################'

pre-commit install --config ./.devcontainer/.pre-commit-config.yaml

echo '################################'
echo '# Install tfupdate'
echo '################################'

mkdir -p /home/vscode/.local/bin
wget https://github.com/minamijoyo/tfupdate/releases/download/v0.6.7/tfupdate_0.6.7_linux_arm64.tar.gz -O -| tar -xvz -C /home/vscode/.local/bin
export PATH=$PATH:/home/vscode/.local/bin
echo $PATH

tfupdate -v

# echo '################################'
# echo '# Initialize .terraformrc'
# echo '################################'
