# Local User Management

# Overview

This Bash script simplifies the process of creating local users on Ubuntu systems with enhanced security features.

## Requirements

- **Root User**: Ensure you are executing the script with root privileges.

## Usage

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/local-user-management.git
   ```

2. Navigate to the project directory:

   ```bash
   cd local-user-management
   ```

3. Execute the script with the following arguments:

   ```bash
   sudo ./create_user.sh username [Comments]
   ```

   Replace `username` with the desired username and `"Comments"` with comments for the user.

4. Successful User Creation:

   If the user is successfully created, you will see a confirmation message on the screen.

5. First Login:

   The user will be required to change their password upon their first login.

## Security Note

Always exercise caution when creating and managing users with root privileges. Be sure to follow best practices for securing user accounts.
