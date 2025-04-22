# QuickLicense
🚗 Quick License is a 🚀 QR-based smart license system designed to digitize and securely verify driving licenses using 🔐 digital signatures. 📲 It features real-time QR scanning 🔍, and role-based access 👮‍♂️👤 for users and traffic officers.

## Features

- QR-based license system for quick validation.
- Violation records and fine payment system.
- License renewal alerts.
- Role-based authentication for different types of users (traffic officers, vehicle owners, etc.).
- Mobile app integration for easy access and management.

## Installation

### Prerequisites

- Python 3.x
- MySQL
- Django
- Other dependencies listed in `requirements.txt`

### Setup

1. Clone the repository:
    ```bash
   [ git clone https://github.com/ashish769/QuickLicense.git]
    cd QuickLicense
    ```

2. Create a virtual environment:
    ```bash
    python -m venv venv
    ```

3. Activate the virtual environment:
    - For Windows:
      ```bash
      venv\Scripts\activate
      ```
    - For Mac/Linux:
      ```bash
      source venv/bin/activate
      ```

4. Install dependencies:
    ```bash
    pip install -r requirements.txt
    ```

5. Setup MySQL database 
6. Run migrations:
    ```bash
    python manage.py migrate
    ```

7. Run the development server:
    ```bash
    python manage.py runserver
    ```

8. Open your browser and go to `http://127.0.0.1:5000/` to see the app in action.

## Usage

- **For Vehicle Owners**: Use the mobile app to access your license, view violations, and pay fines.
- **For Traffic Officers**: Issue tickets, verify licenses using QR codes, and access violation records.

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Acknowledgments

- Python
- Django
- MySQL
- QR Code generation libraries
 

## outputs

![Screenshot 2025-04-22 192526](https://github.com/user-attachments/assets/b52a0811-494d-4af5-80f9-e91481b92fe1)

 ![Screenshot 2025-04-22 192647](https://github.com/user-attachments/assets/1da4103e-16b0-4ea8-9151-01214d340edc)

![Screenshot 2025-04-22 192740](https://github.com/user-attachments/assets/11189c9a-a774-4b0e-b8fe-670fe0ce6f1d)
![Screenshot 2025-04-22 192758](https://github.com/user-attachments/assets/7591f009-4205-4e77-879d-0508d94861b2)
![Screenshot 2025-04-22 192944](https://github.com/user-attachments/assets/54c23829-2cdf-4faa-b69f-c1ed0788671b)
![Screenshot 2025-04-22 193224](https://github.com/user-attachments/assets/5cd1192d-c457-4bbc-ae9a-02979cd365ac)
![Screenshot 2025-04-22 193252](https://github.com/user-attachments/assets/f10cc440-0e31-4b65-9518-02d55f03d02f)
![Screenshot 2025-04-22 193322](https://github.com/user-attachments/assets/a3e3b9b4-9b96-46f9-aa40-47c23b08db12)
