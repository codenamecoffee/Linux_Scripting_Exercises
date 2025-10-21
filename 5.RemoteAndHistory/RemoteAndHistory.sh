# Check SSH installation
echo "Checking if the SSH service is installed..."
if ! command -v sshd >/dev/null 2>&1; then
    echo "SSH service is not installed. Updating repositories..."
    sudo apt update
    echo "Installing openssh-server..."
    sudo apt install -y openssh-server
else
    echo "SSH service is already installed."
fi
read -p "Press Enter to continue..."

# Check SSH service status
echo "Checking SSH service status..."
sudo systemctl status ssh
read -p "Press Enter to continue..."

# Start service if inactive
if ! sudo systemctl is-active --quiet ssh; then
    echo "SSH service is inactive. Starting it..."
    sudo systemctl start ssh
else
    echo "SSH service is already active."
fi
read -p "Press Enter to continue..."

# Generate SSH key pair if not present
if [ ! -f "$HOME/.ssh/id_rsa.pub" ]; then
    echo "Generating SSH key pair..."
    ssh-keygen
    echo "Follow the instructions on screen to generate the key."
else
    echo "An SSH public key already exists."
fi
read -p "Press Enter to continue..."

# Connect public key to localhost
echo "Connecting to yourself via SSH..."
echo "Try the following commands inside the SSH session:"
echo "whoami"
echo "hostname"
echo "echo \$SSH_CONNECTION"
echo "To exit, use 'exit' or Ctrl+D."
read -p "Press Enter to start the SSH connection..."
ssh "$USER@localhost"
echo "You have returned to your original session."
read -p "Press Enter to continue..."

# Disable SSH service (optional)
echo "Do you want to stop the SSH service temporarily (until next reboot) or disable it permanently?"
echo "1) Stop temporarily (will return on reboot if enabled at startup)"
echo "2) Disable permanently (you will need to use: \"sudo systemctl enable ssh\" to use it again)"

while true; do
    read -p "Choose an option (1/2): " opcion
    if [ "$opcion" = "1" ]; then
        sudo systemctl stop ssh
        echo "SSH service stopped temporarily."
        break
    elif [ "$opcion" = "2" ]; then
        sudo systemctl disable ssh
        echo "SSH service disabled permanently. (Recommended for higher security)"
        break
    else
        echo "Invalid option. Please choose 1 or 2."
    fi
done
read -p "Press Enter to continue..."

# Show previous commands
echo "With the command: history"
echo "the previously executed commands will be shown below"
history
echo "You can search for specific commands, for example:"
echo "history | grep ssh"
echo "This will show the number of occurrences of the specified command, in this case, \"ssh\""
history | grep ssh
read -p "Press Enter to continue..."

# echo "Recursive command search with Ctrl+R:"
echo "Press Ctrl+R in your terminal and start typing part of a previous command to search for it quickly."
echo "Example: Press Ctrl+R and type 'ssh' to search for related commands."
echo "Note: It is not possible to detect from the script if you used Ctrl+R, but you can try it now."
read -p "Press Enter to finish the script..."