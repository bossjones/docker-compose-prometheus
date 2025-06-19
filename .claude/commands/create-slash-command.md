I'll help you create a new standardized slash command for your project. The command will be saved as `.claude/commands/$ARGUMENTS.md`.

Let me gather the information step by step:

## 1. Basic Project Information
- **Project name**: What is the name of this project?
- **Project description**: Brief overview of what this project does
- **Technology stack**: Main technologies used (frameworks, languages, databases)
- **Project type**: (web app, library, CLI tool, microservice, etc.)
- **Development environment**: Primary environment (Node.js, Python, Go, etc.)

## 2. Installation & Setup
- **Installation command**: How to install dependencies (e.g., `npm install`, `uv sync --dev`)
- **Verification commands**: Commands to verify installation worked
- **Additional setup**: Any other setup requirements (database, env files, etc.)

## 3. Dependency Management
- **Add dependency**: Command to add runtime dependencies
- **Add dev dependency**: Command to add development dependencies  
- **Update dependencies**: Command to update existing dependencies

## 4. Code Quality & Linting
- **Lint command**: Command to run linter
- **Auto-fix command**: Command to auto-fix linting issues
- **Linting config**: Configuration files for linting
- **Linting tools**: Tools used (ESLint, Ruff, Prettier, etc.)

## 5. Testing
- **Run all tests**: Command for full test suite
- **Run specific test**: Command for single test file
- **Watch mode**: Test watch mode command (if available)
- **Coverage**: Test coverage command
- **Testing framework**: Framework used for testing

## 6. Development Workflow
- **Dev server**: Command to start development server
- **Build**: Command to build for production
- **Other commands**: Other important commands (migrations, assets, etc.)

## 7. Environment Configuration
- **Environment variables**: Required env vars
- **Config files**: Configuration files (.env.example, config.json, etc.)
- **Setup steps**: How to set up environment

## 8. Troubleshooting
- **Common issues**: 2-3 frequent problems and their solutions

## 9. Agent Guidelines
- **Code style**: Specific coding style preferences for AI
- **Architecture patterns**: Patterns AI should be aware of
- **Guidelines**: Specific guidelines for AI when working on this project

## 10. Resources
- **Documentation**: Main documentation URLs
- **Important files**: Key files AI should understand
- **Other resources**: Additional useful references

After collecting all this information, I'll create the complete slash command file using our standardized template with XML tags and save it to `.claude/commands/$ARGUMENTS.md`.

Please start by telling me the command name you want to create and the basic project information.