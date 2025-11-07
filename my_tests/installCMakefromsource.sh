# 1. Удалите текущую версию CMake (необязательно, но чисто)
sudo apt remove cmake

# 2. Установите зависимости для добавления нового репозитория
sudo apt update
sudo apt install -y wget gpg

# 3. Добавьте GPG-ключ Kitware
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null

# 4. Добавьте репозиторий Kitware для Ubuntu 22.04 (jammy)
echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' | sudo tee /etc/apt/sources.list.d/kitware.list

# 5. Обновите список пакетов и установите CMake
sudo apt update
sudo apt install cmake

cmake --version # cmake version 4.1.2