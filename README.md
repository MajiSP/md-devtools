# MD-DevTools

MD Dev Tools is a comprehensive utility script designed to enhance the development experience for FiveM server administrators and developers. This tool provides a sleek, user-friendly interface accessible in-game, allowing for quick access to various server and client-side functions.

## Features

- Intuitive UI with dark and light mode
- Categorized actions for easy navigation
- Search functionality for quick access to specific tools
- Customizable categories and actions
- Responsive design that works seamlessly in-game

## Installation

1. Clone this repository into your FiveM server's resources folder
2. Add `ensure md-devtools` to your server.cfg file
3. Restart your FiveM server

## Usage

- Press F5 in-game to open the Dev Tools interface
- Use the search bar to find specific actions quickly
- Click on category headers to expand/collapse them
- Click on action buttons to trigger the corresponding function
- Toggle between dark and light mode using the button at the bottom of the interface

## Customization

You can customize the categories and actions by modifying the `Config.categories` table in the `config.lua` file. Each category can contain multiple buttons with associated actions.

## Development

This script uses Vue.js for the frontend and Lua for the backend. The main components are:

- `web/src/components/Main.vue`: Main UI component
- `client/main.lua`: Client-side Lua script
- `server/main.lua`: Server-side Lua script
- `config.lua`: Configuration file for categories and actions

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.