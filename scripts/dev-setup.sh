#!/usr/bin/env bash

# Developer Environment Setup Script
# This script performs all the necessary steps to set up a development environment
# for the Docker Compose Prometheus monitoring stack

set -euo pipefail

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging functions
log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to create backup of existing files
backup_file() {
    local file="$1"
    if [[ -f "$file" ]]; then
        local backup="${file}.backup.$(date +%Y%m%d_%H%M%S)"
        cp -av "$file" "$backup"
        log_info "Backed up existing $file to $backup"
        return 0
    fi
    return 1
}

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to check prerequisites
check_prerequisites() {
    log_info "Checking prerequisites..."
    
    local missing_deps=()
    
    # Check for required commands
    if ! command_exists docker; then
        missing_deps+=("docker")
    fi
    
    if ! docker compose version >/dev/null 2>&1; then
        missing_deps+=("docker compose")
    fi
    
    if ! command_exists python3; then
        missing_deps+=("python3")
    fi
    
    if ! command_exists fd; then
        missing_deps+=("fd")
    fi
    
    if [[ ${#missing_deps[@]} -gt 0 ]]; then
        log_error "Missing required dependencies: ${missing_deps[*]}"
        log_error "Please install the missing dependencies and run this script again."
        exit 1
    fi
    
    log_success "All prerequisites are available"
}

# Function to setup direnv (optional)
setup_direnv() {
    log_info "Setting up direnv configuration (optional)..."
    
    # Check if .envrc.sample exists
    if [[ -f ".envrc.sample" ]]; then
        if [[ -f ".envrc" ]]; then
            log_warning ".envrc already exists"
            backup_file ".envrc"
        fi
        cp -av ".envrc.sample" ".envrc"
        log_success "Copied .envrc.sample to .envrc"
        
        if command_exists direnv; then
            direnv allow . || log_warning "Could not run 'direnv allow', you may need to run it manually"
        else
            log_warning "direnv not installed, skipping 'direnv allow'"
        fi
    else
        log_info ".envrc.sample not found, skipping direnv setup"
    fi
}

# Function to setup Python virtual environment
setup_python_venv() {
    log_info "Setting up Python virtual environment..."
    
    if [[ -d "venv" ]]; then
        log_warning "Virtual environment already exists at ./venv"
        read -p "Do you want to recreate it? (y/N): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            log_info "Removing existing virtual environment..."
            rm -rf venv
        else
            log_info "Keeping existing virtual environment"
            return 0
        fi
    fi
    
    log_info "Creating Python virtual environment..."
    python3 -m venv venv
    log_success "Created virtual environment at ./venv"
}

# Function to install Python dependencies
install_python_deps() {
    log_info "Installing Python dependencies..."
    
    if [[ ! -f "requirements.txt" ]]; then
        log_error "requirements.txt not found!"
        exit 1
    fi
    
    # Activate virtual environment
    source ./venv/bin/activate
    
    # Upgrade pip
    pip install --upgrade pip
    
    # Install requirements
    pip install -r requirements.txt
    
    log_success "Installed Python dependencies"
}

# Function to setup environment file
setup_env_file() {
    log_info "Setting up environment configuration..."
    
    if [[ ! -f "docker-compose.env.example" ]]; then
        log_error "docker-compose.env.example not found!"
        exit 1
    fi
    
    # Check for existing env file
    if [[ -f "env" ]]; then
        log_warning "Environment file 'env' already exists"
        backup_file "env"
    fi
    
    cp -av "docker-compose.env.example" "env"
    log_success "Copied docker-compose.env.example to env"
    log_warning "IMPORTANT: Edit the 'env' file and update the passwords and configuration values!"
}

# Function to setup data.yaml if needed
setup_data_yaml() {
    log_info "Checking data.yaml configuration..."
    
    if [[ ! -f "data.yaml" ]]; then
        log_error "data.yaml not found! This file is required for template rendering."
        exit 1
    fi
    
    log_info "data.yaml found - you may need to customize it for your environment"
    log_info "Key areas to review:"
    log_info "  - Feature flags (enable/disable services)"
    log_info "  - Network settings (IP addresses)"
    log_info "  - Log levels"
    log_info "  - Monitoring targets"
}

# Function to render templates
render_templates() {
    log_info "Rendering configuration templates..."
    
    # Activate virtual environment for jinja2-tools
    source ./venv/bin/activate
    
    # Run make render
    make render
    
    log_success "Templates rendered successfully"
}

# Function to verify setup
verify_setup() {
    log_info "Verifying setup..."
    
    # Check if outputs directory exists and has content
    if [[ ! -d "outputs" ]]; then
        log_error "outputs directory not found after rendering!"
        exit 1
    fi
    
    if [[ ! -f "outputs/docker-compose.yaml" ]]; then
        log_error "docker-compose.yaml not found in outputs directory!"
        exit 1
    fi
    
    # Check if we can validate the docker-compose configuration
    cd outputs
    if docker compose --env-file env config > /dev/null 2>&1; then
        log_success "Docker Compose configuration is valid"
    else
        log_warning "Docker Compose configuration validation failed - please check your setup"
    fi
    cd ..
    
    log_success "Setup verification completed"
}

# Function to display next steps
display_next_steps() {
    log_info "Setup completed! Next steps:"
    echo
    echo -e "${BLUE}1.${NC} Edit the 'env' file and update passwords and configuration"
    echo -e "${BLUE}2.${NC} Review and customize 'data.yaml' for your environment"
    echo -e "${BLUE}3.${NC} Start the stack with: ${GREEN}make up${NC}"
    echo -e "${BLUE}4.${NC} View logs with: ${GREEN}make logs${NC}"
    echo -e "${BLUE}5.${NC} Access services:"
    echo "   - Grafana: http://localhost:3000"
    echo "   - Prometheus: http://localhost:9090"
    echo "   - Alertmanager: http://localhost:9093"
    echo "   - Traefik: http://localhost:8080"
    echo
    echo -e "${YELLOW}Important:${NC} Make sure to change default passwords in the 'env' file!"
    echo
}

# Main function
main() {
    log_info "Starting developer environment setup..."
    echo
    
    # Change to script directory's parent (project root)
    cd "$(dirname "$0")/.."
    
    check_prerequisites
    setup_direnv
    setup_python_venv
    install_python_deps
    setup_env_file
    setup_data_yaml
    render_templates
    verify_setup
    
    echo
    log_success "Developer environment setup completed successfully!"
    echo
    display_next_steps
}

# Handle script interruption
trap 'log_error "Script interrupted"; exit 1' INT TERM

# Run main function
main "$@"