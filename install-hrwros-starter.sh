#!/bin/bash
# Create variables for icons and applications directories.
ICONS_DIR=${HOME}/.local/share/icons
APPS_DIR=${HOME}/.local/share/applications

mkdir -p ${ICONS_DIR}
mkdir -p ${APPS_DIR}

echo "Installing the course command shell shortcut..."
# Download the course icon to icons folder.
wget -q "https://raw.githubusercontent.com/rosin-project/mooc_hrwros_unity_launcher/version_09/hrwros-mooc-icon.jpg" -O  ${ICONS_DIR}/hrwros-mooc-icon.jpg
wget -q "https://raw.githubusercontent.com/rosin-project/mooc_hrwros_unity_launcher/version_09/hrwros-mooc-icon-nv.jpg" -O  ${ICONS_DIR}/hrwros-mooc-icon.jpg
wget -q "https://raw.githubusercontent.com/rosin-project/mooc_hrwros_unity_launcher/version_09/start-hrwros.desktop" -O  ${APPS_DIR}/start-hrwros.desktop
wget -q "https://raw.githubusercontent.com/rosin-project/mooc_hrwros_unity_launcher/version_09/start-hrwros-nvidia.desktop" -O  ${APPS_DIR}/start-hrwros-nvidia.desktop

# For 18.04
chmod +x ${APPS_DIR}/start-hrwros.desktop ${APPS_DIR}/start-hrwros-nvidia.desktop

# ugly, but will have to do for now
sed -i "s|Icon=hrwros-mooc-icon.jpg|Icon=${HOME}/.local/share/icons/hrwros-mooc-icon.jpg|g" ${APPS_DIR}/start-hrwros.desktop 

# ugly, but will have to do for now
sed -i "s|Icon=hrwros-mooc-icon-nv.jpg|Icon=${HOME}/.local/share/icons/hrwros-mooc-icon-nv.jpg|g" ${APPS_DIR}/start-hrwros-nvidia.desktop


echo "Course command shell shortcut installed successfully"
echo "To get started:"
echo "1. Click on the 'Show Applications' button, 3x3 grid of dots in the bottom left corner of the screen, or press the 'Super' key "
echo "2. Type HRWROS"
echo "3. Click on the Shortcut 'HRWROS' or 'HRWROS (NVIDIA)' depending on your computer configuration"
