# Elixir Playground

Welcome to **Elixir Playground**, my personal sandbox for exploring **Functional Programming (FP)** concepts and testing the waters of the Erlang VM (BEAM). This repository tracks my learning journey, practice code, and notes as a BSCS student venturing outside the standard academic OOP curriculum.

> *"Learn by doing. Keep experimenting. Make mistakes, understand them, and keep building. One concept at a time."*

---

## Goals
* **Master Fundamentals:** Learn Elixir fundamentals completely from scratch.
* **Functional Mindset:** Deeply understand functional programming core paradigms (immutability, pure functions, recursion).
* **Clean Code:** Practice writing idiomatic, highly readable Elixir code.
* **Explore the BEAM:** Pull back the curtain on the Erlang VM and its concurrent actor model ecosystem.
* **Build Pilots:** Construct small-scale, real-world projects as my skills improve.

---

## Repository Structure
```text
elixir-playground/
├── basics/             # Core foundations, data types, and syntax rules
├── projects/           # Practical application tests and localized pilot systems
└── README.md

```

---

## Tools & Technologies

* **Elixir** — The concurrent, functional programming language.
* **Erlang/OTP** — The underlying runtime and robust concurrency ecosystem.
* **BEAM** — The legendary, fault-tolerant virtual machine.
* **VS Code** — My chosen code editor + the **ElixirLS** extension.
* **Git & GitHub** — Version control and tracking my project evolution.

---

## Environment Setup & Provisioning (At time of creation)

* **OS Platform:** Fedora Linux 43
* **Runtime Version Manager:** Mise
* **Language Environment:** Elixir 1.20.4 running on Erlang/OTP 29

Because this setup was deployed on Fedora Linux, the Erlang/OTP engine was built and optimized from source using `mise` paired with `kerl`.

**NOTE** For the official references, see the [Elixir installation guide](https://elixir-lang.org/install/) and [Mise getting-started guide](https://mise.jdx.dev/).

### 1. Install System Dependencies (Fedora DNF)

```bash
sudo dnf install -y ncurses-devel make gcc openssl-devel

```

### 2. Install and Activate Mise

```bash
# Download and install the version manager
curl [https://mise.run](https://mise.run) | sh

# Add mise activation hooks to the local bash profile
echo 'eval "$(mise activate bash)"' >> ~/.bashrc
source ~/.bashrc

```

### 3. Compile Erlang and Install Elixir

```bash
# Compiles Erlang/OTP directly from source files for optimized performance
mise use --global erlang@latest

# Installs the matching binary version of Elixir
mise use --global elixir@latest

```

---

## Getting Started

### Clone the Repository

```bash
git clone 
cd elixir-playground

```

### Check System Environment

```bash
elixir --version

```

---

### Philosophy 
> *"Talk is cheap, Show me the code"*

Learn by building. Experiment, break things, understand why, and keep going.

This is a living repository of my progress, experiments, and discoveries as I explore the Elixir ecosystem.

*Built with curiosity, focus, and Elixir.*
