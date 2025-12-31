🚀 DevOps Portfolio – CI/CD with Docker, GitHub Actions & AWS EC2
This project demonstrates a real-world DevOps CI/CD workflow where a static portfolio application is containerized with Docker, built and pushed to Docker Hub, and automatically deployed to an AWS EC2 server using GitHub Actions + SSH.

🧩 Project Architecture

GitHub Repo
   ↓ (push)
GitHub Actions (CI/CD)
   ↓
Docker Build & Push (Docker Hub)
   ↓
SSH to EC2 Server
   ↓
Docker Pull & Run (Nginx Container)

📁 Project Structure

my-portfolio/
│
├── public/                 
│   └── index.html
│
├── Dockerfile               
├── .github/
│   └── workflows/
│       └── main.yml       
│
└── README.md

⚙️ Step-by-Step Implementation

1️⃣ Create an EC2 Instance (AWS)
2️⃣ Install Docker on EC2
3️⃣ Generate SSH Key (Local Machine)
4️⃣ Add Public Key to EC2 Server
5️⃣ Add GitHub Secrets
6️⃣ Dockerfile (with Health Check)
7️⃣ GitHub Actions Workflow
8️⃣ Push Code to GitHub
9️⃣ Verify Deployment

🔐 SSH Key Purpose (Simple Explanation)

Private Key (GitHub Secret)
→ Used by GitHub Actions to prove identity

Public Key (EC2 authorized_keys)
→ Server checks if private key is valid

✔ Enables password-less, secure, automated deployment

