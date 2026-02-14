# Robot Framework API Testing

โปรเจค API Testing ด้วย Robot Framework สำหรับทดสอบ Houses API

## Requirements

- Python 3.11+
- pip
- Node.js (สำหรับ npm scripts)

## Installation

```bash
# Install Python dependencies
pip install -r requirements.txt

# Install Node.js dependencies
npm install
```

## Running Tests

```bash
# Run all tests
npm run test

# Run specific test file
robot testCases/test_api.robot

# View test report
npm run report
```

## Project Structure

```
robot-api/
├── testCases/          # Test cases
├── resources/          # Keywords and configurations
├── requirements.txt    # Python dependencies
└── package.json        # Node.js scripts
```

## Available Scripts

- `npm run test` - รัน Robot Framework tests
- `npm run report` - เปิด test report
- `npm run format` - Format code ด้วย Prettier
- `npm run format:check` - ตรวจสอบ code formatting