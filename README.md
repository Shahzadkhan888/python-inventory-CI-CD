# Inventory-Devops-Pipeline

A containerized Python tool that processes supply chain data from Excel, showcasing a complete DevOps CI/CD protocol.

## 🚀 The Pipeline Protocol
This project demonstrates the full lifecycle of a microservice:
1. **Source:** Code managed in GitHub.
2. **CI (Continuous Integration):** Jenkins automatically triggers on every push.
3. **Containerization:** Docker builds a consistent environment.
4. **Analysis:** Python (OpenPyXL) processes `inventory.xlsx`.

## 🛠️ Tech Stack
* **Language:** Python 3.11
* **Automation:** Jenkins & Groovy
* **Containerization:** Docker
* **Data:** Microsoft Excel (OpenPyXL)

## 📦 How to Run Locally
Ensure you have Docker installed, then run:

```bash
# Build the image
docker build -t inventory-app .

# Run the container
docker run --rm inventory-app

📊 Sample Output
The script analyzes suppliers and stock levels:

Identifies unique suppliers.

Calculates total inventory value per supplier.

Flags items with low stock (threshold < 10).
